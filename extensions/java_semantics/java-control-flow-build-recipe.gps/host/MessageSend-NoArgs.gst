<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MessageSend-NoArgs">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>490 26 141 17</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>76 371 103 34</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>482 443 28 17</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>76 8 104 51</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>101 487 54 34</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>24 374 110 17</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>84 239 88 34</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>369 244 110 17</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>867 37 57 17</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>94 123 67 34</string>
            </attr>
        </node>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:&quot;MessageSend&quot;</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:MessageSend</string>
            </attr>
        </edge>
        <edge from="n23" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n23" to="n20">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n23" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n27" to="n26">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:ThisRef</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>string:&quot;method1&quot;</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n17">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n24" to="n23">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n24" to="n25">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>string:&quot;method2&quot;</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge from="n26" to="n26">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n26" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n26" to="n24">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
    </graph>
</gxl>
