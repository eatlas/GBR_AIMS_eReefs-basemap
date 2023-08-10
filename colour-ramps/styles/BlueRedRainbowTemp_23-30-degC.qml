<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.3-Białowieża" hasScaleBasedVisibilityFlag="0" minScale="1e+08" styleCategories="AllStyleCategories" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" mode="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option value="false" type="QString" name="WMSBackgroundLayer"/>
      <Option value="false" type="QString" name="WMSPublishDataSourceUrl"/>
      <Option value="0" type="QString" name="embeddedWidgets/count"/>
      <Option value="Value" type="QString" name="identify/format"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" type="QString" name="name"/>
      <Option name="properties"/>
      <Option value="collection" type="QString" name="type"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" enabled="false" maxOversampling="2"/>
    </provider>
    <rasterrenderer classificationMin="23" type="singlebandpseudocolor" band="16" alphaBand="-1" nodataColor="" classificationMax="30" opacity="1">
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
        <colorrampshader maximumValue="30" labelPrecision="2" colorRampType="INTERPOLATED" minimumValue="23" classificationMode="2" clip="0">
          <colorramp type="gradient" name="[source]">
            <Option type="Map">
              <Option value="56,0,96,255" type="QString" name="color1"/>
              <Option value="92,0,53,255" type="QString" name="color2"/>
              <Option value="0" type="QString" name="discrete"/>
              <Option value="gradient" type="QString" name="rampType"/>
              <Option value="0.0986775;64,0,154,255:0.190234;44,48,238,255:0.275687;58,110,241,255:0.376399;47,176,251,255:0.463886;62,214,214,255:0.535097;117,238,220,255:0.584944;177,255,219,255:0.632757;222,255,218,255:0.660224;255,255,117,255:0.687691;255,239,113,255:0.722279;255,194,61,255:0.772126;255,135,0,255:0.831129;255,68,0,255:0.899288;176,0,38,255" type="QString" name="stops"/>
            </Option>
            <prop k="color1" v="56,0,96,255"/>
            <prop k="color2" v="92,0,53,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.0986775;64,0,154,255:0.190234;44,48,238,255:0.275687;58,110,241,255:0.376399;47,176,251,255:0.463886;62,214,214,255:0.535097;117,238,220,255:0.584944;177,255,219,255:0.632757;222,255,218,255:0.660224;255,255,117,255:0.687691;255,239,113,255:0.722279;255,194,61,255:0.772126;255,135,0,255:0.831129;255,68,0,255:0.899288;176,0,38,255"/>
          </colorramp>
          <item alpha="255" label="23.00" value="23" color="#380060"/>
          <item alpha="255" label="23.14" value="23.142857142857142" color="#3a006c"/>
          <item alpha="255" label="23.29" value="23.285714285714285" color="#3b0078"/>
          <item alpha="255" label="23.43" value="23.428571428571427" color="#3d0084"/>
          <item alpha="255" label="23.57" value="23.571428571428573" color="#3f0090"/>
          <item alpha="255" label="23.71" value="23.714285714285715" color="#3f029d"/>
          <item alpha="255" label="23.86" value="23.857142857142858" color="#3b0cb0"/>
          <item alpha="255" label="24.00" value="24" color="#3617c3"/>
          <item alpha="255" label="24.14" value="24.142857142857142" color="#3222d5"/>
          <item alpha="255" label="24.29" value="24.285714285714285" color="#2d2de8"/>
          <item alpha="255" label="24.43" value="24.428571428571427" color="#2e3aee"/>
          <item alpha="255" label="24.57" value="24.571428571428573" color="#3249ef"/>
          <item alpha="255" label="24.71" value="24.714285714285715" color="#3558f0"/>
          <item alpha="255" label="24.86" value="24.857142857142858" color="#3866f1"/>
          <item alpha="255" label="25.00" value="25" color="#3975f2"/>
          <item alpha="255" label="25.14" value="25.142857142857142" color="#3782f4"/>
          <item alpha="255" label="25.29" value="25.285714285714285" color="#348ff6"/>
          <item alpha="255" label="25.43" value="25.428571428571427" color="#329df8"/>
          <item alpha="255" label="25.57" value="25.57142857142857" color="#30aafa"/>
          <item alpha="255" label="25.71" value="25.714285714285715" color="#31b5f6"/>
          <item alpha="255" label="25.86" value="25.857142857142858" color="#34beee"/>
          <item alpha="255" label="26.00" value="26" color="#38c7e5"/>
          <item alpha="255" label="26.14" value="26.142857142857142" color="#3bd0dc"/>
          <item alpha="255" label="26.29" value="26.285714285714285" color="#42d8d6"/>
          <item alpha="255" label="26.43" value="26.428571428571427" color="#52dfd8"/>
          <item alpha="255" label="26.57" value="26.57142857142857" color="#62e6da"/>
          <item alpha="255" label="26.71" value="26.714285714285715" color="#72ecdc"/>
          <item alpha="255" label="26.86" value="26.857142857142858" color="#88f3dc"/>
          <item alpha="255" label="27.00" value="27" color="#a1fadb"/>
          <item alpha="255" label="27.14" value="27.142857142857142" color="#b7ffdb"/>
          <item alpha="255" label="27.29" value="27.285714285714285" color="#cbffda"/>
          <item alpha="255" label="27.43" value="27.428571428571427" color="#deffda"/>
          <item alpha="255" label="27.57" value="27.57142857142857" color="#f6ff8f"/>
          <item alpha="255" label="27.71" value="27.714285714285715" color="#fff773"/>
          <item alpha="255" label="27.86" value="27.857142857142858" color="#ffe768"/>
          <item alpha="255" label="28.00" value="28" color="#ffcc49"/>
          <item alpha="255" label="28.14" value="28.142857142857142" color="#ffb32e"/>
          <item alpha="255" label="28.29" value="28.285714285714285" color="#ff9b15"/>
          <item alpha="255" label="28.43" value="28.428571428571427" color="#ff8300"/>
          <item alpha="255" label="28.57" value="28.57142857142857" color="#ff6c00"/>
          <item alpha="255" label="28.71" value="28.714285714285715" color="#ff5500"/>
          <item alpha="255" label="28.86" value="28.857142857142858" color="#f93e03"/>
          <item alpha="255" label="29.00" value="29" color="#e12a0f"/>
          <item alpha="255" label="29.14" value="29.142857142857142" color="#c9161a"/>
          <item alpha="255" label="29.29" value="29.285714285714285" color="#b20125"/>
          <item alpha="255" label="29.43" value="29.428571428571427" color="#a00029"/>
          <item alpha="255" label="29.57" value="29.57142857142857" color="#8f002c"/>
          <item alpha="255" label="29.71" value="29.714285714285715" color="#7e002f"/>
          <item alpha="255" label="29.86" value="29.857142857142858" color="#6d0032"/>
          <item alpha="255" label="30.00" value="30" color="#5c0035"/>
          <rampLegendSettings minimumLabel="" maximumLabel="" useContinuousLegend="1" suffix="" orientation="2" prefix="" direction="0">
            <numericFormat id="basic">
              <Option type="Map">
                <Option value="" type="QChar" name="decimal_separator"/>
                <Option value="6" type="int" name="decimals"/>
                <Option value="0" type="int" name="rounding_type"/>
                <Option value="false" type="bool" name="show_plus"/>
                <Option value="true" type="bool" name="show_thousand_separator"/>
                <Option value="false" type="bool" name="show_trailing_zeros"/>
                <Option value="" type="QChar" name="thousand_separator"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast gamma="1" brightness="0" contrast="0"/>
    <huesaturation colorizeGreen="128" colorizeBlue="128" saturation="0" colorizeStrength="100" grayscaleMode="0" colorizeRed="255" colorizeOn="0" invertColors="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
