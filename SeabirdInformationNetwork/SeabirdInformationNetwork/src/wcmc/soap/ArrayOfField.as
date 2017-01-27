/**
 * ArrayOfField.as
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

    public class ArrayOfField extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfField(source:Array = null)
        {
            super(source);
        }
        
        
        public function addFieldAt(item:Field,index:int):void {
            addItemAt(item,index);
        }
            
        public function addField(item:Field):void {
            addItem(item);
        } 

        public function getFieldAt(index:int):Field {
            return getItemAt(index) as Field;
        }
                
        public function getFieldIndex(item:Field):int {
            return getItemIndex(item);
        }
                            
        public function setFieldAt(item:Field,index:int):void {
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
