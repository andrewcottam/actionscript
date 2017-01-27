/**
 * ArrayOfMapServerHyperlink.as
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

    public class ArrayOfMapServerHyperlink extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function ArrayOfMapServerHyperlink(source:Array = null)
        {
            super(source);
        }
        
        
        public function addMapServerHyperlinkAt(item:MapServerHyperlink,index:int):void {
            addItemAt(item,index);
        }
            
        public function addMapServerHyperlink(item:MapServerHyperlink):void {
            addItem(item);
        } 

        public function getMapServerHyperlinkAt(index:int):MapServerHyperlink {
            return getItemAt(index) as MapServerHyperlink;
        }
                
        public function getMapServerHyperlinkIndex(item:MapServerHyperlink):int {
            return getItemIndex(item);
        }
                            
        public function setMapServerHyperlinkAt(item:MapServerHyperlink,index:int):void {
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
