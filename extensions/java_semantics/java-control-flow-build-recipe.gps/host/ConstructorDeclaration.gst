<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.ConstructorDeclaration">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n10">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>19 18 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>232 400 236 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>548 400 116 34</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>349 224 214 119</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>15 18 19 19</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>30 22 19 19</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>699 524 164 51</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>30 53 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>32 53 19 19</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>404 8 104 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>78 400 73 68</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>744 400 74 68</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>55 28 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 524 129 51</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>349 116 214 51</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>90 26 19 19</string>
            </attr>
        </node>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>string:&quot;boolean&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;b&quot;</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>bool:false</string>
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
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n14" to="n17">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n14" to="n8">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n14" to="n15">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n3">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n14" to="n12">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n14" to="n5">
            <attr name="label">
                <string>thrownException</string>
            </attr>
        </edge>
        <edge from="n14" to="n18">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
        </edge>
        <edge from="n14" to="n18">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n14" to="n16">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>string:&quot;ConstructorDeclaration&quot;</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n9" to="n10">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>string:&quot;(I)V&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
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
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Argument</string>
            </attr>
        </edge>
        <edge from="n3" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n18">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n12" to="n9">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n12" to="n18">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
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
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n14">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n19" to="n15">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;java.lang.Exception&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
