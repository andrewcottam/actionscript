/**
 * ArrayOfMapServerRelationship.as
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

    public class ArrayOfMapServerRelationship extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerRelationship(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerRelationshipAt(item:MapServerRelationship,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerRelationship(item:MapServerRelationship):void {
            addItem(item);
        } 

        public function getMapServerRelationshipAt(index:int):MapServerRelationship {
            return getItemAt(index) as MapServerRelationship;
        }
                
        public function getMapServerRelationshipIndex(item:MapServerRelationship):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerRelationshipAt(item:MapServerRelationship,index:int):void {
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
