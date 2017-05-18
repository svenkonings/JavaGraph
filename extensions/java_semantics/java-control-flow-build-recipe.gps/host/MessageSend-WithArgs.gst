<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="host.MessageSend-WithArgs">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>551 25 19 19</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>142 347 151 85</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>487 442 19 19</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>164 8 104 51</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>346 484 54 34</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>70 373 19 19</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>314 662 19 19</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>155 223 124 68</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>415 243 19 19</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>886 36 19 19</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>138 115 156 51</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>169 489 61 68</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>50 489 61 68</string>
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
        <edge from="n23" to="n22">
            <attr name="label">
                <string>argumentLastIndex</string>
            </attr>
            <attr name="layout">
                <string>195 -63 252 424 324 671 11</string>
            </attr>
        </edge>
        <edge from="n23" to="n21">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n23" to="n0">
            <attr name="label">
                <string>argument</string>
            </attr>
        </edge>
        <edge from="n23" to="n14">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n23" to="n20">
            <attr name="label">
                <string>receiver</string>
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
        <edge from="n22" to="n22">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n23">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n24" to="n17">
            <attr name="label">
                <string>stmtLastIndex</string>
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
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n21" to="n22">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n21" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n0" to="n22">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n0" to="n17">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
    </graph>
</gxl>
