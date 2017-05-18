<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start-3p">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n5">
            <attr name="layout">
                <string>495 73 19 16</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>139 184 48 16</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>321 188 48 16</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>491 139 29 16</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>415 139 29 16</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>567 140 29 16</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>227 83 48 16</string>
            </attr>
        </node>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n4" from="n5">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n3" from="n5">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>Process</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>Process</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>Ids</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>Process</string>
            </attr>
        </edge>
        <edge to="n6" from="n5">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n2" from="n1">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n0" from="n2">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
    </graph>
</gxl>
