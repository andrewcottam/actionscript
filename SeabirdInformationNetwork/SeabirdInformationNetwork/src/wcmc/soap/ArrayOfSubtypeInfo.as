/**
 * ArrayOfSubtypeInfo.as
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

    public class ArrayOfSubtypeInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfSubtypeInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addSubtypeInfoAt(item:SubtypeInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addSubtypeInfo(item:SubtypeInfo):void {
            addItem(item);
        } 

        public function getSubtypeInfoAt(index:int):SubtypeInfo {
            return getItemAt(index) as SubtypeInfo;
        }
                
        public function getSubtypeInfoIndex(item:SubtypeInfo):int {
            return getItemIndex(item);
        }
                            
        public function setSubtypeInfoAt(item:SubtypeInfo,index:int):void {
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
