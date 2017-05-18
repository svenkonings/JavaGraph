<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="FeatureModelABCDE_3Products">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>210 320 81 31</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>190 70 131 51</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>120 230 131 51</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>120 150 131 51</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>634 270 43 36</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>544 189 43 36</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>135 269 41 36</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>260 150 131 51</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>136 372 44 36</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>629 369 41 36</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>260 230 131 51</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>10 10 111 31</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>210 10 101 31</string>
            </attr>
        </node>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;B&quot;</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>string:&quot;C&quot;</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:MandOptFeature</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:MandOptFeature</string>
            </attr>
        </edge>
        <edge to="n12" from="n1">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>string:&quot;D&quot;</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:MandOptFeature</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:FeatureTree</string>
            </attr>
        </edge>
        <edge to="n9" from="n0">
            <attr name="label">
                <string>feature2</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:MandOptFeature</string>
            </attr>
        </edge>
        <edge to="n6" from="n8">
            <attr name="label">
                <string>tree</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:MandOptFeature</string>
            </attr>
        </edge>
        <edge to="n12" from="n0">
            <attr name="label">
                <string>feature1</string>
            </attr>
        </edge>
        <edge to="n4" from="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Excludes</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:FeatureModel</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>string:&quot;E&quot;</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>string:&quot;A&quot;</string>
            </attr>
        </edge>
        <edge to="n0" from="n8">
            <attr name="label">
                <string>constraint</string>
            </attr>
            <attr name="layout">
                <string>500 0 65 25 60 340 250 335 11</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>mandatory</string>
            </attr>
        </edge>
        <edge to="n11" from="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n9" from="n2">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n7" from="n6">
            <attr name="label">
                <string>root</string>
            </attr>
        </edge>
        <edge to="n1" from="n7">
            <attr name="label">
                <string>mandatory</string>
            </attr>
        </edge>
        <edge to="n10" from="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
    </graph>
</gxl>
