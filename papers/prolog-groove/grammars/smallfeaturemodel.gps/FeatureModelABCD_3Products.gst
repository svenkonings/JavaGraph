<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="FeatureModelABCD_3Products">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n9">
            <attr name="layout">
                <string>342 270 77 31</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>66 114 103 31</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>629 369 41 33</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>544 189 42 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>634 270 41 33</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>447 270 77 31</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>342 188 67 31</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>358 111 92 31</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>135 269 41 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>253 269 77 31</string>
            </attr>
        </node>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n7" from="n6">
            <attr name="label">
                <string>root</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>string:&quot;A&quot;</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>xor</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>string:&quot;D&quot;</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;B&quot;</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:FeatureTree</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:FeatureModel</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>string:&quot;C&quot;</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n4" from="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n6" from="n8">
            <attr name="label">
                <string>tree</string>
            </attr>
        </edge>
        <edge to="n1" from="n7">
            <attr name="label">
                <string>xor</string>
            </attr>
            <attr name="layout">
                <string>379 -10 364 214 302 274 11</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Xor</string>
            </attr>
        </edge>
        <edge to="n9" from="n7">
            <attr name="label">
                <string>xor</string>
            </attr>
        </edge>
        <edge to="n10" from="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
    </graph>
</gxl>
