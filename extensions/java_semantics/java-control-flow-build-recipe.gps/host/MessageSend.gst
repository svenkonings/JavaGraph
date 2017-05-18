<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MessageSend">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>817 381 151 102</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>50 222 156 85</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>438 506 129 51</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>27 20 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>35 39 19 19</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>467 8 104 51</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>70 363 116 34</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>795 540 54 34</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>331 222 151 102</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>24 34 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>466 381 73 68</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>24 21 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>29 21 19 19</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>731 222 124 102</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>598 381 139 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>39 43 19 19</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>30 91 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>70 49 19 19</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>441 115 156 51</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>247 381 139 51</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>33 90 19 19</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>930 540 61 68</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>103 84 19 19</string>
            </attr>
        </node>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;MessageSend&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:MessageSend</string>
            </attr>
        </edge>
        <edge from="n23" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n23" to="n17">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n23" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n23" to="n21">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n23" to="n20">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n23" to="n15">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>static</string>
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
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
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
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n27" to="n26">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:ThisRef</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n13" to="n17">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n13" to="n15">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n13" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n13" to="n16">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;method1&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n11" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n25">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n24" to="n18">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n24" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n24" to="n23">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n24" to="n17">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n24" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n18" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>string:&quot;method2&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge from="n26" to="n26">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n26" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n26" to="n13">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n26" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n26" to="n24">
            <attr name="label">
                <string>method</string>
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
        <edge from="n15" to="n15">
            <attr name="label">
                <string>string:&quot;(I)V&quot;</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n21" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n21" to="n22">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
