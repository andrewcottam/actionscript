/**
 * ArrayOfSegment.as
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

    public class ArrayOfSegment extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfSegment(source:Array = null)
        {
            super(source);
        }
        
        
        public function addSegmentAt(item:Segment,index:int):void {
            addItemAt(item,index);
        }
            
        public function addSegment(item:Segment):void {
            addItem(item);
        } 

        public function getSegmentAt(index:int):Segment {
            return getItemAt(index) as Segment;
        }
                
        public function getSegmentIndex(item:Segment):int {
            return getItemIndex(item);
        }
                            
        public function setSegmentAt(item:Segment,index:int):void {
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
