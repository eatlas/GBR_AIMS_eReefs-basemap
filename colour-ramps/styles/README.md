# Colour ramp styles
This directory contains exports of all the colour ramps in a number of formats. The *.pal files are suitable for
use by NcAnimate used for the AIMS eReefs visualisations. They can also be used in THREDDS and NcWMS. 
The *.sld files correspond to Styled Layer Descriptor files and are suitable for use in GeoServer. The *.qml files
correspond to styles that can be imported into QGIS. These files contain both the final linear colour ramp and the 
original 16 colours that are stretched to form the colour ramp.  

# Temperature
`BlueRedRainbowTemp_20-34-degC` This is the styling that was applied to the visualisations (Hourly, Daily, Monthly and
Yearly) on the eReefs products prior to 20 Jan 2023. This has a transition temperature between blue and red of 28.5 deg C
that aligns with when we might be concerned with heat stress for corals, noting that this doesn't not consider the local 
average temperature.

`BlueRedRainbowTemp_20-34-degC_V2` This was an adjustment to the style that was used for the generation of the one off
animation for the GBRF.

`BlueRedRainbowTemp_23-30-degC` This is a smaller range style optimised for showing annual temperatures. The transition
between blue and red has been chosen so that mass bleaching years show some level of orange and thus indicate that there
was some concern. This transition occurs around 27.5 deg C.

