<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="regular-start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>188 274 76 21</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>183 70 76 36</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>183 134 76 36</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>185 204 76 36</string>
            </attr>
        </node>
        <edge to="n2" from="n3">
            <attr name="label">
                <string>father</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>flag:Gerrit</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n0" from="n1">
            <attr name="label">
                <string>father</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>flag:Wim</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>flag:Arend</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>son</string>
            </attr>
            <attr name="layout">
                <string>500 0 223 222 165 257 202 274 12</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n1" from="n2">
            <attr name="label">
                <string>father</string>
            </attr>
        </edge>
    </graph>
</gxl>
