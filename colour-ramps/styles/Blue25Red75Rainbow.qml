<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" maxScale="0" minScale="1e+08" version="3.8.2-Zanzibar">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="Value" key="identify/format"/>
  </customproperties>
  <pipe>
    <rasterrenderer alphaBand="-1" classificationMin="20" opacity="1" type="singlebandpseudocolor" band="6" classificationMax="50">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0" classificationMode="2">
          <colorramp name="[source]" type="gradient">
            <prop v="56,0,96,255" k="color1"/>
            <prop v="92,0,53,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.0403633;64,0,154,255:0.0776993;44,48,238,255:0.112008;58,110,241,255:0.14329;47,176,251,255:0.168517;62,214,214,255:0.200807;117,238,220,255:0.226034;177,255,219,255:0.245207;222,255,218,255:0.260343;255,255,117,255:0.279516;255,239,113,255:0.34107;255,194,61,255:0.438951;255,135,0,255:0.59334;255,68,0,255:0.775984;176,0,38,255" k="stops"/>
          </colorramp>
          <item value="20" color="#380060" alpha="255" label="20"/>
          <item value="20.6122448979592" color="#3c007d" alpha="255" label="20.6122448979592"/>
          <item value="21.2244897959184" color="#40009b" alpha="255" label="21.2244897959184"/>
          <item value="21.8367346938776" color="#351ac9" alpha="255" label="21.8367346938776"/>
          <item value="22.4489795918367" color="#2d37ef" alpha="255" label="22.4489795918367"/>
          <item value="23.0612244897959" color="#365cf1" alpha="255" label="23.0612244897959"/>
          <item value="23.6734693877551" color="#3684f5" alpha="255" label="23.6734693877551"/>
          <item value="24.2857142857143" color="#2faffb" alpha="255" label="24.2857142857143"/>
          <item value="24.8979591836735" color="#3bcede" alpha="255" label="24.8979591836735"/>
          <item value="25.5102040816327" color="#58e2d9" alpha="255" label="25.5102040816327"/>
          <item value="26.1224489795918" color="#7df1dc" alpha="255" label="26.1224489795918"/>
          <item value="26.734693877551" color="#aefedb" alpha="255" label="26.734693877551"/>
          <item value="27.3469387755102" color="#deffda" alpha="255" label="27.3469387755102"/>
          <item value="27.9591836734694" color="#fffb74" alpha="255" label="27.9591836734694"/>
          <item value="28.5714285714286" color="#ffeb6c" alpha="255" label="28.5714285714286"/>
          <item value="29.1836734693878" color="#ffdc5a" alpha="255" label="29.1836734693878"/>
          <item value="29.7959183673469" color="#ffcd49" alpha="255" label="29.7959183673469"/>
          <item value="30.4081632653061" color="#ffbf39" alpha="255" label="30.4081632653061"/>
          <item value="31.0204081632653" color="#ffb22c" alpha="255" label="31.0204081632653"/>
          <item value="31.6326530612245" color="#ffa620" alpha="255" label="31.6326530612245"/>
          <item value="32.2448979591837" color="#ff9a13" alpha="255" label="32.2448979591837"/>
          <item value="32.8571428571429" color="#ff8d06" alpha="255" label="32.8571428571429"/>
          <item value="33.469387755102" color="#ff8300" alpha="255" label="33.469387755102"/>
          <item value="34.0816326530612" color="#ff7a00" alpha="255" label="34.0816326530612"/>
          <item value="34.6938775510204" color="#ff7100" alpha="255" label="34.6938775510204"/>
          <item value="35.3061224489796" color="#ff6800" alpha="255" label="35.3061224489796"/>
          <item value="35.9183673469388" color="#ff5f00" alpha="255" label="35.9183673469388"/>
          <item value="36.530612244898" color="#ff5600" alpha="255" label="36.530612244898"/>
          <item value="37.1428571428571" color="#ff4d00" alpha="255" label="37.1428571428571"/>
          <item value="37.7551020408163" color="#ff4400" alpha="255" label="37.7551020408163"/>
          <item value="38.3673469387755" color="#f73d03" alpha="255" label="38.3673469387755"/>
          <item value="38.9795918367347" color="#ee3508" alpha="255" label="38.9795918367347"/>
          <item value="39.5918367346939" color="#e62d0c" alpha="255" label="39.5918367346939"/>
          <item value="40.2040816326531" color="#dd2610" alpha="255" label="40.2040816326531"/>
          <item value="40.8163265306122" color="#d41e15" alpha="255" label="40.8163265306122"/>
          <item value="41.4285714285714" color="#cb1719" alpha="255" label="41.4285714285714"/>
          <item value="42.0408163265306" color="#c20f1d" alpha="255" label="42.0408163265306"/>
          <item value="42.6530612244898" color="#b90721" alpha="255" label="42.6530612244898"/>
          <item value="43.265306122449" color="#b00026" alpha="255" label="43.265306122449"/>
          <item value="43.8775510204082" color="#a90027" alpha="255" label="43.8775510204082"/>
          <item value="44.4897959183673" color="#a10028" alpha="255" label="44.4897959183673"/>
          <item value="45.1020408163265" color="#99002a" alpha="255" label="45.1020408163265"/>
          <item value="45.7142857142857" color="#92002b" alpha="255" label="45.7142857142857"/>
          <item value="46.3265306122449" color="#8a002c" alpha="255" label="46.3265306122449"/>
          <item value="46.9387755102041" color="#82002e" alpha="255" label="46.9387755102041"/>
          <item value="47.5510204081633" color="#7b002f" alpha="255" label="47.5510204081633"/>
          <item value="48.1632653061225" color="#730031" alpha="255" label="48.1632653061225"/>
          <item value="48.7755102040816" color="#6b0032" alpha="255" label="48.7755102040816"/>
          <item value="49.3877551020408" color="#640033" alpha="255" label="49.3877551020408"/>
          <item value="50" color="#5c0035" alpha="255" label="50"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation saturation="0" colorizeStrength="100" colorizeOn="0" colorizeBlue="128" grayscaleMode="0" colorizeGreen="128" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
