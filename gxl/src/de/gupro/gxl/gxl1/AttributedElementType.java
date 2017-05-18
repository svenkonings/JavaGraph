
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="AttributedElementType">
 *   &lt;xs:attribute type="xs:string" name="id"/>
 * &lt;/xs:complexType>
 * </pre>
 */
public class AttributedElementType
{
    private String id;

    /** 
     * Get the 'id' attribute value.
     * 
     * @return value
     */
    public String getId() {
        return id;
    }

    /** 
     * Set the 'id' attribute value.
     * 
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }
}
