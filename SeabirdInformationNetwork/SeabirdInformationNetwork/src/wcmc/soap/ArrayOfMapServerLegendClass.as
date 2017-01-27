/**
 * ArrayOfMapServerLegendClass.as
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

    public class ArrayOfMapServerLegendClass extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerLegendClass(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerLegendClassAt(item:MapServerLegendClass,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerLegendClass(item:MapServerLegendClass):void {
            addItem(item);
        } 

        public function getMapServerLegendClassAt(index:int):MapServerLegendClass {
            return getItemAt(index) as MapServerLegendClass;
        }
                
        public function getMapServerLegendClassIndex(item:MapServerLegendClass):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerLegendClassAt(item:MapServerLegendClass,index:int):void {
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
