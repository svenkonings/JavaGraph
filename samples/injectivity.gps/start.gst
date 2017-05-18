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
                <string>455 283 18 21</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>331 209 19 21</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>457 183 18 21</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>334 352 18 21</string>
            </attr>
        </node>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:B</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>c</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:B</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>b</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:A</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>c</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:B</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>b</string>
            </attr>
        </edge>
    </graph>
</gxl>
