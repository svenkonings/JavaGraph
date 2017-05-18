
package de.gupro.gxl.gxl1;

import java.math.BigInteger;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:element xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" type="xs:integer" name="int"/>
 * </pre>
 */
public class Int
{
    private BigInteger _int;

    /** 
     * Get the 'int' element value.
     * 
     * @return value
     */
    public BigInteger getInt() {
        return _int;
    }

    /** 
     * Set the 'int' element value.
     * 
     * @param _int
     */
    public void setInt(BigInteger _int) {
        this._int = _int;
    }
}
