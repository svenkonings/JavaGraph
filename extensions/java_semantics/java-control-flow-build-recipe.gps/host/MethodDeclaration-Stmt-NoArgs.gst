<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MethodDeclaration-Stmt-NoArgs">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n34">
            <attr name="layout">
                <string>107 8 104 51</string>
            </attr>
        </node>
        <node id="n33">
            <attr name="layout">
                <string>126 115 67 34</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>576 432 19 19</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>576 273 19 19</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>50 313 70 51</string>
            </attr>
        </node>
        <node id="n29">
            <attr name="layout">
                <string>200 313 70 51</string>
            </attr>
        </node>
        <node id="n30">
            <attr name="layout">
                <string>100 205 118 51</string>
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
        <edge from="n21" to="n21">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n21">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n29" to="n29">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n29" to="n18">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n30" to="n30">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n30" to="n29">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n30" to="n24">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n30" to="n18">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
    </graph>
</gxl>
