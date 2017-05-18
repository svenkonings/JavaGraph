<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="start4" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n86322"/>
        <node id="n86319"/>
        <node id="n86320"/>
        <node id="n86323"/>
        <node id="n86318"/>
        <node id="n86321"/>
        <node id="n86317"/>
        <node id="n86324"/>
        <edge from="n86320" to="n86320">
            <attr name="label">
                <string>Pointcut</string>
            </attr>
        </edge>
        <edge from="n86320" to="n86323">
            <attr name="label">
                <string>advice</string>
            </attr>
        </edge>
        <edge from="n86318" to="n86318">
            <attr name="label">
                <string>do</string>
            </attr>
        </edge>
        <edge from="n86324" to="n86324">
            <attr name="label">
                <string>Identifier</string>
            </attr>
        </edge>
        <edge from="n86323" to="n86323">
            <attr name="label">
                <string>Advice</string>
            </attr>
        </edge>
        <edge from="n86322" to="n86322">
            <attr name="label">
                <string>proceed</string>
            </attr>
        </edge>
        <edge from="n86320" to="n86318">
            <attr name="label">
                <string>matchstatic</string>
            </attr>
        </edge>
        <edge from="n86318" to="n86318">
            <attr name="label">
                <string>Instr</string>
            </attr>
        </edge>
        <edge from="n86323" to="n86324">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n86323" to="n86317">
            <attr name="label">
                <string>body</string>
            </attr>
        </edge>
        <edge from="n86323" to="n86323">
            <attr name="label">
                <string>Method</string>
            </attr>
        </edge>
        <edge from="n86317" to="n86317">
            <attr name="label">
                <string>MethodBody</string>
            </attr>
        </edge>
        <edge from="n86319" to="n86319">
            <attr name="label">
                <string>Instr</string>
            </attr>
        </edge>
        <edge from="n86321" to="n86321">
            <attr name="label">
                <string>do</string>
            </attr>
        </edge>
    </graph>
</gxl>
