<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="attribute-graph">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n616">
            <attr name="layout">
                <string>244 66 85 21</string>
            </attr>
        </node>
        <node id="n619">
            <attr name="layout">
                <string>66 65 76 21</string>
            </attr>
        </node>
        <node id="n617">
            <attr name="layout">
                <string>59 149 80 21</string>
            </attr>
        </node>
        <node id="n618">
            <attr name="layout">
                <string>245 146 65 21</string>
            </attr>
        </node>
        <edge to="n618" from="n616">
            <attr name="label">
                <string>balance</string>
            </attr>
        </edge>
        <edge to="n616" from="n616">
            <attr name="label">
                <string>type:Account</string>
            </attr>
        </edge>
        <edge to="n619" from="n616">
            <attr name="label">
                <string>belongs</string>
            </attr>
        </edge>
        <edge to="n619" from="n619">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n617" from="n619">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n617" from="n617">
            <attr name="label">
                <string>string:&quot;John&quot;</string>
            </attr>
        </edge>
        <edge to="n618" from="n618">
            <attr name="label">
                <string>real:100.0</string>
            </attr>
        </edge>
    </graph>
</gxl>
