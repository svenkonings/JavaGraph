<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.CastExpression">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n16">
            <attr name="layout">
                <string>-9 -9 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>20 20 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>211 116 164 68</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>209 240 84 85</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>34 16 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>157 472 141 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>397 382 116 34</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>241 8 104 51</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 382 141 51</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>30 39 19 19</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>272 382 66 34</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>373 240 164 85</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>379 472 73 51</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>31 67 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>35 18 19 19</string>
            </attr>
        </node>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;CastExpression&quot;</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n15" to="n16">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n15" to="n12">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n15" to="n8">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n8" to="n7">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n8" to="n10">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n8" to="n16">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n8" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;float&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n3" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
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
        <edge from="n17" to="n15">
            <attr name="label">
                <string>type</string>
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
        <edge from="n6" to="n6">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:CastExpr</string>
            </attr>
        </edge>
        <edge from="n7" to="n5">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n7" to="n3">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n12" to="n14">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n12" to="n11">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:DoubleLit</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;f&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
    </graph>
</gxl>
