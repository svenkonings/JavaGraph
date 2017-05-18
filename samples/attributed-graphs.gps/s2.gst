<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="s2">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>103 59 98 30</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>292 113 194 30</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>282 18 143 30</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>265 218 188 30</string>
            </attr>
        </node>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>let:order = add(0, 1)</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>let:length = add(add(add(0, 1), 1), 1)</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Buffer</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge to="n8" from="n0">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge to="n11" from="n0">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>let:order = add(add(0, 1), 1)</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>let:order = add(add(add(0, 1), 1), 1)</string>
            </attr>
        </edge>
    </graph>
</gxl>
