<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="basic-graph">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n38352">
            <attr name="layout">
                <string>279 154 47 30</string>
            </attr>
        </node>
        <node id="n38351">
            <attr name="layout">
                <string>149 162 42 15</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>290 232 31 15</string>
            </attr>
        </node>
        <edge to="n38352" from="n38352">
            <attr name="label">
                <string>flag:reserved</string>
            </attr>
        </edge>
        <edge to="n0" from="n38352">
            <attr name="label">
                <string>cites</string>
            </attr>
        </edge>
        <edge to="n38352" from="n38352">
            <attr name="label">
                <string>type:Book</string>
            </attr>
        </edge>
        <edge to="n38351" from="n38351">
            <attr name="label">
                <string>type:Library</string>
            </attr>
        </edge>
        <edge to="n0" from="n38351">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n38352" from="n38351">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Book</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>cites</string>
            </attr>
            <attr name="layout">
                <string>344 11 305 250 305 273 359 240 326 240 14</string>
            </attr>
        </edge>
    </graph>
</gxl>
