/**
 * Author: Donald Martinez
 * Website: http://www.badongers.com
 */
package wcmc.classes
{
	import mx.controls.DataGrid;
	import mx.events.FlexEvent;
	import mx.collections.ArrayCollection;
	import flash.events.Event;
	import mx.events.ScrollEvent;
	import flash.events.MouseEvent;
	import mx.events.DataGridEvent;
	import mx.controls.dataGridClasses.DataGridColumn;
	import flash.utils.setInterval;
	import flash.utils.clearInterval;
	import mx.utils.ObjectUtil;
	import mx.core.IFactory;
	import mx.core.FlexSprite;
	import flash.display.Sprite;
	import mx.core.IFlexDisplayObject;
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import mx.controls.listClasses.IListItemRenderer;
	import mx.events.IndexChangedEvent;
	/**
	 * Extended DataGrid control that allows front loading of data making it 
	 * possible to do implicit data scrolling without using Flex Data Services.
	 * <p>
	 * The extension's main purpose is to handle the indexing of missing data by using 
	 * a wrapped and manipulated dataProvider object.
	 * </p>
	 * This class keeps track of empty row elements details such as the row index, content
	 * and dataType.
	 * <p>
	 * It also doesn't get in the way of the original functionality  of the Flex DataGrid.
	 * </p>
	 */
	public class GridExtended extends DataGrid
	{
		/**
		 * A copy of the sortArrow object being used by the DataGrid header
		 * for displaying the asc/desc arrow when sorting
		 */
		 
		private var sortArrow:IFlexDisplayObject;
		private var sortIndex:Number = -1;
		private var lastSortIndex:Number = -1;
		private var viewCount:Number;
		private var currentScrollPos:Number;
		protected var collectionMirror:ValueListHandler;
		private var cTotal:Number = 0;
		private var appendResolved:Boolean = true;
		private var lastScrollPosition:Number = 0;
		private var accurateScrollPosition:Number = 0;
		private var data_complete:Boolean = false;
		private var lastValidRendererIndex:Number;
		private var currentSort:String = "ASC";
		private var scrollInter:Number;
		private var currentField:String = "";
		private var fromSort:Boolean = false;
		private var _delay:Number = 300;
		function GridExtended():void{
			super();
			initializeComponent();			
		}
		/** Initialize events to listen to and create the 
		 * dataProvider wrapper object.
		 */
		private function initializeComponent():void{
			addEventListener(ScrollEvent.SCROLL, scrollListener);
			addEventListener(DataGridEvent.HEADER_RELEASE, gridHeaderReleased);
			addEventListener(IndexChangedEvent.HEADER_SHIFT, gridColumnShift);
			collectionMirror = new ValueListHandler();
		}
		/**
		 * Checks the collectionMirror object if the rows being displayed contains empty or null values.
		 * If the rows are empty it will dispatch and "out_of_range" event to its listener crying for help to 
		 * populate its empty rows.
		 * <p>
		 * Event details (GridExtendedEvent) contains the following data:
		 * <ul>
		 * <li>start - the current top row being displayed by the DataGrid.</li>
		 * <li>sortType - if "ASC" or "DESC"</li>
		 * <li>field - the dataField being sorted</li>
		 * </ul>
		 * </p>
		 */
		private function handleScrollRange(range:Number, down:Boolean):void{
			clearInterval(scrollInter);
			var realIndex:Number;
			try{
				realIndex = collectionMirror.rangeIsValid(range, rowCount)
				if(realIndex != -1){
					if(appendResolved){
						appendResolved = false;
						lastScrollPosition = realIndex;
						dispatchEvent(new GridExtendedEvent(GridExtendedEvent.OUT_OF_RANGE, {start:realIndex, sortType:currentSort, field:currentField}));
					}
				}
			}catch(e:Error){
				//now what?
			}

		}
		/** 
		 * GridHeader release/click listener. If the DataGrid is set for implicit scrolling
		 * (determined by the value of cTotal), it will handle the event and dispatches a new event that notifies
		 * the listeners that it needs to be sorted.
		 * <p>
		 * Event details (GridExtendedEvent) contains the following data:
		 * <ul>
		 * <li>start - the current top row being displayed by the DataGrid.</li>
		 * <li>sortType - if "ASC" or "DESC"</li>
		 * <li>field - the dataField being sorted</li>
		 * </ul>
		 * </p>
		 */
		private function gridHeaderReleased(evt:DataGridEvent):void{
			if(cTotal != 0){
				evt.preventDefault();
				fromSort = true;
				currentSort = (currentSort == "ASC") ? "DESC" : "ASC";
				currentField = evt.dataField;		
				var actColumn:DataGridColumn = columns[evt.columnIndex];				
				lastSortIndex = sortIndex;
				sortIndex = evt.columnIndex;
//				cheatSortArrow(actColumn, sortIndex); //this isnt working at the moment!!!!!!!!!
				dispatchEvent(new GridExtendedEvent(GridExtendedEvent.SORT, {start:accurateScrollPosition, sortType:currentSort, field:currentField}));
				if(appendResolved){
					appendResolved = false;
				}
			}
		}
		/**
		 * Repositions that damn sortArrow display when moving columns around.
		 */
		private function gridColumnShift(evt:IndexChangedEvent):void
		{
			sortIndex = evt.newIndex;
			lastSortIndex = evt.oldIndex;
			cheatSortArrow(evt.target as DataGridColumn, sortIndex);
		}
		/**
		 * The function that handles the delay when calling the handleScrollRange which checks 
		 * if there are empty rows currently displayed.
		 * It also tracks the current scroll position of the scrollbar.
		 * 
		 */
		private function scrollListener(evt:ScrollEvent):void{
			if(cTotal){
				if(collectionMirror.length < cTotal){
					clearInterval(scrollInter);
					scrollInter = setInterval(handleScrollRange, _delay, evt.position, evt.delta > 0);
				}
			}
			accurateScrollPosition = evt.position;
		}
		/**
		* Sets the targetted total number of records to be displayed by the DataGrid. This number is 
		* used by the collectionMirror object to determine the total number of record to frontload and fill up
		* with null values to cheat the DataGrid that he needs to scroll the specified number of data.
		* 
		*
		*/
		public function set collectionLength(n:Number):void{
			cTotal = n;
		}
		public function get collectionLength():Number{
			return cTotal;
		}
		/**
		 * Appends data to the collectionMirror object based on the last row index 
		 * detected to have null value.
		 * If the DataGrid previously dispatched a "sort" event, it will pass thru a different function
		 * which calls the collectionMirror method for appending data after a sort procedure.
		 */
		public function appendData(value:Object):void{
			appendResolved = true;
			if(fromSort){
				fromSort = false;
				appendSortedData(value);
			}else{
				collectionMirror.updateCollectionElements(value, lastScrollPosition);
				/**
				 * Check again if there are empty rows left.
				 */
				clearInterval(scrollInter);
				scrollInter = setInterval(handleScrollRange, _delay, accurateScrollPosition, false);
				
			}
		}
		/**
		 * Appends the data to the collectionMirror object after a sort process.
		 */
		private function appendSortedData(value:Object):void{
			collectionMirror.setSortedReference(value, cTotal, accurateScrollPosition);
			appendResolved = true;
		}
		/**
		 * Overrides the setting of the dataProvider being used and copied into the 
		 * collectionMirror object.
		 */
		override public function set dataProvider(value:Object):void{
			super.dataProvider = collectionMirror.setReference(value, cTotal);
		}
		/**
		 * Utility property that checks if the grid has been sorted.
		 */
		public function get sorted():Boolean{
			return !(currentSort == "ASC");
		}
		/** 
		 * Overrides that damn arrow display being used when sorting 
		 * a column in the DataGrid.
		 */
		private function cheatSortArrow(activeColumn:DataGridColumn, activeIndex:Number):void{
			var sortArrowHitArea:Sprite = Sprite(listContent.getChildByName("sortArrowHitArea"));
	        if (!sortArrow)
	        {
	            var sortArrowClass:Class = getStyle("sortArrowSkin");
	            sortArrow = new sortArrowClass();
	            DisplayObject(sortArrow).name = "sortArrow";
	            listContent.addChild(DisplayObject(sortArrow));
	        }
	        var xx:Number;
	        var n:int;
	        var i:int;
	        if (listItems && listItems.length && listItems[0]){
	            n = listItems[0].length;
	            for (i = 0; i < n; i++){
	                if (i == sortIndex){
	                    xx = listItems[0][i].x + columns[i].width;
	                    listItems[0][i].setActualSize(columns[i].width - sortArrow.measuredWidth - 8, listItems[0][i].height);
	                    if (!isNaN(listItems[0][i].explicitWidth)){
	                        listItems[0][i].explicitWidth = listItems[0][i].width;
	                    }
	                    // Create hit area to capture mouse clicks behind arrow.
	                    if (!sortArrowHitArea){
	                        sortArrowHitArea = new FlexSprite();
	                        sortArrowHitArea.name = "sortArrowHitArea";
	                        listContent.addChild(sortArrowHitArea);
	                    }else{
	                        sortArrowHitArea.visible = true;
	                    }
	                    sortArrowHitArea.x = listItems[0][i].x + listItems[0][i].width;
	                    sortArrowHitArea.y = listItems[0][i].y;
	                    var g:Graphics = sortArrowHitArea.graphics;
	                    g.clear();
	                    g.beginFill(0, 0);
	                    g.drawRect(0, 0, sortArrow.measuredWidth + 8,
	                            listItems[0][i].height);
	                    g.endFill();
	                    break;
	                }
	            }
	        }
	        if (isNaN(xx)){
	            sortArrow.visible = false;
	            return;
	        }
	        sortArrow.visible = true;
	        if (lastSortIndex >= 0 && lastSortIndex != sortIndex){
	            if (activeIndex <= lastSortIndex && lastSortIndex <= columns.length - 1){
	                n = listItems[0].length;
	                for (var j:int = 0; j < n ; j++){
	                    if (j == lastSortIndex){
	                        listItems[0][j].setActualSize(columns[j].width, listItems[0][j].height);
	                        break;
	                    }
	                }
	            }
	        }
	        var d:Boolean = (currentSort == "ASC");
	        sortArrow.width = sortArrow.measuredWidth;
	        sortArrow.height = sortArrow.measuredHeight;
	        DisplayObject(sortArrow).scaleY = (d) ? -1.0 : 1.0;
	        sortArrow.x = xx - sortArrow.measuredWidth - 8;
	        var hh:Number = rowInfo.length ? rowInfo[0].height : headerHeight
	        sortArrow.y = (hh - sortArrow.measuredHeight) / 2 + ((d) ? sortArrow.measuredHeight: 0);
	        if (sortArrow.x < listItems[0][i].x){
	            sortArrow.visible = false;
	        }
	        if (!sortArrow.visible && sortArrowHitArea){
	            sortArrowHitArea.visible = false;
	        }
		}
	}
}
