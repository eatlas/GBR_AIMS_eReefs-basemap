<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" version="3.8.2-Zanzibar" maxScale="0" hasScaleBasedVisibilityFlag="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="WMSBackgroundLayer" value="false"/>
    <property key="WMSPublishDataSourceUrl" value="false"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="identify/format" value="Value"/>
  </customproperties>
  <pipe>
    <rasterrenderer opacity="1" classificationMin="20" classificationMax="34" alphaBand="-1" type="singlebandpseudocolor" band="6">
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
        <colorrampshader classificationMode="2" colorRampType="INTERPOLATED" clip="0">
          <colorramp name="[source]" type="gradient">
            <prop v="56,0,96,255" k="color1"/>
            <prop v="92,0,53,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.0721154;64,0,154,255:0.159856;44,48,238,255:0.259615;58,110,241,255:0.335337;47,176,251,255:0.432692;62,214,214,255:0.515625;117,238,220,255:0.567308;177,255,219,255:0.596154;222,255,218,255:0.626202;255,255,117,255:0.65625;255,239,113,255:0.730769;255,194,61,255:0.794471;255,135,0,255:0.850962;255,68,0,255:0.925481;176,0,38,255" k="stops"/>
          </colorramp>
          <item label="20" value="20" alpha="255" color="#380060"/>
          <item label="20.2857142857143" value="20.2857142857143" alpha="255" color="#3a0070"/>
          <item label="20.5714285714286" value="20.5714285714286" alpha="255" color="#3c0081"/>
          <item label="20.8571428571429" value="20.8571428571429" alpha="255" color="#3f0091"/>
          <item label="21.1428571428571" value="21.1428571428571" alpha="255" color="#3e05a3"/>
          <item label="21.4285714285714" value="21.4285714285714" alpha="255" color="#3910b7"/>
          <item label="21.7142857142857" value="21.7142857142857" alpha="255" color="#341bca"/>
          <item label="22" value="22" alpha="255" color="#3026de"/>
          <item label="22.2857142857143" value="22.2857142857143" alpha="255" color="#2c32ef"/>
          <item label="22.5714285714286" value="22.5714285714286" alpha="255" color="#2f3fef"/>
          <item label="22.8571428571429" value="22.8571428571429" alpha="255" color="#324bf0"/>
          <item label="23.1428571428571" value="23.1428571428571" alpha="255" color="#3558f0"/>
          <item label="23.4285714285714" value="23.4285714285714" alpha="255" color="#3865f1"/>
          <item label="23.7142857142857" value="23.7142857142857" alpha="255" color="#3973f2"/>
          <item label="24" value="24" alpha="255" color="#3685f5"/>
          <item label="24.2857142857143" value="24.2857142857143" alpha="255" color="#3397f8"/>
          <item label="24.5714285714286" value="24.5714285714286" alpha="255" color="#30a8fa"/>
          <item label="24.8571428571429" value="24.8571428571429" alpha="255" color="#30b5f7"/>
          <item label="25.1428571428571" value="25.1428571428571" alpha="255" color="#34bdef"/>
          <item label="25.4285714285714" value="25.4285714285714" alpha="255" color="#37c5e7"/>
          <item label="25.7142857142857" value="25.7142857142857" alpha="255" color="#3acde0"/>
          <item label="26" value="26" alpha="255" color="#3dd5d8"/>
          <item label="26.2857142857143" value="26.2857142857143" alpha="255" color="#49dbd8"/>
          <item label="26.5714285714286" value="26.5714285714286" alpha="255" color="#56e1d9"/>
          <item label="26.8571428571429" value="26.8571428571429" alpha="255" color="#64e7da"/>
          <item label="27.1428571428571" value="27.1428571428571" alpha="255" color="#71eddc"/>
          <item label="27.4285714285714" value="27.4285714285714" alpha="255" color="#86f3dc"/>
          <item label="27.7142857142857" value="27.7142857142857" alpha="255" color="#9efadc"/>
          <item label="28" value="28" alpha="255" color="#b8ffdb"/>
          <item label="28.2857142857143" value="28.2857142857143" alpha="255" color="#d8ffdb"/>
          <item label="28.5714285714286" value="28.5714285714286" alpha="255" color="#f0ffa4"/>
          <item label="28.8571428571429" value="28.8571428571429" alpha="255" color="#fffc74"/>
          <item label="29.1428571428571" value="29.1428571428571" alpha="255" color="#fff171"/>
          <item label="29.4285714285714" value="29.4285714285714" alpha="255" color="#ffe565"/>
          <item label="29.7142857142857" value="29.7142857142857" alpha="255" color="#ffd957"/>
          <item label="30" value="30" alpha="255" color="#ffcc48"/>
          <item label="30.2857142857143" value="30.2857142857143" alpha="255" color="#ffbf39"/>
          <item label="30.5714285714286" value="30.5714285714286" alpha="255" color="#ffac25"/>
          <item label="30.8571428571429" value="30.8571428571429" alpha="255" color="#ff9912"/>
          <item label="31.1428571428571" value="31.1428571428571" alpha="255" color="#ff8500"/>
          <item label="31.4285714285714" value="31.4285714285714" alpha="255" color="#ff6d00"/>
          <item label="31.7142857142857" value="31.7142857142857" alpha="255" color="#ff5500"/>
          <item label="32" value="32" alpha="255" color="#f93e03"/>
          <item label="32.2857142857143" value="32.2857142857143" alpha="255" color="#e32b0d"/>
          <item label="32.5714285714286" value="32.5714285714286" alpha="255" color="#cd1918"/>
          <item label="32.8571428571429" value="32.8571428571429" alpha="255" color="#b80622"/>
          <item label="33.1428571428571" value="33.1428571428571" alpha="255" color="#a10028"/>
          <item label="33.4285714285714" value="33.4285714285714" alpha="255" color="#8a002c"/>
          <item label="33.7142857142857" value="33.7142857142857" alpha="255" color="#730031"/>
          <item label="34" value="34" alpha="255" color="#5c0035"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0"/>
    <huesaturation colorizeBlue="128" colorizeGreen="128" grayscaleMode="0" colorizeStrength="100" saturation="0" colorizeOn="0" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
