<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="s2">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n4">
            <attr name="layout">
                <string>245 128 31 21</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>16 126 31 21</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>137 212 31 21</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>230 24 50 21</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>139 23 31 21</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>132 126 48 21</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>235 216 50 21</string>
            </attr>
        </node>
        <edge to="n8" from="n4">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n6" from="n5">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n5" from="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n10" from="n4">
            <attr name="label">
                <string>val</string>
            </attr>
        </edge>
        <edge to="n9" from="n6">
            <attr name="label">
                <string>val</string>
            </attr>
        </edge>
        <edge to="n6" from="n7">
            <attr name="label">
                <string>first</string>
            </attr>
        </edge>
        <edge to="n4" from="n7">
            <attr name="label">
                <string>last</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Object</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>type:Object</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Buffer</string>
            </attr>
        </edge>
        <edge to="n4" from="n6">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
    </graph>
</gxl>
