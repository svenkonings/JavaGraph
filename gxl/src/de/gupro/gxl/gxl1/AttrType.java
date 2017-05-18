
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="AttrType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:AttributedElementType">
 *       &lt;xs:group ref="ns:value"/>
 *       &lt;xs:attribute type="xs:string" use="required" name="name"/>
 *       &lt;xs:attribute type="xs:string" use="optional" name="kind"/>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class AttrType extends AttributedElementType
{
    private Value value;
    private String name;
    private String kind;

    /** 
     * Get the 'value' group value.
     * 
     * @return value
     */
    public Value getValue() {
        return value;
    }

    /** 
     * Set the 'value' group value.
     * 
     * @param value
     */
    public void setValue(Value value) {
        this.value = value;
    }

    /** 
     * Get the 'name' attribute value.
     * 
     * @return value
     */
    public String getName() {
        return name;
    }

    /** 
     * Set the 'name' attribute value.
     * 
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /** 
     * Get the 'kind' attribute value.
     * 
     * @return value
     */
    public String getKind() {
        return kind;
    }

    /** 
     * Set the 'kind' attribute value.
     * 
     * @param kind
     */
    public void setKind(String kind) {
        this.kind = kind;
    }
}
