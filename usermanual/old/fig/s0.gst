<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <node id="n59"/>
        <node id="n60"/>
        <node id="n61"/>
        <node id="n62"/>
        <edge from="n62" to="n62">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n60" to="n60">
            <attr name="label">
                <string>Buffer</string>
            </attr>
        </edge>
        <edge from="n59" to="n62">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n60" to="n61">
            <attr name="label">
                <string>first</string>
            </attr>
        </edge>
        <edge from="n61" to="n61">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n61" to="n59">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n60" to="n62">
            <attr name="label">
                <string>last</string>
            </attr>
        </edge>
        <edge from="n59" to="n59">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n62" to="n61">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
    </graph>
</gxl>
