<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.Wildcard">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>131 611 233 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>277 115 119 68</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>25 19 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>18 19 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>35 24 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>506 380 116 34</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>217 504 61 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>50 380 396 68</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>25 45 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>21 59 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>284 8 104 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>205 239 86 85</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>505 239 119 85</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>56 66 19 19</string>
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
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;java.lang.Runnable&quot;</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n15" to="n12">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n15" to="n8">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n15" to="n5">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;set&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;java.util.Set&lt;? extends java.lang.Runnable&gt;&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n3" to="n0">
            <attr name="label">
                <string>bound</string>
            </attr>
        </edge>
        <edge from="n3" to="n5">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n4" to="n3">
            <attr name="label">
                <string>typeArgument</string>
            </attr>
        </edge>
        <edge from="n4" to="n5">
            <attr name="label">
                <string>typeArgumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n4" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;Wildcard&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n16" to="n15">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n8" to="n10">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n8" to="n5">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n8" to="n4">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n12" to="n14">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n12" to="n11">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
