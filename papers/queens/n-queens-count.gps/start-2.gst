<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start-2">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>105 102 8 15</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>25 22 8 15</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>25 102 8 15</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>105 22 8 15</string>
            </attr>
        </node>
        <edge to="n0" from="n3">
            <attr name="label">
                <string>ld</string>
            </attr>
        </edge>
        <edge to="n1" from="n3">
            <attr name="label">
                <string>v</string>
            </attr>
        </edge>
        <edge to="n2" from="n3">
            <attr name="label">
                <string>h</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>v</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>ld</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>h</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge to="n1" from="n2">
            <attr name="label">
                <string>rd</string>
            </attr>
        </edge>
        <edge to="n0" from="n2">
            <attr name="label">
                <string>v</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>h</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
        <edge to="n2" from="n1">
            <attr name="label">
                <string>rd</string>
            </attr>
        </edge>
        <edge to="n0" from="n1">
            <attr name="label">
                <string>h</string>
            </attr>
        </edge>
        <edge to="n3" from="n1">
            <attr name="label">
                <string>v</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:S</string>
            </attr>
        </edge>
    </graph>
</gxl>
