/**
 * ArrayOfFieldDomainInfo.as
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

    public class ArrayOfFieldDomainInfo extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfFieldDomainInfo(source:Array = null)
        {
            super(source);
        }
        
        
        public function addFieldDomainInfoAt(item:FieldDomainInfo,index:int):void {
            addItemAt(item,index);
        }
            
        public function addFieldDomainInfo(item:FieldDomainInfo):void {
            addItem(item);
        } 

        public function getFieldDomainInfoAt(index:int):FieldDomainInfo {
            return getItemAt(index) as FieldDomainInfo;
        }
                
        public function getFieldDomainInfoIndex(item:FieldDomainInfo):int {
            return getItemIndex(item);
        }
                            
        public function setFieldDomainInfoAt(item:FieldDomainInfo,index:int):void {
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
