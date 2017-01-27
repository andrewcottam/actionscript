/**
 * ArrayOfMapServerLegendGroup.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package wcmc.soap{
    import mx.utils.ObjectProxy;
    import mx.collections.ArrayCollection;
    import mx.collections.IList;
    import mx.collections.ICollectionView;
    import mx.rpc.soap.types.*;
    /**
     * Typed array collection
     */

    public class ArrayOfMapServerLegendGroup extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerLegendGroup(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerLegendGroupAt(item:MapServerLegendGroup,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerLegendGroup(item:MapServerLegendGroup):void {
            addItem(item);
        } 

        public function getMapServerLegendGroupAt(index:int):MapServerLegendGroup {
            return getItemAt(index) as MapServerLegendGroup;
        }
                
        public function getMapServerLegendGroupIndex(item:MapServerLegendGroup):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerLegendGroupAt(item:MapServerLegendGroup,index:int):void {
            setItemAt(item,index);
        }

        public function asIList():IList {
            return this as IList;
        }
        
        public function asICollectionView():ICollectionView {
            return this as ICollectionView;
        }
    }
}
