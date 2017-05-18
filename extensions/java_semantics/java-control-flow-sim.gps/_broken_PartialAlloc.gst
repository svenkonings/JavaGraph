<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="_broken_PartialAlloc">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>302 351 43 34</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>218 307 43 34</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>847 168 43 34</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>564 168 222 142</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>79 168 143 88</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>430 0 109 34</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>493 462 158 70</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>413 75 143 52</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>891 462 213 70</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>616 351 111 70</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>712 462 139 70</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>945 351 105 70</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>406 573 139 52</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>405 351 150 52</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>665 573 75 70</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>40 297 118 52</string>
            </attr>
        </node>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:Exit</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>flag:start</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:argumentLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:name = &quot;main&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:signature = &quot;([Ljava/lang/String;)V&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:static = true</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:stmtLastIndex = 0</string>
            </attr>
        </edge>
        <edge from="n4" to="n12">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n4" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n4" to="n2">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n4" to="n11">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:name = &quot;PartialAlloc&quot;</string>
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
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n7" to="n9">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:ArrayAllocExpr</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>flag:build</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>let:dimensionLastIndex = 1</string>
            </attr>
        </edge>
        <edge from="n13" to="n10">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n13" to="n15">
            <attr name="label">
                <string>dimension</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>exit</string>
            </attr>
            <attr name="layout">
                <string>500 0 572 497 605 573 671 386 12</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:name = &quot;PartialAlloc&quot;</string>
            </attr>
        </edge>
        <edge from="n9" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n9" to="n6">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge from="n9" to="n6">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n9" to="n4">
            <attr name="label">
                <string>method</string>
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
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>let:name = &quot;arr2d&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n13">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n11" to="n2">
            <attr name="label">
                <string>exit</string>
            </attr>
        </edge>
        <edge from="n11" to="n14">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:dimensions = 2</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
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
        <edge from="n12" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>let:resolvedType = &quot;int&quot;</string>
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
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>let:index = 0</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>let:value = 2</string>
            </attr>
        </edge>
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
    </graph>
</gxl>
