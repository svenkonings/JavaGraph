<?xml version="1.0" encoding="UTF-8"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph id="graph" role="graph" edgeids="false" edgemode="directed">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n27"/>
        <node id="n22"/>
        <node id="n15"/>
        <node id="n19"/>
        <node id="n2"/>
        <node id="n21"/>
        <node id="n9"/>
        <node id="n5"/>
        <node id="n10"/>
        <node id="n23"/>
        <node id="n20"/>
        <node id="n14"/>
        <node id="n16"/>
        <node id="n8"/>
        <node id="n18"/>
        <node id="n1"/>
        <node id="n26"/>
        <node id="n3"/>
        <node id="n4"/>
        <node id="n25"/>
        <node id="n17"/>
        <node id="n0"/>
        <node id="n29"/>
        <node id="n12"/>
        <node id="n6"/>
        <node id="n28"/>
        <node id="n24"/>
        <edge from="n24" to="n22">
            <attr name="label">
                <string>lhs</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>string:"int"</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:Assign</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n26" to="n9">
            <attr name="label">
                <string>stmtLastIndex</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n27" to="n27">
            <attr name="label">
                <string>string:"method"</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:ExplicitConsCall</string>
            </attr>
        </edge>
        <edge from="n26" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n21" to="n21">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n28" to="n1">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n26" to="n18">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n18" to="n16">
            <attr name="label">
                <string>initialization</string>
            </attr>
        </edge>
        <edge from="n29" to="n29">
            <attr name="label">
                <string>flag:startingPoint</string>
            </attr>
        </edge>
        <edge from="n16" to="n14">
            <attr name="label">
                <string>dimension</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:"()V"</string>
            </attr>
        </edge>
        <edge from="n24" to="n9">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n18" to="n8">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n26" to="n27">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n18" to="n19">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n20" to="n19">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n18" to="n18">
            <attr name="label">
                <string>type:LocalDecl</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:ConsDecl</string>
            </attr>
        </edge>
        <edge from="n24" to="n23">
            <attr name="label">
                <string>expr</string>
            </attr>
        </edge>
        <edge from="n26" to="n24">
            <attr name="label">
                <string>stmt</string>
            </attr>
        </edge>
        <edge from="n29" to="n28">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n21" to="n17">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n20" to="n20">
            <attr name="label">
                <string>type:SingleNameRef</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:"ArrayReference"</string>
            </attr>
        </edge>
        <edge from="n26" to="n26">
            <attr name="label">
                <string>type:MethodDecl</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>string:"void"</string>
            </attr>
        </edge>
        <edge from="n22" to="n22">
            <attr name="label">
                <string>type:ArrayRef</string>
            </attr>
        </edge>
        <edge from="n14" to="n14">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n14" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n22" to="n20">
            <attr name="label">
                <string>receiver</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n1" to="n0">
            <attr name="label">
                <string>consCall</string>
            </attr>
        </edge>
        <edge from="n19" to="n19">
            <attr name="label">
                <string>string:"array"</string>
            </attr>
        </edge>
        <edge from="n17" to="n17">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n20" to="n18">
            <attr name="label">
                <string>refersTo</string>
            </attr>
        </edge>
        <edge from="n16" to="n16">
            <attr name="label">
                <string>type:ArrayAllocExpr</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n24" to="n25">
            <attr name="label">
                <string>operator</string>
            </attr>
        </edge>
        <edge from="n22" to="n21">
            <attr name="label">
                <string>position</string>
            </attr>
        </edge>
        <edge from="n18" to="n17">
            <attr name="label">
                <string>index</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>bool:false</string>
            </attr>
        </edge>
        <edge from="n28" to="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n29" to="n29">
            <attr name="label">
                <string>type:CompUnitDecl</string>
            </attr>
        </edge>
        <edge from="n28" to="n26">
            <attr name="label">
                <string>method</string>
            </attr>
        </edge>
        <edge from="n26" to="n5">
            <attr name="label">
                <string>returnType</string>
            </attr>
        </edge>
        <edge from="n28" to="n28">
            <attr name="label">
                <string>type:TypeDecl</string>
            </attr>
        </edge>
        <edge from="n23" to="n17">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n16" to="n17">
            <attr name="label">
                <string>dimensionLastIndex</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n8" to="n10">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
        <edge from="n23" to="n23">
            <attr name="label">
                <string>type:IntLit</string>
            </attr>
        </edge>
        <edge from="n25" to="n25">
            <attr name="label">
                <string>string:"="</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>dimensions</string>
            </attr>
        </edge>
        <edge from="n16" to="n12">
            <attr name="label">
                <string>type</string>
            </attr>
        </edge>
        <edge from="n14" to="n15">
            <attr name="label">
                <string>value</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:TypeRef</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>int:42</string>
            </attr>
        </edge>
        <edge from="n26" to="n4">
            <attr name="label">
                <string>static</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>signature</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>resolvedType</string>
            </attr>
        </edge>
    </graph>
</gxl>
