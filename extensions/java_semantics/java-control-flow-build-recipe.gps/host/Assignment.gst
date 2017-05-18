<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.Assignment">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n23">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>63 363 116 51</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>757 611 61 51</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>898 611 61 51</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>451 8 104 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>30 25 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>26 19 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>32 17 19 19</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>20 22 19 19</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>50 222 142 85</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>239 380 139 51</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>740 380 95 68</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>60 60 19 19</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>432 115 142 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>50 56 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>429 504 129 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>39 31 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>617 504 113 51</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>539 222 118 102</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>60 82 19 19</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>810 504 95 51</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>60 37 19 19</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>36 97 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>458 380 70 68</string>
            </attr>
        </node>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n14" to="n15">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n16" to="n17">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n25" to="n24">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n2" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n2" to="n1">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n2" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n2" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:Assign</string>
            </attr>
        </edge>
        <edge from="n20" to="n18">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n20" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n20" to="n21">
            <attr name="label">
                <string>operator</string>
            </attr>
        </edge>
        <edge from="n20" to="n13">
            <attr name="label">
                <string>lhs</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>string:&quot;+&quot;</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n2">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n24" to="n22">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n24" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;Assignment&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n22" to="n23">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n22" to="n20">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n22" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n22" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n22" to="n17">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n22" to="n1">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n22" to="n11">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>string:&quot;=&quot;</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:BinaryExpr</string>
            </attr>
        </edge>
        <edge from="n18" to="n16">
            <attr name="label">
                <string>right</string>
            </attr>
        </edge>
        <edge from="n18" to="n14">
            <attr name="label">
                <string>left</string>
            </attr>
        </edge>
        <edge from="n18" to="n19">
            <attr name="label">
                <string>operator</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n11" to="n15">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
    </graph>
</gxl>
