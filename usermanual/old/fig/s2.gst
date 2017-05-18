<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <node id="n11"/>
        <node id="n10"/>
        <node id="n9"/>
        <node id="n8"/>
        <node id="n6"/>
        <node id="n7"/>
        <edge from="n11" to="n9">
            <attr name="label">
                <string>val</string>
            </attr>
        </edge>
        <edge from="n8" to="n10">
            <attr name="label">
                <string>val</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>Buffer</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n6" to="n8">
            <attr name="label">
                <string>last</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>Object</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>Object</string>
            </attr>
        </edge>
        <edge from="n8" to="n7">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n11" to="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n6" to="n11">
            <attr name="label">
                <string>first</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n7" to="n11">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
    </graph>
</gxl>
