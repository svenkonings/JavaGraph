<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.CompoundAssignment">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n11">
            <attr name="layout">
                <string>602 504 61 51</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>461 8 104 51</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>22 15 19 19</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>50 222 212 85</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>25 18 19 19</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>407 115 212 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>33 15 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>393 504 129 51</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>47 49 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>25 30 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>98 363 116 34</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>566 222 118 102</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>785 380 129 68</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>28 36 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>916 504 61 51</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>493 380 70 68</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>723 504 113 51</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>274 380 139 51</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>105 102 19 19</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>16 50 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>58 92 19 19</string>
            </attr>
        </node>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>string:&quot;+=&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n23" to="n22">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;CompoundAssignment&quot;</string>
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
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n22" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n22" to="n20">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n22" to="n2">
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
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n20" to="n13">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n20" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n20" to="n21">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n20" to="n17">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n20" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n20" to="n18">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n20" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:CompoundAssign</string>
            </attr>
        </edge>
        <edge from="n18" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n18" to="n19">
            <attr name="label">
                <string>operator</string>
            </attr>
        </edge>
        <edge from="n18" to="n16">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n18" to="n15">
            <attr name="label">
                <string>lhs</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>int:0</string>
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
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n13" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n15" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>refersTo</string>
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
        <edge from="n21" to="n21">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
