<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" minScale="1e+08" maxScale="0" styleCategories="AllStyleCategories" version="3.22.3-Białowieża">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" enabled="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option type="QString" value="false" name="WMSBackgroundLayer"/>
      <Option type="QString" value="false" name="WMSPublishDataSourceUrl"/>
      <Option type="QString" value="0" name="embeddedWidgets/count"/>
      <Option type="QString" value="Value" name="identify/format"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option type="QString" value="" name="name"/>
      <Option name="properties"/>
      <Option type="QString" value="collection" name="type"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling enabled="false" maxOversampling="2" zoomedOutResamplingMethod="nearestNeighbour" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer type="singlebandpseudocolor" alphaBand="-1" opacity="1" nodataColor="" classificationMin="0" band="1" classificationMax="1.2">
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
        <colorrampshader minimumValue="0" labelPrecision="6" classificationMode="2" clip="0" maximumValue="1.2" colorRampType="INTERPOLATED">
          <colorramp type="gradient" name="[source]">
            <Option type="Map">
              <Option type="QString" value="56,0,96,255" name="color1"/>
              <Option type="QString" value="92,0,53,255" name="color2"/>
              <Option type="QString" value="0" name="discrete"/>
              <Option type="QString" value="gradient" name="rampType"/>
              <Option type="QString" value="0.02657;64,0,154,255:0.0813835;44,48,238,255:0.140387;58,110,241,255:0.201424;47,176,251,255:0.249237;62,214,214,255:0.296033;117,238,220,255:0.336724;177,255,219,255:0.364191;222,255,218,255:0.396745;255,255,117,255:0.466938;255,239,113,255:0.573754;255,194,61,255:0.661241;255,135,0,255:0.733469;255,68,0,255:0.833164;176,0,38,255" name="stops"/>
            </Option>
            <prop k="color1" v="56,0,96,255"/>
            <prop k="color2" v="92,0,53,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.02657;64,0,154,255:0.0813835;44,48,238,255:0.140387;58,110,241,255:0.201424;47,176,251,255:0.249237;62,214,214,255:0.296033;117,238,220,255:0.336724;177,255,219,255:0.364191;222,255,218,255:0.396745;255,255,117,255:0.466938;255,239,113,255:0.573754;255,194,61,255:0.661241;255,135,0,255:0.733469;255,68,0,255:0.833164;176,0,38,255"/>
          </colorramp>
          <item label="0.000000" value="0" alpha="255" color="#380060"/>
          <item label="0.024490" value="0.0244897959183673" alpha="255" color="#3e008d"/>
          <item label="0.048980" value="0.0489795918367347" alpha="255" color="#3b0cb0"/>
          <item label="0.073469" value="0.073469387755102" alpha="255" color="#331ecf"/>
          <item label="0.097959" value="0.0979591836734694" alpha="255" color="#2c30ee"/>
          <item label="0.122449" value="0.122448979591837" alpha="255" color="#3146ef"/>
          <item label="0.146939" value="0.146938775510204" alpha="255" color="#365bf0"/>
          <item label="0.171429" value="0.171428571428571" alpha="255" color="#3a71f1"/>
          <item label="0.195918" value="0.195918367346939" alpha="255" color="#3687f5"/>
          <item label="0.220408" value="0.220408163265306" alpha="255" color="#329df8"/>
          <item label="0.244898" value="0.244897959183673" alpha="255" color="#30b2f9"/>
          <item label="0.269388" value="0.269387755102041" alpha="255" color="#36c2e9"/>
          <item label="0.293878" value="0.293877551020408" alpha="255" color="#3dd3d9"/>
          <item label="0.318367" value="0.318367346938775" alpha="255" color="#51ded8"/>
          <item label="0.342857" value="0.342857142857143" alpha="255" color="#69e9db"/>
          <item label="0.367347" value="0.36734693877551" alpha="255" color="#84f2dc"/>
          <item label="0.391837" value="0.391836734693878" alpha="255" color="#a2fbdb"/>
          <item label="0.416327" value="0.416326530612245" alpha="255" color="#c2ffdb"/>
          <item label="0.440816" value="0.440816326530612" alpha="255" color="#e1ffd0"/>
          <item label="0.465306" value="0.46530612244898" alpha="255" color="#f6ff91"/>
          <item label="0.489796" value="0.489795918367347" alpha="255" color="#fffc74"/>
          <item label="0.514286" value="0.514285714285714" alpha="255" color="#fff873"/>
          <item label="0.538776" value="0.538775510204082" alpha="255" color="#fff372"/>
          <item label="0.563265" value="0.563265306122449" alpha="255" color="#ffee70"/>
          <item label="0.587755" value="0.587755102040816" alpha="255" color="#ffe566"/>
          <item label="0.612245" value="0.612244897959184" alpha="255" color="#ffdd5c"/>
          <item label="0.636735" value="0.636734693877551" alpha="255" color="#ffd452"/>
          <item label="0.661224" value="0.661224489795918" alpha="255" color="#ffcc48"/>
          <item label="0.685714" value="0.685714285714286" alpha="255" color="#ffc33e"/>
          <item label="0.710204" value="0.710204081632653" alpha="255" color="#ffb630"/>
          <item label="0.734694" value="0.73469387755102" alpha="255" color="#ffa822"/>
          <item label="0.759184" value="0.759183673469388" alpha="255" color="#ff9a14"/>
          <item label="0.783673" value="0.783673469387755" alpha="255" color="#ff8d06"/>
          <item label="0.808163" value="0.808163265306122" alpha="255" color="#ff7c00"/>
          <item label="0.832653" value="0.83265306122449" alpha="255" color="#ff6900"/>
          <item label="0.857143" value="0.857142857142857" alpha="255" color="#ff5600"/>
          <item label="0.881633" value="0.881632653061224" alpha="255" color="#fe4300"/>
          <item label="0.906122" value="0.906122448979592" alpha="255" color="#ee3508"/>
          <item label="0.930612" value="0.930612244897959" alpha="255" color="#de2710"/>
          <item label="0.955102" value="0.955102040816326" alpha="255" color="#ce1918"/>
          <item label="0.979592" value="0.979591836734694" alpha="255" color="#bd0b20"/>
          <item label="1.004082" value="1.004081632653061" alpha="255" color="#ae0026"/>
          <item label="1.028571" value="1.028571428571428" alpha="255" color="#a40028"/>
          <item label="1.053061" value="1.053061224489796" alpha="255" color="#9a002a"/>
          <item label="1.077551" value="1.077551020408163" alpha="255" color="#8f002c"/>
          <item label="1.102041" value="1.10204081632653" alpha="255" color="#85002e"/>
          <item label="1.126531" value="1.126530612244898" alpha="255" color="#7b002f"/>
          <item label="1.151020" value="1.151020408163265" alpha="255" color="#710031"/>
          <item label="1.175510" value="1.175510204081633" alpha="255" color="#660033"/>
          <item label="1.200000" value="1.2" alpha="255" color="#5c0035"/>
          <rampLegendSettings direction="0" minimumLabel="" prefix="" orientation="2" maximumLabel="" useContinuousLegend="1" suffix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option type="QChar" value="" name="decimal_separator"/>
                <Option type="int" value="6" name="decimals"/>
                <Option type="int" value="0" name="rounding_type"/>
                <Option type="bool" value="false" name="show_plus"/>
                <Option type="bool" value="true" name="show_thousand_separator"/>
                <Option type="bool" value="false" name="show_trailing_zeros"/>
                <Option type="QChar" value="" name="thousand_separator"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast gamma="1" brightness="0" contrast="0"/>
    <huesaturation grayscaleMode="0" colorizeBlue="128" colorizeRed="255" colorizeOn="0" colorizeGreen="128" colorizeStrength="100" saturation="0" invertColors="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
