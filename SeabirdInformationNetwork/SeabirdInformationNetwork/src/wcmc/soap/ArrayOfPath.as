/**
 * ArrayOfPath.as
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

    public class ArrayOfPath extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfPath(source:Array = null)
        {
            super(source);
        }
        
        
        public function addPathAt(item:Path,index:int):void {
            addItemAt(item,index);
        }
            
        public function addPath(item:Path):void {
            addItem(item);
        } 

        public function getPathAt(index:int):Path {
            return getItemAt(index) as Path;
        }
                
        public function getPathIndex(item:Path):int {
            return getItemIndex(item);
        }
                            
        public function setPathAt(item:Path,index:int):void {
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
