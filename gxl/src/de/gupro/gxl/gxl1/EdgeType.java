
package de.gupro.gxl.gxl1;

import java.math.BigInteger;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="EdgeType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:LocalConnectionType">
 *       &lt;xs:attribute type="xs:string" use="required" name="from"/>
 *       &lt;xs:attribute type="xs:string" use="required" name="to"/>
 *       &lt;xs:attribute type="xs:integer" use="optional" name="fromorder"/>
 *       &lt;xs:attribute type="xs:integer" use="optional" name="toorder"/>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class EdgeType extends LocalConnectionType
{
    private String from;
    private String to;
    private BigInteger fromorder;
    private BigInteger toorder;

    /** 
     * Get the 'from' attribute value.
     * 
     * @return value
     */
    public String getFrom() {
        return from;
    }

    /** 
     * Set the 'from' attribute value.
     * 
     * @param from
     */
    public void setFrom(String from) {
        this.from = from;
    }

    /** 
     * Get the 'to' attribute value.
     * 
     * @return value
     */
    public String getTo() {
        return to;
    }

    /** 
     * Set the 'to' attribute value.
     * 
     * @param to
     */
    public void setTo(String to) {
        this.to = to;
    }

    /** 
     * Get the 'fromorder' attribute value.
     * 
     * @return value
     */
    public BigInteger getFromorder() {
        return fromorder;
    }

    /** 
     * Set the 'fromorder' attribute value.
     * 
     * @param fromorder
     */
    public void setFromorder(BigInteger fromorder) {
        this.fromorder = fromorder;
    }

    /** 
     * Get the 'toorder' attribute value.
     * 
     * @return value
     */
    public BigInteger getToorder() {
        return toorder;
    }

    /** 
     * Set the 'toorder' attribute value.
     * 
     * @param toorder
     */
    public void setToorder(BigInteger toorder) {
        this.toorder = toorder;
    }
}
