<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>94 96 51 46</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>176 96 51 46</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>37 171 278 31</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>39 29 286 31</string>
            </attr>
        </node>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Node</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>flag:red</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>color:0,255,0</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Node</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>flag:blue</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>rem:This node is implicitly coloured by its node type</string>
            </attr>
        </edge>
        <edge to="n0" from="n2">
            <attr name="label">
                <string>node</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>rem:</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>rem:This node is explicitly coloured by a color: aspect</string>
            </attr>
        </edge>
        <edge to="n1" from="n3">
            <attr name="label">
                <string>node</string>
            </attr>
        </edge>
    </graph>
</gxl>
