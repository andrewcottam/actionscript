/**
 * ArrayOfMapServerFindResult.as
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

    public class ArrayOfMapServerFindResult extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerFindResult(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerFindResultAt(item:MapServerFindResult,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerFindResult(item:MapServerFindResult):void {
            addItem(item);
        } 

        public function getMapServerFindResultAt(index:int):MapServerFindResult {
            return getItemAt(index) as MapServerFindResult;
        }
                
        public function getMapServerFindResultIndex(item:MapServerFindResult):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerFindResultAt(item:MapServerFindResult,index:int):void {
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
