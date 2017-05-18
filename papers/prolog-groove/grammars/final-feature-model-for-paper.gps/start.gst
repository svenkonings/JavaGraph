<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n19">
            <attr name="layout">
                <string>240 380 83 32</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>640 120 115 36</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>250 0 83 32</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>420 260 43 32</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>10 10 102 32</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>470 430 83 32</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>480 470 114 36</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>370 190 83 32</string>
            </attr>
        </node>
        <node id="n34">
            <attr name="layout">
                <string>80 200 83 32</string>
            </attr>
        </node>
        <node id="n37">
            <attr name="layout">
                <string>360 520 60 36</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>10 390 112 32</string>
            </attr>
        </node>
        <node id="n29">
            <attr name="layout">
                <string>280 270 37 32</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>940 320 121 36</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>380 100 83 32</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>1090 150 135 36</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>390 350 83 32</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>200 420 71 36</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>40 100 37 32</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>1130 500 91 36</string>
            </attr>
        </node>
        <node id="n36">
            <attr name="layout">
                <string>310 440 83 32</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>1000 560 105 36</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>40 310 83 32</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>600 220 84 36</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>1210 260 154 36</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>130 370 100 36</string>
            </attr>
        </node>
        <node id="n33">
            <attr name="layout">
                <string>190 350 80 32</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>210 100 83 32</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>230 130 115 36</string>
            </attr>
        </node>
        <node id="n30">
            <attr name="layout">
                <string>310 250 77 36</string>
            </attr>
        </node>
        <node id="n35">
            <attr name="layout">
                <string>390 240 127 36</string>
            </attr>
        </node>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>string:&quot;ClimateCtrl&quot;</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n27" from="n27">
            <attr name="label">
                <string>string:&quot;Siren&quot;</string>
            </attr>
        </edge>
        <edge to="n6" from="n8">
            <attr name="label">
                <string>tree</string>
            </attr>
            <attr name="layout">
                <string>500 0 30 405 30 240 30 36 11</string>
            </attr>
        </edge>
        <edge to="n7" from="n6">
            <attr name="label">
                <string>root</string>
            </attr>
        </edge>
        <edge to="n33" from="n33">
            <attr name="label">
                <string>type:Requires</string>
            </attr>
        </edge>
        <edge to="n13" from="n13">
            <attr name="label">
                <string>type:Xor</string>
            </attr>
        </edge>
        <edge to="n19" from="n29">
            <attr name="label">
                <string>or</string>
            </attr>
        </edge>
        <edge to="n29" from="n1">
            <attr name="label">
                <string>mandatory</string>
            </attr>
            <attr name="layout">
                <string>500 0 275 130 320 170 340 270 11</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n22" from="n18">
            <attr name="label">
                <string>or</string>
            </attr>
            <attr name="layout">
                <string>138 1 70 156 70 210 70 315 11</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;AlarmAuto&quot;</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n25" from="n25">
            <attr name="label">
                <string>string:&quot;Surveil&quot;</string>
            </attr>
        </edge>
        <edge to="n37" from="n36">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:FeatureModel</string>
            </attr>
        </edge>
        <edge to="n19" from="n19">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n4" from="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n34" from="n33">
            <attr name="label">
                <string>feature1</string>
            </attr>
            <attr name="layout">
                <string>500 0 230 365 221 330 170 240 11</string>
            </attr>
        </edge>
        <edge to="n14" from="n14">
            <attr name="label">
                <string>string:&quot;WhiteGoodsCtrl&quot;</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n36" from="n36">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n1" from="n33">
            <attr name="label">
                <string>feature2</string>
            </attr>
            <attr name="layout">
                <string>586 9 236 355 270 300 270 156 11</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>string:&quot;HomeAuto&quot;</string>
            </attr>
        </edge>
        <edge to="n17" from="n13">
            <attr name="label">
                <string>xor</string>
            </attr>
            <attr name="layout">
                <string>209 1 540 306 540 357 540 435 11</string>
            </attr>
        </edge>
        <edge to="n10" from="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n33" from="n8">
            <attr name="label">
                <string>constraint</string>
            </attr>
            <attr name="layout">
                <string>500 0 66 406 219 414 230 366 14</string>
            </attr>
        </edge>
        <edge to="n13" from="n2">
            <attr name="label">
                <string>mandatory</string>
            </attr>
            <attr name="layout">
                <string>312 -4 546 132 559 228 559 265 14</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>string:&quot;Message&quot;</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n21" from="n13">
            <attr name="label">
                <string>xor</string>
            </attr>
        </edge>
        <edge to="n23" from="n21">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n26" from="n22">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>string:&quot;EnergySaving&quot;</string>
            </attr>
        </edge>
        <edge to="n21" from="n21">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n37" from="n37">
            <attr name="label">
                <string>string:&quot;Bell&quot;</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>type:Or</string>
            </attr>
        </edge>
        <edge to="n9" from="n2">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n1" from="n7">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n30" from="n29">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n34" from="n34">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n29" from="n29">
            <attr name="label">
                <string>type:Or</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n24" from="n24">
            <attr name="label">
                <string>string:&quot;Remote&quot;</string>
            </attr>
        </edge>
        <edge to="n35" from="n35">
            <attr name="label">
                <string>string:&quot;AccidentDet&quot;</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n14" from="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n25" from="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n23" from="n23">
            <attr name="label">
                <string>string:&quot;SmartCtrl&quot;</string>
            </attr>
        </edge>
        <edge to="n36" from="n29">
            <attr name="label">
                <string>or</string>
            </attr>
            <attr name="layout">
                <string>285 -2 360 326 360 445 11</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n24" from="n17">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:FeatureTree</string>
            </attr>
        </edge>
        <edge to="n30" from="n30">
            <attr name="label">
                <string>string:&quot;Alarm&quot;</string>
            </attr>
        </edge>
        <edge to="n26" from="n26">
            <attr name="label">
                <string>string:&quot;MotionDet&quot;</string>
            </attr>
        </edge>
        <edge to="n27" from="n19">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n34" from="n18">
            <attr name="label">
                <string>or</string>
            </attr>
        </edge>
        <edge to="n35" from="n34">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n18" from="n7">
            <attr name="label">
                <string>mandatory</string>
            </attr>
        </edge>
        <edge to="n22" from="n22">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
    </graph>
</gxl>
