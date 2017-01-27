/**
 * ArrayOfMapLayerInfo.as
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

    public class ArrayOfMapLayerInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapLayerInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapLayerInfoAt(item:MapLayerInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapLayerInfo(item:MapLayerInfo):void {
            addItem(item);
        } 

        public function getMapLayerInfoAt(index:int):MapLayerInfo {
            return getItemAt(index) as MapLayerInfo;
        }
                
        public function getMapLayerInfoIndex(item:MapLayerInfo):int {
            return getItemIndex(item);
        }
                            
        public function setMapLayerInfoAt(item:MapLayerInfo,index:int):void {
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
