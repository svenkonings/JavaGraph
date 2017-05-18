<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <node id="n2"/>
        <node id="n3"/>
        <node id="n0"/>
        <node id="n1"/>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>x</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>z</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>global</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>y</string>
            </attr>
        </edge>
    </graph>
</gxl>
