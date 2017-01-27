/**
 * ArrayOfGraphicElement.as
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

    public class ArrayOfGraphicElement extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfGraphicElement(source:Array = null)
        {
            super(source);
        }
        
        
        public function addGraphicElementAt(item:GraphicElement,index:int):void {
            addItemAt(item,index);
        }
            
        public function addGraphicElement(item:GraphicElement):void {
            addItem(item);
        } 

        public function getGraphicElementAt(index:int):GraphicElement {
            return getItemAt(index) as GraphicElement;
        }
                
        public function getGraphicElementIndex(item:GraphicElement):int {
            return getItemIndex(item);
        }
                            
        public function setGraphicElementAt(item:GraphicElement,index:int):void {
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
