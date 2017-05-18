<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="newGraph" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n6350"/>
        <node id="n6347"/>
        <node id="n6349"/>
        <node id="n6348"/>
        <edge from="n6348" to="n6348">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n6349" to="n6348">
            <attr name="label">
                <string>top</string>
            </attr>
        </edge>
        <edge from="n6349" to="n6349">
            <attr name="label">
                <string>Stack</string>
            </attr>
        </edge>
        <edge from="n6348" to="n6348">
            <attr name="label">
                <string>Cell</string>
            </attr>
        </edge>
        <edge from="n6347" to="n6347">
            <attr name="label">
                <string>Var</string>
            </attr>
        </edge>
        <edge from="n6348" to="n6347">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n6349" to="n6349">
            <attr name="label">
                <string>&lt;Name&gt;</string>
            </attr>
        </edge>
        <edge from="n6350" to="n6350">
            <attr name="label">
                <string>Instr</string>
            </attr>
        </edge>
        <edge from="n6348" to="n6350">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
    </graph>
</gxl>
