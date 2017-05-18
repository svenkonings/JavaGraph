<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="ExampleStateHomeAutomation_Small">
        <node id="n37">
            <attr name="layout">
                <string>358 515 54 33</string>
            </attr>
        </node>
        <node id="n23">
            <attr name="layout">
                <string>1000 562 121 33</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>228 133 150 33</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>464 202 123 46</string>
            </attr>
        </node>
        <node id="n33">
            <attr name="layout">
                <string>334 240 73 31</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>1126 500 85 33</string>
            </attr>
        </node>
        <node id="n25">
            <attr name="layout">
                <string>601 217 111 33</string>
            </attr>
        </node>
        <node id="n30">
            <attr name="layout">
                <string>313 249 70 33</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>165 397 103 31</string>
            </attr>
        </node>
        <node id="n36">
            <attr name="layout">
                <string>443 402 95 61</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>554 340 148 46</string>
            </attr>
        </node>
        <node id="n26">
            <attr name="layout">
                <string>484 470 145 33</string>
            </attr>
        </node>
        <node id="n22">
            <attr name="layout">
                <string>193 286 168 46</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>402 0 173 61</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>589 257 183 46</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>619 77 150 46</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>1209 257 164 33</string>
            </attr>
        </node>
        <node id="n29">
            <attr name="layout">
                <string>403 264 107 61</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>1085 152 123 33</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>936 320 130 33</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>192 79 140 61</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>395 93 171 61</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>167 7 92 31</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>582 167 155 46</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>663 399 120 46</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>643 120 152 33</string>
            </attr>
        </node>
        <node id="n27">
            <attr name="layout">
                <string>202 416 65 33</string>
            </attr>
        </node>
        <node id="n34">
            <attr name="layout">
                <string>226 161 179 61</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>379 353 104 46</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>126 374 90 33</string>
            </attr>
        </node>
        <node id="n35">
            <attr name="layout">
                <string>394 236 160 33</string>
            </attr>
        </node>
        <edge to="n17" from="n13">
            <attr name="label">
                <string>xor</string>
            </attr>
            <attr name="layout">
                <string>239 1 680 280 720 415 11</string>
            </attr>
        </edge>
        <edge to="n27" from="n19">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n23" from="n23">
            <attr name="label">
                <string>string:&quot;SmartControl&quot;</string>
            </attr>
        </edge>
        <edge to="n21" from="n13">
            <attr name="label">
                <string>xor</string>
            </attr>
            <attr name="layout">
                <string>404 0 680 280 628 363 11</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>string:&quot;EnergySaving&quot;</string>
            </attr>
        </edge>
        <edge to="n36" from="n36">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n34" from="n18">
            <attr name="label">
                <string>or</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n4" from="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n26" from="n26">
            <attr name="label">
                <string>string:&quot;MotionDetection&quot;</string>
            </attr>
        </edge>
        <edge to="n34" from="n34">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n34" from="n33">
            <attr name="label">
                <string>feature1</string>
            </attr>
            <attr name="layout">
                <string>327 1 327 250 261 250 261 209 11</string>
            </attr>
        </edge>
        <edge to="n36" from="n29">
            <attr name="label">
                <string>or</string>
            </attr>
            <attr name="layout">
                <string>259 0 456 287 488 419 11</string>
            </attr>
        </edge>
        <edge to="n26" from="n22">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n30" from="n30">
            <attr name="label">
                <string>string:&quot;Alarm&quot;</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n1" from="n33">
            <attr name="label">
                <string>feature2</string>
            </attr>
            <attr name="layout">
                <string>326 -17 402 251 423 251 423 134 11</string>
            </attr>
        </edge>
        <edge to="n33" from="n33">
            <attr name="label">
                <string>type:Requires</string>
            </attr>
        </edge>
        <edge to="n29" from="n29">
            <attr name="label">
                <string>type:Or</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;AlarmAutomation&quot;</string>
            </attr>
        </edge>
        <edge to="n30" from="n29">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n36" from="n36">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n37" from="n37">
            <attr name="label">
                <string>string:&quot;Bell&quot;</string>
            </attr>
        </edge>
        <edge to="n1" from="n7">
            <attr name="label">
                <string>optional</string>
            </attr>
            <attr name="layout">
                <string>516 4 487 209 347 260 11</string>
            </attr>
        </edge>
        <edge to="n14" from="n14">
            <attr name="label">
                <string>string:&quot;WhiteGoodsControl&quot;</string>
            </attr>
        </edge>
        <edge to="n22" from="n22">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n14" from="n13">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n27" from="n27">
            <attr name="label">
                <string>string:&quot;Siren&quot;</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:FeatureModel</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>flag:configured</string>
            </attr>
        </edge>
        <edge to="n35" from="n34">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n21" from="n21">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:FeatureTree</string>
            </attr>
        </edge>
        <edge to="n29" from="n1">
            <attr name="label">
                <string>mandatory</string>
            </attr>
            <attr name="layout">
                <string>348 -3 468 134 468 263 11</string>
            </attr>
        </edge>
        <edge to="n3" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n35" from="n35">
            <attr name="label">
                <string>string:&quot;AccidentDetection&quot;</string>
            </attr>
        </edge>
        <edge to="n33" from="n8">
            <attr name="label">
                <string>constraint</string>
            </attr>
            <attr name="layout">
                <string>220 0 263 414 374 414 374 266 14</string>
            </attr>
        </edge>
        <edge to="n19" from="n19">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n24" from="n24">
            <attr name="label">
                <string>string:&quot;Remote&quot;</string>
            </attr>
        </edge>
        <edge to="n25" from="n18">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n19" from="n29">
            <attr name="label">
                <string>or</string>
            </attr>
            <attr name="layout">
                <string>440 -1 456 287 432 362 11</string>
            </attr>
        </edge>
        <edge to="n5" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n25" from="n25">
            <attr name="label">
                <string>string:&quot;Surveillance&quot;</string>
            </attr>
        </edge>
        <edge to="n34" from="n34">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n29" from="n29">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n9" from="n2">
            <attr name="label">
                <string>optional</string>
            </attr>
        </edge>
        <edge to="n37" from="n36">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n22" from="n18">
            <attr name="label">
                <string>or</string>
            </attr>
            <attr name="layout">
                <string>173 0 223 135 223 191 223 291 11</string>
            </attr>
        </edge>
        <edge to="n13" from="n2">
            <attr name="label">
                <string>mandatory</string>
            </attr>
            <attr name="layout">
                <string>222 9 749 118 749 258 749 262 14</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>string:&quot;Message&quot;</string>
            </attr>
        </edge>
        <edge to="n23" from="n21">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n24" from="n17">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n12" from="n1">
            <attr name="label">
                <string>optional</string>
            </attr>
            <attr name="layout">
                <string>442 4 537 134 537 195 11</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>string:&quot;ClimateControl&quot;</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>type:Or</string>
            </attr>
        </edge>
        <edge to="n7" from="n6">
            <attr name="label">
                <string>root</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>type:MandOpt</string>
            </attr>
        </edge>
        <edge to="n10" from="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n18" from="n7">
            <attr name="label">
                <string>mandatory</string>
            </attr>
        </edge>
        <edge to="n2" from="n7">
            <attr name="label">
                <string>optional</string>
            </attr>
            <attr name="layout">
                <string>531 -4 594 183 902 207 11</string>
            </attr>
        </edge>
        <edge to="n6" from="n8">
            <attr name="label">
                <string>tree</string>
            </attr>
            <attr name="layout">
                <string>89 0 185 402 185 232 185 33 11</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>string:&quot;HomeAutomation&quot;</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>flag:selected</string>
            </attr>
        </edge>
        <edge to="n13" from="n13">
            <attr name="label">
                <string>type:Xor</string>
            </attr>
        </edge>
        <edge to="n11" from="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
    </graph>
</gxl>
