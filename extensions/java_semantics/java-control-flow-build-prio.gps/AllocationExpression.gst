<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="AllocationExpression">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1"/>
        <node id="n18">
            <attr name="layout">
                <string>478 0 117 49</string>
            </attr>
        </node>
        <node id="n11"/>
        <node id="n17">
            <attr name="layout">
                <string>429 89 215 65</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>40 315 257 49</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>592 194 215 81</string>
            </attr>
        </node>
        <node id="n16"/>
        <node id="n5">
            <attr name="layout">
                <string>567 420 137 65</string>
            </attr>
        </node>
        <node id="n6"/>
        <node id="n10">
            <attr name="layout">
                <string>266 194 103 81</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>250 420 257 49</string>
            </attr>
        </node>
        <node id="n9"/>
        <node id="n8"/>
        <node id="n13">
            <attr name="layout">
                <string>636 315 127 33</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>357 315 239 65</string>
            </attr>
        </node>
        <node id="n12"/>
        <node id="n15"/>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>string:&quot;java.lang.Throwable&quot;</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge to="n17" from="n18">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>string:&quot;f&quot;</string>
            </attr>
        </edge>
        <edge to="n14" from="n17">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge to="n9" from="n17">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge to="n15" from="n17">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n10" from="n17">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge to="n13" from="n14">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge to="n14" from="n14">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge to="n16" from="n14">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge to="n15" from="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n12" from="n14">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge to="n16" from="n16">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge to="n9" from="n5">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>type:StringLit</string>
            </attr>
        </edge>
        <edge to="n6" from="n5">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>string:&quot;message&quot;</string>
            </attr>
        </edge>
        <edge to="n0" from="n10">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge to="n12" from="n10">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge to="n7" from="n10">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge to="n9" from="n10">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge to="n11" from="n10">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge to="n1" from="n3">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>string:&quot;(Ljava/lang/String;)V&quot;</string>
            </attr>
        </edge>
        <edge to="n13" from="n13">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge to="n8" from="n7">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge to="n9" from="n7">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:AllocExpr</string>
            </attr>
        </edge>
        <edge to="n3" from="n7">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge to="n15" from="n15">
            <attr name="label">
                <string>string:&quot;AllocationExpression&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
