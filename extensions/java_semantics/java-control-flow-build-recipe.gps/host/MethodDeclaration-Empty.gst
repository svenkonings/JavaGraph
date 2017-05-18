<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MethodDeclaration-Empty">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n34">
            <attr name="layout">
                <string>260 8 104 51</string>
            </attr>
        </node>
        <node id="n33">
            <attr name="layout">
                <string>279 115 67 34</string>
            </attr>
        </node>
        <node id="n30">
            <attr name="layout">
                <string>268 222 88 34</string>
            </attr>
        </node>
        <edge from="n34" to="n34">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n34" to="n34">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n34" to="n33">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n33" to="n33">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n33" to="n30">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n30" to="n30">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
    </graph>
</gxl>
