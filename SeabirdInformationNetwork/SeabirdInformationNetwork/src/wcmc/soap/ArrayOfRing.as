/**
 * ArrayOfRing.as
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

    public class ArrayOfRing extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfRing(source:Array = null)
        {
            super(source);
        }
        
        
        public function addRingAt(item:Ring,index:int):void {
            addItemAt(item,index);
        }
            
        public function addRing(item:Ring):void {
            addItem(item);
        } 

        public function getRingAt(index:int):Ring {
            return getItemAt(index) as Ring;
        }
                
        public function getRingIndex(item:Ring):int {
            return getItemIndex(item);
        }
                            
        public function setRingAt(item:Ring,index:int):void {
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
