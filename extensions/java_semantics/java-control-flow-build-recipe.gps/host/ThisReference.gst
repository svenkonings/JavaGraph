<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.ThisReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n4">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>542 382 84 51</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>286 8 104 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>557 490 54 34</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>25 19 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>246 382 215 51</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>20 27 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>22 35 19 19</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>50 224 155 85</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>260 116 155 51</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>330 224 212 102</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>70 366 116 34</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>40 23 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>61 70 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>47 72 19 19</string>
            </attr>
        </node>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:ReturnStmt</string>
            </attr>
        </edge>
        <edge from="n9" to="n8">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n9" to="n13">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n15" to="n14">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:ThisRef</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;java.lang.Object&quot;</string>
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
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;ThisReference&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
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
        <edge from="n1" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n14" to="n10">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n14" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n14" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n12">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n13">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n10" to="n9">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n10" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n10" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;()Ljava/lang/Object;&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
    </graph>
</gxl>
