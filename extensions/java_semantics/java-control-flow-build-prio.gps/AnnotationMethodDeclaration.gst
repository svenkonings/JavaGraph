<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0"/>
        <node id="n4"/>
        <node id="n5"/>
        <node id="n3"/>
        <node id="n1"/>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:"java.lang.String"</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:"AnnotationMethodDeclaration"</string>
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
    </graph>
</gxl>
