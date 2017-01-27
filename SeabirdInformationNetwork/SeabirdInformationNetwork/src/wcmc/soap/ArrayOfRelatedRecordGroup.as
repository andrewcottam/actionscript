/**
 * ArrayOfRelatedRecordGroup.as
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

    public class ArrayOfRelatedRecordGroup extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfRelatedRecordGroup(source:Array = null)
        {
            super(source);
        }
        
        
        public function addRelatedRecordGroupAt(item:RelatedRecordGroup,index:int):void {
            addItemAt(item,index);
        }
            
        public function addRelatedRecordGroup(item:RelatedRecordGroup):void {
            addItem(item);
        } 

        public function getRelatedRecordGroupAt(index:int):RelatedRecordGroup {
            return getItemAt(index) as RelatedRecordGroup;
        }
                
        public function getRelatedRecordGroupIndex(item:RelatedRecordGroup):int {
            return getItemIndex(item);
        }
                            
        public function setRelatedRecordGroupAt(item:RelatedRecordGroup,index:int):void {
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
