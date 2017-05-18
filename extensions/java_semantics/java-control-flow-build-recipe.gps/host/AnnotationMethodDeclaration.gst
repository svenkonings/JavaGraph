<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.AnnotationMethodDeclaration">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>50 8 212 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>342 8 104 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>265 116 257 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>19 16 19 19</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;AnnotationMethodDeclaration&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;java.lang.String&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
