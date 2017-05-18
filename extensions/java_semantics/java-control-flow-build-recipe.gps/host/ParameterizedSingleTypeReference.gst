<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.ParameterizedSingleTypeReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n21">
            <attr name="layout">
                <string>339 8 104 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>50 224 293 85</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>18 17 19 19</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>24 18 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>24 28 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>139 366 116 34</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>470 630 215 68</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>43 30 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>36 29 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>427 224 194 102</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>19 49 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>535 382 86 68</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>38 59 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>315 382 139 51</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>21 30 19 19</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>422 506 312 68</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>44 63 19 19</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>244 116 293 51</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>75 61 19 19</string>
            </attr>
        </node>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n21" to="n20">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
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
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;java.lang.Object&quot;</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>string:&quot;(Ljava/util/Set;)V&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>string:&quot;set&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
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
        <edge from="n8" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n17" to="n12">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n17" to="n19">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n17" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n17" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n17" to="n15">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n15" to="n16">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n15" to="n11">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n15" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;java.util.Set&lt;java.lang.Object&gt;&quot;</string>
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
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;void&quot;</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n11" to="n13">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>typeArgument</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>typeArgumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>string:&quot;method&quot;</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n20" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n20" to="n17">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n20" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;ParameterizedSingleTypeReference&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
