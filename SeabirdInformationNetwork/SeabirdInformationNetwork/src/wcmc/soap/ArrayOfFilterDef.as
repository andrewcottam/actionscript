/**
 * ArrayOfFilterDef.as
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

    public class ArrayOfFilterDef extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfFilterDef(source:Array = null)
        {
            super(source);
        }
        
        
        public function addFilterDefAt(item:FilterDef,index:int):void {
            addItemAt(item,index);
        }
            
        public function addFilterDef(item:FilterDef):void {
            addItem(item);
        } 

        public function getFilterDefAt(index:int):FilterDef {
            return getItemAt(index) as FilterDef;
        }
                
        public function getFilterDefIndex(item:FilterDef):int {
            return getItemIndex(item);
        }
                            
        public function setFilterDefAt(item:FilterDef,index:int):void {
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
