/**
 * ArrayOfMapServerRow.as
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

    public class ArrayOfMapServerRow extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerRow(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerRowAt(item:MapServerRow,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerRow(item:MapServerRow):void {
            addItem(item);
        } 

        public function getMapServerRowAt(index:int):MapServerRow {
            return getItemAt(index) as MapServerRow;
        }
                
        public function getMapServerRowIndex(item:MapServerRow):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerRowAt(item:MapServerRow,index:int):void {
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
