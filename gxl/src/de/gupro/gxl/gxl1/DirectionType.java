
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:simpleType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="directionType">
 *   &lt;xs:restriction base="xs:string">
 *     &lt;xs:enumeration value="in"/>
 *     &lt;xs:enumeration value="out"/>
 *     &lt;xs:enumeration value="none"/>
 *   &lt;/xs:restriction>
 * &lt;/xs:simpleType>
 * </pre>
 */
public enum DirectionType {
    IN("in"), OUT("out"), NONE("none");
    private final String value;

    private DirectionType(String value) {
        this.value = value;
    }

    public String toString() {
        return value;
    }

    public static DirectionType convert(String value) {
        for (DirectionType inst : values()) {
            if (inst.toString().equals(value)) {
                return inst;
            }
        }
        return null;
    }
}
