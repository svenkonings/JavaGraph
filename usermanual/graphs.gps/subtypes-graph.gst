<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="subtypes-graph">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>140 118 46 21</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>141 175 46 21</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>139 61 47 21</string>
            </attr>
        </node>
        <edge to="n2" from="n1">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:B</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:D</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:A</string>
            </attr>
        </edge>
    </graph>
</gxl>
