
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="CompositeValueType">
 *   &lt;xs:sequence>
 *     &lt;xs:group ref="ns:value" minOccurs="0" maxOccurs="unbounded"/>
 *   &lt;/xs:sequence>
 * &lt;/xs:complexType>
 * </pre>
 */
public class CompositeValueType
{
    private List<Value> valueList = new ArrayList<Value>();

    /** 
     * Get the list of 'value' group items.
     * 
     * @return list
     */
    public List<Value> getValueList() {
        return valueList;
    }

    /** 
     * Set the list of 'value' group items.
     * 
     * @param list
     */
    public void setValueList(List<Value> list) {
        valueList = list;
    }
}
