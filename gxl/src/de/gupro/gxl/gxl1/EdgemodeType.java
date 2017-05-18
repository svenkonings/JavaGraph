
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:simpleType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="edgemodeType">
 *   &lt;xs:restriction base="xs:string">
 *     &lt;xs:enumeration value="directed"/>
 *     &lt;xs:enumeration value="undirected"/>
 *     &lt;xs:enumeration value="defaultdirected"/>
 *     &lt;xs:enumeration value="defaultundirected"/>
 *   &lt;/xs:restriction>
 * &lt;/xs:simpleType>
 * </pre>
 */
public enum EdgemodeType {
    DIRECTED("directed"), UNDIRECTED("undirected"), DEFAULTDIRECTED(
            "defaultdirected"), DEFAULTUNDIRECTED("defaultundirected");
    private final String value;

    private EdgemodeType(String value) {
        this.value = value;
    }

    public String toString() {
        return value;
    }

    public static EdgemodeType convert(String value) {
        for (EdgemodeType inst : values()) {
            if (inst.toString().equals(value)) {
                return inst;
            }
        }
        return null;
    }
}
