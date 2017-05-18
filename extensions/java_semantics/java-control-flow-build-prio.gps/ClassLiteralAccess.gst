<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1"/>
        <node id="n2"/>
        <node id="n8"/>
        <node id="n11"/>
        <node id="n12"/>
        <node id="n0"/>
        <node id="n17"/>
        <node id="n15"/>
        <node id="n5"/>
        <node id="n14"/>
        <node id="n9"/>
        <node id="n10"/>
        <node id="n3"/>
        <node id="n6"/>
        <node id="n16"/>
        <node id="n13"/>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:ClassLitAccess</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n16" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n16" to="n2">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:"ClassLiteralAccess"</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:"int"</string>
            </attr>
        </edge>
        <edge from="n17" to="n16">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n9" to="n1">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:"java.lang.Class&lt;?&gt;"</string>
            </attr>
        </edge>
        <edge from="n16" to="n13">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>string:"()V"</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n8" to="n5">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n13" to="n15">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n9" to="n10">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n13" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>typeArgumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n9" to="n8">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n16" to="n9">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n9" to="n11">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>string:"c"</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>typeArgument</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n9" to="n2">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
    </graph>
</gxl>
