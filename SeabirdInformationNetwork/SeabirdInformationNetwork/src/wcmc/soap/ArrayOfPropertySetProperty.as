/**
 * ArrayOfPropertySetProperty.as
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

    public class ArrayOfPropertySetProperty extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfPropertySetProperty(source:Array = null)
        {
            super(source);
        }
        
        
        public function addPropertySetPropertyAt(item:PropertySetProperty,index:int):void {
            addItemAt(item,index);
        }
            
        public function addPropertySetProperty(item:PropertySetProperty):void {
            addItem(item);
        } 

        public function getPropertySetPropertyAt(index:int):PropertySetProperty {
            return getItemAt(index) as PropertySetProperty;
        }
                
        public function getPropertySetPropertyIndex(item:PropertySetProperty):int {
            return getItemIndex(item);
        }
                            
        public function setPropertySetPropertyAt(item:PropertySetProperty,index:int):void {
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
