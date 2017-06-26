<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>192 185 29 31</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>277 47 27 33</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>266 182 47 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>191 46 29 31</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>243 114 40 33</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>372 46 151 31</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>370 181 153 31</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>369 113 160 31</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>19 109 155 46</string>
            </attr>
        </node>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:A</string>
            </attr>
        </edge>
        <edge to="n2" from="n3">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge to="n4" from="n3">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:A</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>string:&quot;a&quot;</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>rem:An int-typed x-attribute</string>
            </attr>
        </edge>
        <edge to="n1" from="n5">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>rem:A bool-typed x-attribute</string>
            </attr>
        </edge>
        <edge to="n4" from="n6">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>rem:A string-typed x-attribute</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>rem:x-edges also allowed
between arbitrary nodes</string>
            </attr>
        </edge>
        <edge to="n0" from="n8">
            <attr name="label">
                <string>source</string>
            </attr>
        </edge>
        <edge to="n3" from="n8">
            <attr name="label">
                <string>target</string>
            </attr>
        </edge>
    </graph>
</gxl>
