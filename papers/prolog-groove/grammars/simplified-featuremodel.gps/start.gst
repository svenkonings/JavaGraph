<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>270 150 91 48</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>120 230 71 32</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>200 310 80 32</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>210 10 51 32</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>136 372 44 36</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>544 189 43 36</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>190 70 71 32</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>634 270 43 36</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>135 269 41 36</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>270 230 91 51</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>629 369 41 36</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>120 150 71 32</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>70 10 61 32</string>
            </attr>
        </node>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>string:&quot;D&quot;</string>
            </attr>
        </edge>
        <edge to="n9" from="n0">
            <attr name="label">
                <string>feature2</string>
            </attr>
        </edge>
        <edge to="n0" from="n8">
            <attr name="label">
                <string>constraint</string>
            </attr>
            <attr name="layout">
                <string>235 -6 100 36 100 330 205 330 11</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:Tree</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;B&quot;</string>
            </attr>
        </edge>
        <edge to="n9" from="n2">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n12" from="n1">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n12" from="n0">
            <attr name="label">
                <string>feature1</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:Feature</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Feature</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:Feature</string>
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
        <edge to="n10" from="n10">
            <attr name="label">
                <string>string:&quot;E&quot;</string>
            </attr>
        </edge>
        <edge to="n6" from="n8">
            <attr name="label">
                <string>tree</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Feature</string>
            </attr>
        </edge>
        <edge to="n7" from="n6">
            <attr name="label">
                <string>root</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>string:&quot;C&quot;</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n11" from="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Model</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Feature</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>string:&quot;A&quot;</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>mandatory</string>
            </attr>
        </edge>
    </graph>
</gxl>
