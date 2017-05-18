<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.SingleTypeReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n4">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>143 116 199 68</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>73 240 84 85</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>191 8 104 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>27 24 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>15 32 19 19</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>32 33 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 382 129 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>21 23 19 19</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>237 240 199 85</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>35 54 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>279 382 116 34</string>
            </attr>
        </node>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n3">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n10" to="n7">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n10" to="n8">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n3" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n3" to="n11">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n3" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>string:&quot;SingleTypeReference&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
            </attr>
        </edge>
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
        <edge from="n11" to="n11">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n7" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n7" to="n8">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n7" to="n6">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n7" to="n9">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
    </graph>
</gxl>
