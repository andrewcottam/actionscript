/**
 * ArrayOfStandaloneTableInfo.as
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

    public class ArrayOfStandaloneTableInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfStandaloneTableInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addStandaloneTableInfoAt(item:StandaloneTableInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addStandaloneTableInfo(item:StandaloneTableInfo):void {
            addItem(item);
        } 

        public function getStandaloneTableInfoAt(index:int):StandaloneTableInfo {
            return getItemAt(index) as StandaloneTableInfo;
        }
                
        public function getStandaloneTableInfoIndex(item:StandaloneTableInfo):int {
            return getItemIndex(item);
        }
                            
        public function setStandaloneTableInfoAt(item:StandaloneTableInfo,index:int):void {
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
