<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.SingleNameReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n11">
            <attr name="layout">
                <string>499 239 84 85</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>435 8 104 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>20 17 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>259 380 61 51</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>28 24 19 19</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>380 380 129 51</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>383 115 208 68</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 380 129 51</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>47 19 19 19</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>37 51 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>39 37 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>41 63 19 19</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>762 380 116 34</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>54 30 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>143 239 84 85</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>716 239 208 85</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>40 19 19 19</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>589 380 113 51</string>
            </attr>
        </node>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n11" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n11" to="n18">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n11" to="n10">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n19" to="n17">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;int&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>int:0</string>
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
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n17" to="n15">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n17" to="n11">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n17" to="n5">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n17" to="n14">
            <attr name="label">
                <string>method</string>
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
        <edge from="n18" to="n18">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;j&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>string:&quot;SingleNameReference&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n5" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n5" to="n4">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n5" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n14" to="n16">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n14" to="n7">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n14" to="n13">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n14" to="n15">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:&quot;i&quot;</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n10" to="n5">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n10" to="n6">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
    </graph>
</gxl>
