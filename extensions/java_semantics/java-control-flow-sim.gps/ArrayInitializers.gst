<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="ArrayInitializers">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>61 273 114 31</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>562 520 73 61</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>230 71 156 46</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>749 1313 73 61</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>299 419 203 61</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>733 1601 105 61</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>215 318 142 46</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>749 1212 73 61</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>620 1379 121 61</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>562 621 73 61</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>255 0 105 31</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>800 1702 134 61</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>525 909 134 61</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>792 1107 121 61</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>40 157 156 76</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>258 157 215 121</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>719 1010 73 61</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>562 419 73 61</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>642 679 121 46</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>719 909 73 61</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>606 808 105 61</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>744 1515 121 46</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>417 318 99 61</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>533 157 43 31</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>96 344 43 31</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>697 1702 43 31</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n0" to="n3">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>let:value = 2</string>
            </attr>
        </edge>
        <edge from="n18" to="n20">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>let:name = &quot;ArrayInitializers&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n6">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n11" to="n6">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n11" to="n2">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n11" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>let:value = 4</string>
            </attr>
        </edge>
        <edge from="n10" to="n7">
            <attr name="label">
                <string>flow</string>
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
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:name = &quot;arr2d&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n15">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n4" to="n9">
            <attr name="label">
                <string>initialization</string>
            </attr>
            <attr name="layout">
                <string>500 0 785 1631 637 1702 785 1538 12</string>
            </attr>
        </edge>
        <edge from="n4" to="n25">
            <attr name="label">
                <string>type</string>
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
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>let:value = 3</string>
            </attr>
        </edge>
        <edge from="n21" to="n10">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:ArrayInitializer</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>let:exprLastIndex = 1</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n7" to="n21">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n7" to="n10">
            <attr name="label">
                <string>expr</string>
            </attr>
            <attr name="layout">
                <string>500 0 736 1421 786 1433 786 1369 12</string>
            </attr>
        </edge>
        <edge from="n7" to="n9">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 785 1444 665 1515 785 1538 12</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:index = 2</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>let:value = 3</string>
            </attr>
        </edge>
        <edge from="n20" to="n22">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>let:dimensions = 2</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:dimensions = 1</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:ArrayInitializer</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>let:exprLastIndex = 1</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n23" to="n21">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n23" to="n16">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n23" to="n19">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:name = &quot;ArrayInitializers&quot;</string>
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
        <edge from="n1" to="n3">
            <attr name="label">
                <string>exit</string>
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
        <edge from="n2" to="n4">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n2" to="n24">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n2" to="n15">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>let:index = 1</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>let:value = 2</string>
            </attr>
        </edge>
        <edge from="n16" to="n23">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 738 1066 738 1106 797 1122 12</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>let:value = 1</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:ArrayInitializer</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>let:exprLastIndex = 2</string>
            </attr>
        </edge>
        <edge from="n22" to="n18">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n22" to="n24">
            <attr name="label">
                <string>flow</string>
            </attr>
            <attr name="layout">
                <string>500 0 598 745 546 808 658 838 12</string>
            </attr>
        </edge>
        <edge from="n22" to="n17">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n22" to="n20">
            <attr name="label">
                <string>expr</string>
            </attr>
            <attr name="layout">
                <string>500 0 647 717 585 734 585 677 12</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>let:value = 1</string>
            </attr>
        </edge>
        <edge from="n19" to="n16">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>let:name = &quot;arr1d&quot;</string>
            </attr>
        </edge>
        <edge from="n24" to="n22">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n24" to="n14">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n24" to="n19">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:ArrayInitializer</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:exprLastIndex = 1</string>
            </attr>
        </edge>
        <edge from="n9" to="n7">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n9" to="n23">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n9" to="n4">
            <attr name="label">
                <string>flow</string>
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
        <edge from="n12" to="n17">
            <attr name="label">
                <string>flow</string>
            </attr>
        </edge>
        <edge from="n12" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
    </graph>
</gxl>
