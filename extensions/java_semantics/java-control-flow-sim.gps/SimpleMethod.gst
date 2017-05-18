<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="SimpleMethod">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n4">
            <attr name="layout">
                <string>1144 808 55 34</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>930 1008 43 34</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>1150 882 43 34</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>93 387 43 34</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>988 166 43 34</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>480 0 109 34</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>40 166 164 88</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>774 166 154 124</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>765 440 139 52</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>860 770 124 52</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>884 660 75 70</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>1024 440 114 52</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>394 550 210 52</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>724 550 124 70</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>709 330 139 52</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>289 458 213 70</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>1059 624 104 52</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>453 74 164 52</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>267 166 222 142</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>1040 532 81 52</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>1096 716 90 52</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>614 660 210 52</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>562 458 117 52</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>431 348 105 70</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>875 862 154 106</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>908 330 86 70</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>221 348 150 52</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>63 294 118 34</string>
            </attr>
        </node>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:Abort</string>
            </attr>
        </edge>
        <edge from="n4" to="n23">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n4" to="n7">
            <attr name="label">
                <string>reason</string>
            </attr>
        </edge>
        <edge from="n26" to="n26">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n11" to="n10">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:name = &quot;SimpleMethod&quot;</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:signature = &quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:static = false</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n1" to="n17">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:argumentLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:name = &quot;timesten&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:signature = &quot;(I)I&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:static = false</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:stmtLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n9" to="n13">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n9" to="n25">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n9" to="n25">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n9" to="n7">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n9" to="n23">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>let:name = &quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n21" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n21" to="n24">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 922 796 815 862 952 915 12</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>let:value = 5</string>
            </attr>
        </edge>
        <edge from="n22" to="n21">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>let:name = &quot;a&quot;</string>
            </attr>
        </edge>
        <edge from="n27" to="n3">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n27" to="n25">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>let:resolvedType = &quot;SimpleMethod&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n10">
            <attr name="label">
                <string>refersTo</string>
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
                <string>let:name = &quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n19" to="n18">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n19" to="n22">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n19" to="n14">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>let:dimensions = 1</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>let:resolvedType = &quot;java.lang.String&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:BinaryExpr</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:operator = &quot;*&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n3">
            <attr name="label">
                <string>right</string>
            </attr>
        </edge>
        <edge from="n6" to="n27">
            <attr name="label">
                <string>left</string>
            </attr>
        </edge>
        <edge from="n6" to="n7">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 1111 650 1036 716 1141 742 12</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>let:name = &quot;SimpleMethod&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n9">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n10" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n10" to="n15">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n10" to="n15">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n10" to="n2">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>flag:start</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:argumentLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:name = &quot;main&quot;</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:signature = &quot;([Ljava/lang/String;)V&quot;</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:static = true</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:stmtLastIndex = 1</string>
            </attr>
        </edge>
        <edge from="n2" to="n24">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n2" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n2" to="n12">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n2" to="n12">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n2" to="n19">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n2" to="n26">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>let:value = 10</string>
            </attr>
        </edge>
        <edge from="n3" to="n6">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 1080 558 999 624 1111 650 12</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:ReturnStmt</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n7" to="n6">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n7" to="n4">
            <attr name="label">
                <string>abort</string>
            </attr>
            <attr name="layout">
                <string>500 0 1141 742 1084 808 1171 825 12</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:resolvedType = &quot;SimpleMethod&quot;</string>
            </attr>
        </edge>
        <edge from="n14" to="n10">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:AllocExpr</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>let:signature = &quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n18" to="n19">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 620 484 664 550 786 585 12</string>
            </attr>
        </edge>
        <edge from="n18" to="n16">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>let:name = &quot;args&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n18">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n12" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:MessageSend</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:argumentLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:name = &quot;timesten&quot;</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:signature = &quot;(I)I&quot;</string>
            </attr>
        </edge>
        <edge from="n24" to="n21">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n24" to="n22">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n24" to="n26">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>let:name = &quot;a&quot;</string>
            </attr>
        </edge>
        <edge from="n25" to="n20">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n25" to="n27">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 951 365 964 440 1081 466 12</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:resolvedType = &quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n0" to="n17">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
    </graph>
</gxl>
