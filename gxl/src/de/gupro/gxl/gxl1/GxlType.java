
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="GxlType">
 *   &lt;xs:sequence>
 *     &lt;xs:element ref="ns:graph" minOccurs="0" maxOccurs="unbounded"/>
 *   &lt;/xs:sequence>
 * &lt;/xs:complexType>
 * </pre>
 */
public class GxlType
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
