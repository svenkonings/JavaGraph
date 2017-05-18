
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="GraphElementType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:TypedElementType">
 *       &lt;xs:sequence>
 *         &lt;xs:element ref="ns:graph" minOccurs="0" maxOccurs="unbounded"/>
 *       &lt;/xs:sequence>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class GraphElementType extends TypedElementType
{
    private List<GraphType> graphList = new ArrayList<GraphType>();

    /** 
     * Get the list of 'graph' element items.
     * 
     * @return list
     */
    public List<GraphType> getGraphList() {
        return graphList;
    }

    /** 
     * Set the list of 'graph' element items.
     * 
     * @param list
     */
    public void setGraphList(List<GraphType> list) {
        graphList = list;
    }
}
