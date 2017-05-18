<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.AssertStatement">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n5">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>168 224 176 85</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>17 16 19 19</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>25 20 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 224 37 34</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>374 382 139 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>198 366 116 34</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>25 16 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>36 39 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>376 8 104 51</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>463 490 83 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>21 40 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>340 116 176 51</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>44 56 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>531 224 118 102</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>627 490 180 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>594 382 82 51</string>
            </attr>
        </node>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n2" to="n1">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n2" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n2" to="n4">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n2" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;AssertStatement&quot;</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:Clinit</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n6" to="n7">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:&quot;Assertions are on!&quot;</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n17" to="n16">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:FalseLit</string>
            </attr>
        </edge>
        <edge from="n9" to="n5">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n16" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n16" to="n13">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n16" to="n0">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n16" to="n2">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n4">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n13" to="n6">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n13" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n13" to="n15">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n13" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:StringLit</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:AssertStmt</string>
            </attr>
        </edge>
        <edge from="n12" to="n15">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n12" to="n9">
            <attr name="label">
                <string>assertExpr</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>exceptionArgument</string>
            </attr>
        </edge>
    </graph>
</gxl>
