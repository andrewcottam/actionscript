/**
 * ArrayOfPoint.as
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

    public class ArrayOfPoint extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfPoint(source:Array = null)
        {
            super(source);
        }
        
        
        public function addPointAt(item:Point,index:int):void {
            addItemAt(item,index);
        }
            
        public function addPoint(item:Point):void {
            addItem(item);
        } 

        public function getPointAt(index:int):Point {
            return getItemAt(index) as Point;
        }
                
        public function getPointIndex(item:Point):int {
            return getItemIndex(item);
        }
                            
        public function setPointAt(item:Point,index:int):void {
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
