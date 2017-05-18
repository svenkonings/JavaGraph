<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="SimpleProgram">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n14">
            <attr name="layout">
                <string>924 1506 99 52</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>946 1598 55 34</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>769 1506 95 52</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>795 1598 43 34</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>215 380 43 34</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>664 166 43 34</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>882 1414 87 52</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>871 936 108 52</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>178 294 118 34</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>858 1230 74 52</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>153 166 169 88</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>382 166 222 142</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>838 660 114 52</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>838 1138 114 52</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>579 660 139 52</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>838 752 114 52</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>837 1322 117 52</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>724 550 82 70</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>858 844 74 52</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>319 0 109 34</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>336 348 150 52</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>425 458 213 70</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>289 74 169 52</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>698 458 74 52</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>546 348 105 70</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>871 1028 108 70</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>40 166 53 52</string>
            </attr>
        </node>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:Branch</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:match = false</string>
            </attr>
        </edge>
        <edge from="n14" to="n12">
            <attr name="label">
                <string>abort</string>
            </attr>
        </edge>
        <edge from="n14" to="n16">
            <attr name="label">
                <string>condition</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:Abort</string>
            </attr>
        </edge>
        <edge from="n12" to="n7">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n12" to="n17">
            <attr name="label">
                <string>reason</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:Branch</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>let:match = true</string>
            </attr>
        </edge>
        <edge from="n11" to="n16">
            <attr name="label">
                <string>condition</string>
            </attr>
        </edge>
        <edge from="n11" to="n7">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n26" to="n26">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:AssertStmt</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>let:index = 2</string>
            </attr>
        </edge>
        <edge from="n17" to="n16">
            <attr name="label">
                <string>assertExpr</string>
            </attr>
            <attr name="layout">
                <string>500 0 925 1440 1083 1506 895 1348 12</string>
            </attr>
        </edge>
        <edge from="n17" to="n11">
            <attr name="label">
                <string>branch</string>
            </attr>
        </edge>
        <edge from="n17" to="n14">
            <attr name="label">
                <string>branch</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>type:BinaryExpr</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>let:operator = &quot;+&quot;</string>
            </attr>
        </edge>
        <edge from="n25" to="n23">
            <attr name="label">
                <string>right</string>
            </attr>
        </edge>
        <edge from="n25" to="n3">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n25" to="n22">
            <attr name="label">
                <string>left</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n1" to="n26">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:value = 4</string>
            </attr>
        </edge>
        <edge from="n4" to="n16">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:name = &quot;SimpleProgram&quot;</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:signature = &quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:static = false</string>
            </attr>
        </edge>
        <edge from="n2" to="n1">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n2" to="n1">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n2" to="n26">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>flag:start</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:argumentLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:name = &quot;main&quot;</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:signature = &quot;([Ljava/lang/String;)V&quot;</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:static = true</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:stmtLastIndex = 2</string>
            </attr>
        </edge>
        <edge from="n20" to="n6">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n20" to="n17">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n20" to="n19">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n20" to="n13">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n20" to="n13">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n20" to="n7">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n20" to="n3">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>let:name = &quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n21" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n21" to="n22">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:name = &quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n5" to="n4">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>let:name = &quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n22" to="n23">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n22" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:BinaryExpr</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>let:operator = &quot;==&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n17">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n16" to="n5">
            <attr name="label">
                <string>left</string>
            </attr>
        </edge>
        <edge from="n16" to="n4">
            <attr name="label">
                <string>right</string>
            </attr>
            <attr name="layout">
                <string>500 0 895 1348 822 1414 895 1256 12</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>let:name = &quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n19" to="n21">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 765 585 778 660 895 686 12</string>
            </attr>
        </edge>
        <edge from="n19" to="n15">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n19" to="n18">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>let:value = 3</string>
            </attr>
        </edge>
        <edge from="n23" to="n25">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 895 870 811 936 925 962 12</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:resolvedType = &quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:dimensions = 1</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:resolvedType = &quot;java.lang.String&quot;</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>let:name = &quot;SimpleProgram&quot;</string>
            </attr>
        </edge>
        <edge from="n8" to="n24">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n8" to="n24">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n8" to="n2">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n8" to="n0">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n8" to="n20">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>let:value = 1</string>
            </attr>
        </edge>
        <edge from="n18" to="n19">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 735 484 664 550 765 585 12</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>let:name = &quot;args&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n18">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n13" to="n9">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Assign</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>let:operator = &quot;=&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n5">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n3" to="n25">
            <attr name="label">
                <string>expr</string>
            </attr>
            <attr name="layout">
                <string>500 0 925 1063 1012 1138 925 962 12</string>
            </attr>
        </edge>
        <edge from="n3" to="n21">
            <attr name="label">
                <string>lhs</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:Clinit</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:build</string>
            </attr>
        </edge>
    </graph>
</gxl>
