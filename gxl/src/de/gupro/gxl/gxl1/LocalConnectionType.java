
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="LocalConnectionType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:GraphElementType">
 *       &lt;xs:attribute type="xs:boolean" use="optional" name="isDirected"/>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class LocalConnectionType extends GraphElementType
{
    private Boolean isDirected;

    /** 
     * Get the 'isDirected' attribute value.
     * 
     * @return value
     */
    public Boolean getIsDirected() {
        return isDirected;
    }

    /** 
     * Set the 'isDirected' attribute value.
     * 
     * @param isDirected
     */
    public void setIsDirected(Boolean isDirected) {
        this.isDirected = isDirected;
    }
}
