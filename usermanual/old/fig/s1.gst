<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <node id="n10"/>
        <node id="n11"/>
        <node id="n13"/>
        <node id="n12"/>
        <node id="n14"/>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>first</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n13" to="n11">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n14" to="n13">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>Object</string>
            </attr>
        </edge>
        <edge from="n11" to="n14">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>val</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>last</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>Buffer</string>
            </attr>
        </edge>
    </graph>
</gxl>
