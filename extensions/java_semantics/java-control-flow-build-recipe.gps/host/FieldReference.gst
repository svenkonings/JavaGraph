<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.FieldReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n9">
            <attr name="layout">
                <string>360 240 159 85</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>891 630 54 34</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>17 16 19 19</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>24 22 19 19</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>23 15 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>26 19 19 19</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>778 398 70 68</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>35 22 19 19</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>421 116 159 68</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>673 522 129 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>382 382 116 34</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>144 240 84 85</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>43 43 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 382 129 51</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>52 73 19 19</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>449 8 104 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>260 382 61 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>558 398 139 51</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>696 240 118 102</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>883 522 69 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>38 72 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>89 46 19 19</string>
            </attr>
        </node>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n9" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n9" to="n10">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n9" to="n11">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n9" to="n8">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:ThisRef</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>string:&quot;j&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n18">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n19" to="n15">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n19" to="n20">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n19" to="n4">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>string:&quot;FieldReference&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n23" to="n4">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n23" to="n5">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n23" to="n21">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n23" to="n9">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n23" to="n10">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n15" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n5" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n5" to="n4">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n5" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
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
        <edge from="n7" to="n7">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n24" to="n23">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n21" to="n19">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n21" to="n4">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n21" to="n22">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n21" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n21" to="n12">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n21" to="n11">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:FieldRef</string>
            </attr>
        </edge>
        <edge from="n18" to="n17">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n18" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
    </graph>
</gxl>
