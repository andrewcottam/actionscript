/**
 * ArrayOfRelateInfo.as
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

    public class ArrayOfRelateInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfRelateInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addRelateInfoAt(item:RelateInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addRelateInfo(item:RelateInfo):void {
            addItem(item);
        } 

        public function getRelateInfoAt(index:int):RelateInfo {
            return getItemAt(index) as RelateInfo;
        }
                
        public function getRelateInfoIndex(item:RelateInfo):int {
            return getItemIndex(item);
        }
                            
        public function setRelateInfoAt(item:RelateInfo,index:int):void {
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
