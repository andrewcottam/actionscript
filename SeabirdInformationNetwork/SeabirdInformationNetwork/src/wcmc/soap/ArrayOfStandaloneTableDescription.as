/**
 * ArrayOfStandaloneTableDescription.as
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

    public class ArrayOfStandaloneTableDescription extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfStandaloneTableDescription(source:Array = null)
        {
            super(source);
        }
        
        
        public function addStandaloneTableDescriptionAt(item:StandaloneTableDescription,index:int):void {
            addItemAt(item,index);
        }
            
        public function addStandaloneTableDescription(item:StandaloneTableDescription):void {
            addItem(item);
        } 

        public function getStandaloneTableDescriptionAt(index:int):StandaloneTableDescription {
            return getItemAt(index) as StandaloneTableDescription;
        }
                
        public function getStandaloneTableDescriptionIndex(item:StandaloneTableDescription):int {
            return getItemIndex(item);
        }
                            
        public function setStandaloneTableDescriptionAt(item:StandaloneTableDescription,index:int):void {
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
