/**
 * ArrayOfMapServerIdentifyResult.as
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

    public class ArrayOfMapServerIdentifyResult extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerIdentifyResult(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerIdentifyResultAt(item:MapServerIdentifyResult,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerIdentifyResult(item:MapServerIdentifyResult):void {
            addItem(item);
        } 

        public function getMapServerIdentifyResultAt(index:int):MapServerIdentifyResult {
            return getItemAt(index) as MapServerIdentifyResult;
        }
                
        public function getMapServerIdentifyResultIndex(item:MapServerIdentifyResult):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerIdentifyResultAt(item:MapServerIdentifyResult,index:int):void {
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
