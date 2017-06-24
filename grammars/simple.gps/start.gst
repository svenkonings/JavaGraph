<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>464 320 25 18</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>472 263 8 18</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>524 264 8 18</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:A</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>x</string>
            </attr>
            <attr name="layout">
                <string>406 -7 477 329 476 272 11</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:B</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>z</string>
            </attr>
            <attr name="layout">
                <string>362 -11 476 272 528 273 11</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:C</string>
            </attr>
        </edge>
    </graph>
</gxl>
