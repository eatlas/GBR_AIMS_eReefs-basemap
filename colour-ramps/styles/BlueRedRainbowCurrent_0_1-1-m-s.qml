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
    <rasterrenderer alphaBand="-1" classificationMin="0" opacity="1" type="singlebandpseudocolor" band="6" classificationMax="1.1">
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
            <prop v="0.02657;64,0,154,255:0.0640097;44,48,238,255:0.09889;58,110,241,255:0.133199;47,176,251,255:0.173562;62,214,214,255:0.210898;117,238,220,255:0.235116;177,255,219,255:0.256307;222,255,218,255:0.280525;255,255,117,255:0.313824;255,239,113,255:0.401615;255,194,61,255:0.536831;255,135,0,255:0.618567;255,68,0,255:0.756811;176,0,38,255" k="stops"/>
          </colorramp>
          <item value="0" color="#380060" alpha="255" label="0"/>
          <item value="0.0224489795918367" color="#3e008d" alpha="255" label="0.0224489795918367"/>
          <item value="0.0448979591836735" color="#3812ba" alpha="255" label="0.0448979591836735"/>
          <item value="0.0673469387755102" color="#2d2ce8" alpha="255" label="0.0673469387755102"/>
          <item value="0.0897959183673469" color="#334ff0" alpha="255" label="0.0897959183673469"/>
          <item value="0.112244897959184" color="#3974f2" alpha="255" label="0.112244897959184"/>
          <item value="0.13469387755102" color="#329bf8" alpha="255" label="0.13469387755102"/>
          <item value="0.157142857142857" color="#32b9f3" alpha="255" label="0.157142857142857"/>
          <item value="0.179591836734694" color="#3acde0" alpha="255" label="0.179591836734694"/>
          <item value="0.202040816326531" color="#4dddd8" alpha="255" label="0.202040816326531"/>
          <item value="0.224489795918367" color="#6beadb" alpha="255" label="0.224489795918367"/>
          <item value="0.246938775510204" color="#97f8dc" alpha="255" label="0.246938775510204"/>
          <item value="0.269387755102041" color="#c6ffdb" alpha="255" label="0.269387755102041"/>
          <item value="0.291836734693878" color="#ebffb5" alpha="255" label="0.291836734693878"/>
          <item value="0.314285714285714" color="#fffd74" alpha="255" label="0.314285714285714"/>
          <item value="0.336734693877551" color="#fff372" alpha="255" label="0.336734693877551"/>
          <item value="0.359183673469388" color="#ffe969" alpha="255" label="0.359183673469388"/>
          <item value="0.381632653061225" color="#ffde5d" alpha="255" label="0.381632653061225"/>
          <item value="0.404081632653061" color="#ffd451" alpha="255" label="0.404081632653061"/>
          <item value="0.426530612244898" color="#ffc945" alpha="255" label="0.426530612244898"/>
          <item value="0.448979591836735" color="#ffbf3a" alpha="255" label="0.448979591836735"/>
          <item value="0.471428571428571" color="#ffb631" alpha="255" label="0.471428571428571"/>
          <item value="0.493877551020408" color="#ffae27" alpha="255" label="0.493877551020408"/>
          <item value="0.516326530612245" color="#ffa51e" alpha="255" label="0.516326530612245"/>
          <item value="0.538775510204082" color="#ff9c15" alpha="255" label="0.538775510204082"/>
          <item value="0.561224489795918" color="#ff930c" alpha="255" label="0.561224489795918"/>
          <item value="0.583673469387755" color="#ff8a02" alpha="255" label="0.583673469387755"/>
          <item value="0.606122448979592" color="#ff7b00" alpha="255" label="0.606122448979592"/>
          <item value="0.628571428571429" color="#ff6b00" alpha="255" label="0.628571428571429"/>
          <item value="0.651020408163265" color="#ff5a00" alpha="255" label="0.651020408163265"/>
          <item value="0.673469387755102" color="#ff4900" alpha="255" label="0.673469387755102"/>
          <item value="0.695918367346939" color="#f73d03" alpha="255" label="0.695918367346939"/>
          <item value="0.718367346938776" color="#ec3309" alpha="255" label="0.718367346938776"/>
          <item value="0.740816326530612" color="#e0290f" alpha="255" label="0.740816326530612"/>
          <item value="0.763265306122449" color="#d41f14" alpha="255" label="0.763265306122449"/>
          <item value="0.785714285714286" color="#c9151a" alpha="255" label="0.785714285714286"/>
          <item value="0.808163265306122" color="#bd0a20" alpha="255" label="0.808163265306122"/>
          <item value="0.830612244897959" color="#b10025" alpha="255" label="0.830612244897959"/>
          <item value="0.853061224489796" color="#aa0027" alpha="255" label="0.853061224489796"/>
          <item value="0.875510204081633" color="#a30028" alpha="255" label="0.875510204081633"/>
          <item value="0.897959183673469" color="#9c0029" alpha="255" label="0.897959183673469"/>
          <item value="0.920408163265306" color="#94002b" alpha="255" label="0.920408163265306"/>
          <item value="0.942857142857143" color="#8d002c" alpha="255" label="0.942857142857143"/>
          <item value="0.96530612244898" color="#86002d" alpha="255" label="0.96530612244898"/>
          <item value="0.987755102040816" color="#7f002e" alpha="255" label="0.987755102040816"/>
          <item value="1.01020408163265" color="#780030" alpha="255" label="1.01020408163265"/>
          <item value="1.03265306122449" color="#710031" alpha="255" label="1.03265306122449"/>
          <item value="1.05510204081633" color="#6a0032" alpha="255" label="1.05510204081633"/>
          <item value="1.07755102040816" color="#630033" alpha="255" label="1.07755102040816"/>
          <item value="1.1" color="#5c0035" alpha="255" label="1.1"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation saturation="0" colorizeStrength="100" colorizeOn="0" colorizeBlue="128" grayscaleMode="0" colorizeGreen="128" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
