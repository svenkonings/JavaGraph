<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.ContinueStatement">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>50 224 192 85</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>493 506 75 34</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>20 17 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>88 366 116 34</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>19 28 19 19</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>15 22 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>39 23 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>552 596 118 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>29 27 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>264 382 139 51</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>38 58 19 19</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>23 49 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>484 382 94 68</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>264 116 192 51</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>561 704 100 51</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>308 8 104 51</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>408 224 118 102</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>30 94 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>392 596 79 51</string>
            </attr>
        </node>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
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
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:WhileStmt</string>
            </attr>
        </edge>
        <edge from="n14" to="n12">
            <attr name="label">
                <string>action</string>
            </attr>
        </edge>
        <edge from="n14" to="n8">
            <attr name="label">
                <string>condition</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;ContinueStatement&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:Block</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
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
        <edge from="n16" to="n16">
            <attr name="label">
                <string>string:&quot;loop&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:LabeledStmt</string>
            </attr>
        </edge>
        <edge from="n15" to="n16">
            <attr name="label">
                <string>label</string>
            </attr>
        </edge>
        <edge from="n15" to="n14">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n17">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n19" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n19" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:ContinueStmt</string>
            </attr>
        </edge>
        <edge from="n10" to="n15">
            <attr name="label">
                <string>label</string>
            </attr>
        </edge>
        <edge from="n10" to="n13">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n20" to="n19">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n17" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n17" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n17" to="n13">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n17" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n17" to="n15">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TrueLit</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
    </graph>
</gxl>
