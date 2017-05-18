<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.QualifiedThisReference">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n20">
            <attr name="layout">
                <string>516 8 104 51</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>877 224 210 85</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>400 224 114 68</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>25 15 19 19</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>924 366 116 34</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>27 23 19 19</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>38 28 19 19</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>20 30 19 19</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>346 580 344 51</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>463 116 210 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>60 22 19 19</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>22 27 19 19</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 490 344 51</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>306 348 127 85</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>25 58 19 19</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>78 73 19 19</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>474 490 87 34</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>631 490 116 34</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>514 348 350 85</string>
            </attr>
        </node>
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
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n16" to="n15">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n16" to="n17">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n16" to="n8">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n16" to="n18">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n13" to="n14">
            <attr name="label">
                <string>fieldLastIndex</string>
            </attr>
        </edge>
        <edge from="n13" to="n10">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n13" to="n6">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>string:&quot;()V&quot;</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:&quot;main.classes.QualifiedThisReference&quot;</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n3" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n3" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n19" to="n17">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n19" to="n16">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n19" to="n13">
            <attr name="label">
                <string>memberType</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:&quot;Class1&quot;</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>string:&quot;QualifiedThisReference&quot;</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n0" to="n19">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:FieldDecl</string>
            </attr>
        </edge>
        <edge from="n6" to="n0">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n6" to="n14">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n6" to="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n5">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n6" to="n8">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>string:&quot;reference&quot;</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;(Lmain/classes/QualifiedThisReference;)V&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:QualThisRef</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>qualification</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n10" to="n12">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n10" to="n8">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n10" to="n9">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
    </graph>
</gxl>
