/**
 * ArrayOfMapServerLegendInfo.as
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

    public class ArrayOfMapServerLegendInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerLegendInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerLegendInfoAt(item:MapServerLegendInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerLegendInfo(item:MapServerLegendInfo):void {
            addItem(item);
        } 

        public function getMapServerLegendInfoAt(index:int):MapServerLegendInfo {
            return getItemAt(index) as MapServerLegendInfo;
        }
                
        public function getMapServerLegendInfoIndex(item:MapServerLegendInfo):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerLegendInfoAt(item:MapServerLegendInfo,index:int):void {
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
