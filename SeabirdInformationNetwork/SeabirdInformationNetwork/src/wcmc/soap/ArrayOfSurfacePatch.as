/**
 * ArrayOfSurfacePatch.as
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

    public class ArrayOfSurfacePatch extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfSurfacePatch(source:Array = null)
        {
            super(source);
        }
        
        
        public function addGeometryAt(item:Geometry,index:int):void {
            addItemAt(item,index);
        }
            
        public function addGeometry(item:Geometry):void {
            addItem(item);
        } 

        public function getGeometryAt(index:int):Geometry {
            return getItemAt(index) as Geometry;
        }
                
        public function getGeometryIndex(item:Geometry):int {
            return getItemIndex(item);
        }
                            
        public function setGeometryAt(item:Geometry,index:int):void {
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
