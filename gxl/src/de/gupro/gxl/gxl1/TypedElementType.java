
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="TypedElementType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:AttributedElementType">
 *       &lt;xs:sequence>
 *         &lt;xs:element ref="ns:type" minOccurs="0"/>
 *         &lt;xs:element ref="ns:attr" minOccurs="0" maxOccurs="unbounded"/>
 *       &lt;/xs:sequence>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class TypedElementType extends AttributedElementType
{
    private TypeType type;
    private List<AttrType> attrList = new ArrayList<AttrType>();

    /** 
     * Get the 'type' element value.
     * 
     * @return value
     */
    public TypeType getType() {
        return type;
    }

    /** 
     * Set the 'type' element value.
     * 
     * @param type
     */
    public void setType(TypeType type) {
        this.type = type;
    }

    /** 
     * Get the list of 'attr' element items.
     * 
     * @return list
     */
    public List<AttrType> getAttrList() {
        return attrList;
    }

    /** 
     * Set the list of 'attr' element items.
     * 
     * @param list
     */
    public void setAttrList(List<AttrType> list) {
        attrList = list;
    }
}
