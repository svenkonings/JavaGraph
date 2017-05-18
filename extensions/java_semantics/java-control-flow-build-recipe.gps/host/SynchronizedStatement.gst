<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.SynchronizedStatement">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n7">
            <attr name="layout">
                <string>389 814 113 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>392 672 108 85</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>333 8 104 51</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>351 240 67 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>23 22 19 19</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>25 30 19 19</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>193 564 113 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>116 240 84 85</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>274 116 221 68</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>387 564 118 51</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>552 382 116 34</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>59 22 19 19</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>58 16 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>326 348 118 51</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 382 215 51</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>44 37 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>27 76 19 19</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>499 240 221 85</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>50 29 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>32 48 19 19</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>496 456 82 51</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>282 456 133 51</string>
            </attr>
        </node>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n7" to="n3">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n7" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:MessageSend</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n8" to="n7">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n8" to="n10">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n8" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n22" to="n21">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:Initializer</string>
            </attr>
        </edge>
        <edge from="n17" to="n16">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n17" to="n15">
            <attr name="label">
                <string>block</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>string:&quot;SynchronizedStatement&quot;</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n6" to="n3">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n6" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n3" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n3" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n3" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n21" to="n17">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n21" to="n16">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n21" to="n3">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n21" to="n20">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n21" to="n19">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:Block</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;o&quot;</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:Block</string>
            </attr>
        </edge>
        <edge from="n15" to="n14">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n15" to="n16">
            <attr name="label">
                <string>stmtLastIndex</string>
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
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:&quot;notify&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n18">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n19" to="n20">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n19" to="n5">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n19" to="n10">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;java.lang.Object&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:EmptyStmt</string>
            </attr>
        </edge>
        <edge from="n14" to="n16">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:SynchronizedStmt</string>
            </attr>
        </edge>
        <edge from="n13" to="n6">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>block</string>
            </attr>
        </edge>
        <edge from="n13" to="n12">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
    </graph>
</gxl>
