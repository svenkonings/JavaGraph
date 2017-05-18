
package de.gupro.gxl.gxl1;

import java.math.BigInteger;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="RelendType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:AttributedElementType">
 *       &lt;xs:attribute type="xs:string" use="required" name="target"/>
 *       &lt;xs:attribute type="xs:string" use="optional" name="role"/>
 *       &lt;xs:attribute type="ns:directionType" use="optional" name="direction"/>
 *       &lt;xs:attribute type="xs:integer" use="optional" name="startorder"/>
 *       &lt;xs:attribute type="xs:integer" use="optional" name="endorder"/>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class RelendType extends AttributedElementType
{
    private String target;
    private String role;
    private DirectionType direction;
    private BigInteger startorder;
    private BigInteger endorder;

    /** 
     * Get the 'target' attribute value.
     * 
     * @return value
     */
    public String getTarget() {
        return target;
    }

    /** 
     * Set the 'target' attribute value.
     * 
     * @param target
     */
    public void setTarget(String target) {
        this.target = target;
    }

    /** 
     * Get the 'role' attribute value.
     * 
     * @return value
     */
    public String getRole() {
        return role;
    }

    /** 
     * Set the 'role' attribute value.
     * 
     * @param role
     */
    public void setRole(String role) {
        this.role = role;
    }

    /** 
     * Get the 'direction' attribute value.
     * 
     * @return value
     */
    public DirectionType getDirection() {
        return direction;
    }

    /** 
     * Set the 'direction' attribute value.
     * 
     * @param direction
     */
    public void setDirection(DirectionType direction) {
        this.direction = direction;
    }

    /** 
     * Get the 'startorder' attribute value.
     * 
     * @return value
     */
    public BigInteger getStartorder() {
        return startorder;
    }

    /** 
     * Set the 'startorder' attribute value.
     * 
     * @param startorder
     */
    public void setStartorder(BigInteger startorder) {
        this.startorder = startorder;
    }

    /** 
     * Get the 'endorder' attribute value.
     * 
     * @return value
     */
    public BigInteger getEndorder() {
        return endorder;
    }

    /** 
     * Set the 'endorder' attribute value.
     * 
     * @param endorder
     */
    public void setEndorder(BigInteger endorder) {
        this.endorder = endorder;
    }
}
