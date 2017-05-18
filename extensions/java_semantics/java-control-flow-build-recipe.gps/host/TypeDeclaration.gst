<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.TypeDeclaration">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>50 222 169 85</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>76 363 116 34</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>20 18 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>82 8 104 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>22 27 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>34 27 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>50 115 169 51</string>
            </attr>
        </node>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;TypeDeclaration&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n6" to="n5">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n5" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
    </graph>
</gxl>
