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
    <rasterrenderer type="singlebandpseudocolor" alphaBand="-1" opacity="1" nodataColor="" classificationMin="0" band="1" classificationMax="12">
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
        <colorrampshader minimumValue="0" labelPrecision="3" classificationMode="2" clip="0" maximumValue="12" colorRampType="INTERPOLATED">
          <colorramp type="gradient" name="[source]">
            <Option type="Map">
              <Option type="QString" value="56,0,96,255" name="color1"/>
              <Option type="QString" value="92,0,53,255" name="color2"/>
              <Option type="QString" value="0" name="discrete"/>
              <Option type="QString" value="gradient" name="rampType"/>
              <Option type="QString" value="0.0661241;64,0,154,255:0.120041;44,48,238,255:0.17294;58,110,241,255:0.227874;47,176,251,255:0.277721;62,214,214,255:0.323499;117,238,220,255:0.361139;177,255,219,255:0.387589;222,255,218,255:0.415056;255,255,117,255:0.449644;255,239,113,255:0.511699;255,194,61,255:0.607325;255,135,0,255:0.713123;255,68,0,255:0.84944;176,0,38,255" name="stops"/>
            </Option>
            <prop k="color1" v="56,0,96,255"/>
            <prop k="color2" v="92,0,53,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.0661241;64,0,154,255:0.120041;44,48,238,255:0.17294;58,110,241,255:0.227874;47,176,251,255:0.277721;62,214,214,255:0.323499;117,238,220,255:0.361139;177,255,219,255:0.387589;222,255,218,255:0.415056;255,255,117,255:0.449644;255,239,113,255:0.511699;255,194,61,255:0.607325;255,135,0,255:0.713123;255,68,0,255:0.84944;176,0,38,255"/>
          </colorramp>
          <item label="0.000" value="0" alpha="255" color="#380060"/>
          <item label="0.245" value="0.244897959183673" alpha="255" color="#3a0072"/>
          <item label="0.490" value="0.489795918367347" alpha="255" color="#3d0084"/>
          <item label="0.735" value="0.73469387755102" alpha="255" color="#3f0096"/>
          <item label="0.980" value="0.979591836734694" alpha="255" color="#3a0eb2"/>
          <item label="1.224" value="1.224489795918367" alpha="255" color="#3320d2"/>
          <item label="1.469" value="1.46938775510204" alpha="255" color="#2d33ee"/>
          <item label="1.714" value="1.714285714285714" alpha="255" color="#324bef"/>
          <item label="1.959" value="1.959183673469388" alpha="255" color="#3763f0"/>
          <item label="2.204" value="2.204081632653061" alpha="255" color="#387bf3"/>
          <item label="2.449" value="2.448979591836735" alpha="255" color="#3493f7"/>
          <item label="2.694" value="2.693877551020408" alpha="255" color="#30acfa"/>
          <item label="2.939" value="2.938775510204081" alpha="255" color="#34bdee"/>
          <item label="3.184" value="3.183673469387755" alpha="255" color="#3acddf"/>
          <item label="3.429" value="3.428571428571428" alpha="255" color="#48dad7"/>
          <item label="3.673" value="3.673469387755102" alpha="255" color="#60e5da"/>
          <item label="3.918" value="3.918367346938775" alpha="255" color="#7aefdc"/>
          <item label="4.163" value="4.16326530612245" alpha="255" color="#9af9db"/>
          <item label="4.408" value="4.408163265306122" alpha="255" color="#bcffdb"/>
          <item label="4.653" value="4.653061224489796" alpha="255" color="#deffd9"/>
          <item label="4.898" value="4.89795918367347" alpha="255" color="#f7ff8e"/>
          <item label="5.143" value="5.142857142857142" alpha="255" color="#fff973"/>
          <item label="5.388" value="5.387755102040816" alpha="255" color="#ffef71"/>
          <item label="5.633" value="5.63265306122449" alpha="255" color="#ffe160"/>
          <item label="5.878" value="5.877551020408163" alpha="255" color="#ffd24f"/>
          <item label="6.122" value="6.122448979591836" alpha="255" color="#ffc33e"/>
          <item label="6.367" value="6.36734693877551" alpha="255" color="#ffb631"/>
          <item label="6.612" value="6.612244897959184" alpha="255" color="#ffaa24"/>
          <item label="6.857" value="6.857142857142857" alpha="255" color="#ff9d17"/>
          <item label="7.102" value="7.102040816326531" alpha="255" color="#ff910a"/>
          <item label="7.347" value="7.346938775510204" alpha="255" color="#ff8400"/>
          <item label="7.592" value="7.591836734693877" alpha="255" color="#ff7700"/>
          <item label="7.837" value="7.836734693877551" alpha="255" color="#ff6a00"/>
          <item label="8.082" value="8.081632653061224" alpha="255" color="#ff5d00"/>
          <item label="8.327" value="8.326530612244898" alpha="255" color="#ff5000"/>
          <item label="8.571" value="8.571428571428571" alpha="255" color="#fe4300"/>
          <item label="8.816" value="8.816326530612244" alpha="255" color="#f23906"/>
          <item label="9.061" value="9.061224489795919" alpha="255" color="#e72f0c"/>
          <item label="9.306" value="9.306122448979592" alpha="255" color="#db2511"/>
          <item label="9.551" value="9.551020408163264" alpha="255" color="#cf1b17"/>
          <item label="9.796" value="9.795918367346939" alpha="255" color="#c3111d"/>
          <item label="10.041" value="10.040816326530612" alpha="255" color="#b70622"/>
          <item label="10.286" value="10.285714285714285" alpha="255" color="#ac0027"/>
          <item label="10.531" value="10.53061224489796" alpha="255" color="#a00029"/>
          <item label="10.776" value="10.775510204081632" alpha="255" color="#95002b"/>
          <item label="11.020" value="11.020408163265305" alpha="255" color="#8a002d"/>
          <item label="11.265" value="11.26530612244898" alpha="255" color="#7e002f"/>
          <item label="11.510" value="11.510204081632653" alpha="255" color="#730031"/>
          <item label="11.755" value="11.755102040816325" alpha="255" color="#670033"/>
          <item label="12.000" value="12" alpha="255" color="#5c0035"/>
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
