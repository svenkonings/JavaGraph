<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.OR_OR_Expression">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n11">
            <attr name="layout">
                <string>779 490 83 51</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>15 15 19 19</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>463 8 104 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>20 24 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>294 382 79 51</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>25 30 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>23 32 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>434 382 164 51</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>794 240 185 85</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 382 164 51</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>57 31 19 19</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>422 116 185 68</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>70 42 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>678 382 92 51</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>829 382 116 34</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>78 83 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>60 62 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>170 240 84 85</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>77 72 19 19</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>606 240 84 85</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>44 90 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>585 490 113 51</string>
            </attr>
        </node>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:FalseLit</string>
            </attr>
        </edge>
        <edge from="n11" to="n7">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n23" to="n20">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;boolean&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:TrueLit</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n8" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n17" to="n16">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n17" to="n19">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n17" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>name</string>
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
        <edge from="n7" to="n7">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n20" to="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n20" to="n14">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n20" to="n17">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n20" to="n22">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n20" to="n5">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>string:&quot;OR_OR_Expression&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:BinaryExpr</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>left</string>
            </attr>
        </edge>
        <edge from="n12" to="n11">
            <attr name="label">
                <string>right</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>operator</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>string:&quot;||&quot;</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>string:&quot;b1&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n21">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n5" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n5" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n14" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n14" to="n22">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n14" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n14" to="n15">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n12">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;b0&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n10" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n5">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
    </graph>
</gxl>
