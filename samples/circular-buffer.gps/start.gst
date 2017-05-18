<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n4">
            <attr name="layout">
                <string>245 128 28 21</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>16 126 28 21</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>137 212 28 21</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>139 23 28 21</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>132 126 48 21</string>
            </attr>
        </node>
        <edge to="n5" from="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n6" from="n5">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n8" from="n4">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n6" from="n7">
            <attr name="label">
                <string>first</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>last</string>
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
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
    </graph>
</gxl>
