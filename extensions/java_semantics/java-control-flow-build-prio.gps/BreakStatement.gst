<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n20"/>
        <node id="n16"/>
        <node id="n13"/>
        <node id="n14"/>
        <node id="n15"/>
        <node id="n8"/>
        <node id="n18"/>
        <node id="n1"/>
        <node id="n3"/>
        <node id="n4"/>
        <node id="n19"/>
        <node id="n17"/>
        <node id="n0"/>
        <node id="n6"/>
        <node id="n12"/>
        <node id="n2"/>
        <node id="n5"/>
        <node id="n9"/>
        <node id="n10"/>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>bool:true</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:BreakStmt</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>string:"method"</string>
            </attr>
        </edge>
        <edge from="n17" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>string:"loop"</string>
            </attr>
        </edge>
        <edge from="n14" to="n12">
            <attr name="label">
                <string>action</string>
            </attr>
        </edge>
        <edge from="n14" to="n8">
            <attr name="label">
                <string>condition</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:"()V"</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:Block</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n15">
            <attr name="label">
                <string>label</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n10" to="n13">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n19" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n17" to="n15">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n17" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>type:LabeledStmt</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n17" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n15" to="n14">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n17" to="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n17" to="n13">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:"BreakStatement"</string>
            </attr>
        </edge>
        <edge from="n20" to="n19">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n19" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TrueLit</string>
            </attr>
        </edge>
        <edge from="n15" to="n13">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:WhileStmt</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:"void"</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n19" to="n17">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n12" to="n13">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n15" to="n16">
            <attr name="label">
                <string>label</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
    </graph>
</gxl>
