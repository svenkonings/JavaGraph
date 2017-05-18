<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="s1">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>337 113 104 30</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>103 59 98 30</string>
            </attr>
        </node>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Buffer</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>let:length = int:add(int:0, int:1)</string>
            </attr>
        </edge>
        <edge to="n7" from="n1">
            <attr name="label">
                <string>entry</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>let:order = int:add(int:0, int:1)</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Cell</string>
            </attr>
        </edge>
    </graph>
</gxl>
