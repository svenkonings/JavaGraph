<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MarkerAnnotation">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n7">
            <attr name="layout">
                <string>368 366 139 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>20 18 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>224 116 180 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>30 24 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>152 366 116 34</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>15 40 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>50 8 132 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>120 224 180 85</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>262 8 104 51</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>15 36 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>380 224 116 85</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>54 33 19 19</string>
            </attr>
        </node>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n7" to="n8">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n12" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n12" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:StringLit</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;MarkerAnnotation&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n10" to="n7">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;unchecked&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
