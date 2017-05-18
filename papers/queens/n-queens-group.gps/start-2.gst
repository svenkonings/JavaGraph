<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start-2">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>80 55 8 15</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>163 54 8 15</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>163 124 8 15</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>80 123 8 15</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>:h</string>
            </attr>
        </edge>
        <edge from="n0" to="n3">
            <attr name="label">
                <string>:v</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>:v</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge from="n2" to="n0">
            <attr name="label">
                <string>:ld</string>
            </attr>
        </edge>
        <edge from="n3" to="n2">
            <attr name="label">
                <string>:h</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge from="n3" to="n1">
            <attr name="label">
                <string>:rd</string>
            </attr>
        </edge>
    </graph>
</gxl>
