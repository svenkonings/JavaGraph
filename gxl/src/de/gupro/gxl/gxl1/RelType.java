
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="RelType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:LocalConnectionType">
 *       &lt;xs:sequence>
 *         &lt;xs:element ref="ns:relend" minOccurs="0" maxOccurs="unbounded"/>
 *       &lt;/xs:sequence>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class RelType extends LocalConnectionType
{
    private List<RelendType> relendList = new ArrayList<RelendType>();

    /** 
     * Get the list of 'relend' element items.
     * 
     * @return list
     */
    public List<RelendType> getRelendList() {
        return relendList;
    }

    /** 
     * Set the list of 'relend' element items.
     * 
     * @param list
     */
    public void setRelendList(List<RelendType> list) {
        relendList = list;
    }
}
