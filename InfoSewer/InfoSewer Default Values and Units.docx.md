**InfoSewer Default Values and Units**

The following tables summarize the default values used by InfoSewer Pro in lieu of user-supplied values and units. Table 2.1 lists default parameter values while Table 2.2 lists input parameter units.

“Flow units” in the second table can correspond to either cubic feet per second (the default), gallons per minute (gpm), million gallons per day (mgd), imperial million gallons per day (imgd), acre-feet per day (afd), cubic meters per hour (cmh), cubic meters per day (cmd), million liters per day (mld), liters per second (lps), or liters per minute (lpm).

Table 2.1 - Summary of Default Parameter Values

<table>
<colgroup>
<col style="width: 70%" />
<col style="width: 29%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Parameter</strong></th>
<th><strong>Default Value</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Maximum Design Velocity</td>
<td>10 ft/s</td>
</tr>
<tr class="even">
<td>Minimum Design Velocity</td>
<td>2 ft/s</td>
</tr>
<tr class="odd">
<td>Particle Settling Velocity</td>
<td>0.1 ft/s</td>
</tr>
<tr class="even">
<td>Limiting Flow Velocity</td>
<td>2 ft/s</td>
</tr>
<tr class="odd">
<td>Reaction Rate Coefficient</td>
<td>0.23/day</td>
</tr>
<tr class="even">
<td>Temperature</td>
<td>20<sup>o</sup>C</td>
</tr>
<tr class="odd">
<td>pH</td>
<td>7.0</td>
</tr>
<tr class="even">
<td>Sulfide Flux Coefficient</td>
<td>0.00032m/hr</td>
</tr>
<tr class="odd">
<td>Sulfide Loss Coefficient</td>
<td>0.96</td>
</tr>
<tr class="even">
<td>Ionization Constant</td>
<td>6.92</td>
</tr>
<tr class="odd">
<td>Soluble Form of Total Sulfide</td>
<td>85 %</td>
</tr>
<tr class="even">
<td>Relative Saturation of H2S</td>
<td>0.05</td>
</tr>
<tr class="odd">
<td>Acid Reaction Efficiency</td>
<td>0.5</td>
</tr>
<tr class="even">
<td>Alkalinity</td>
<td>0.5</td>
</tr>
<tr class="odd">
<td>Time Pattern Multipliers</td>
<td>1 for all patterns</td>
</tr>
<tr class="even">
<td>Pattern Time Step</td>
<td>1 hour</td>
</tr>
<tr class="odd">
<td>Pattern Start</td>
<td>0 hour</td>
</tr>
<tr class="even">
<td>Pattern Type</td>
<td>Continuous</td>
</tr>
<tr class="odd">
<td>Simulation Duration</td>
<td>0 hour (steady-state)</td>
</tr>
<tr class="even">
<td><p>Headloss Formula - Force Main</p>
<p>Headloss Formula - Gravity Main</p></td>
<td><p>Hazen-Williams</p>
<p>Manning</p></td>
</tr>
<tr class="odd">
<td>Flow Units</td>
<td>CFS</td>
</tr>
<tr class="even">
<td>Global Loading Multiplier</td>
<td>1.0</td>
</tr>
<tr class="odd">
<td>Peaking Factor , K (Federov Eq.)</td>
<td>2.4</td>
</tr>
<tr class="even">
<td>Peaking Factor, p (Federov Eq.)</td>
<td>0.89</td>
</tr>
<tr class="odd">
<td>Peaking Parameter , a (Harman and Babbitt Eqs.)</td>
<td>5.0</td>
</tr>
<tr class="even">
<td>Peaking Parameter, b (Harman and Babbitt Eqs.)</td>
<td>0.0</td>
</tr>
<tr class="odd">
<td>Peaking Parameter, c (Harman and Babbitt Eqs.)</td>
<td>0.2</td>
</tr>
<tr class="even">
<td>Peaking Parameter, d (Harman and Babbitt Eqs.)</td>
<td>0.0</td>
</tr>
<tr class="odd">
<td>Design Manning Coefficient</td>
<td>0.001</td>
</tr>
<tr class="even">
<td>Maximum Design Cover</td>
<td>20 ft</td>
</tr>
</tbody>
</table>

 

| ** ** | **Minimum Design Cover**          | **3 ft**                      |
|-------|-----------------------------------|-------------------------------|
|       | Angle of Excavation               | 0 degrees                     |
|       | Cutoff Diameter                   | 24 in                         |
|       | Small Pipes Clearance             | 8 in                          |
|       | Large Pipes Clearance             | 12 in                         |
|       | Cutoff Depth                      | 10 ft                         |
|       | Minorloss Crown Drop              | 0.1 ft                        |
|       | Maximum Allowable Diameter        | 0 ft                          |
|       | Minimum Travel Distance           | 100 units                     |
|       | Minimum Travel Time               | 1 second                      |
|       | Conserve Pumped Flows             | No (Conserve Load Components) |
|       | Flow Attenuation                  | No                            |
|       | Manhole Sealing Method            | Unlocked                      |
|       | Max. Number of Segments           | 100                           |
|       | Accuracy                          | .0001                         |
|       | Start Clocktime                   | 0 hours                       |
|       | Report Time Step                  | 1 hour                        |
|       | Pump Hydraulic Time Step          | 6 minutes                     |
|       | Quality                           | None                          |
|       | Page Size (Lines per Report Page) | 0 (no limit)                  |
|       | Manholes Reported On              | Yes                           |
|       | Links Reported On                 | Yes                           |
|       | Report Status                     | Yes                           |
|       | Minimum Time of Concentration     | 10 minutes                    |
|       | IDF Curve Duration Unit           | Minutes                       |

 

<table>
<colgroup>
<col style="width: 74%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Minimum Time of Concentration</strong></th>
<th><strong>10 minutes</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>IDF Curve Duration Unit</td>
<td>Minutes</td>
</tr>
<tr class="even">
<td>Drainage Area</td>
<td>0 acre</td>
</tr>
<tr class="odd">
<td>Unit Hydrograph Pattern Type</td>
<td>Explicit</td>
</tr>
<tr class="even">
<td>Enable Storm Runoff Computation</td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>Maximum Crown Drop at Manhole</p>
<p> </p></td>
<td><p>3 ft</p>
<p> </p></td>
</tr>
<tr class="even">
<td>Manhole Invert Offset</td>
<td><p>0 ft</p>
<p> </p></td>
</tr>
</tbody>
</table>

** **

Table 2.2 – Units of Measurement

** **

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 32%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Parameter</strong></th>
<th><strong>US Customary Units</strong></th>
<th><strong>SI (Metric) Units</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Flow</td>
<td><p>CFS (cubic feet /sec)</p>
<p>GPM (gallons / min)</p>
<p>MGD (million gallon / day)</p>
<p>IMGD (Imperial MGD)</p>
<p>AFD (acre-feet / day)</p></td>
<td><p>LPS (liters / sec)</p>
<p>LPM (liters / min)</p>
<p>MLD (megaliters / day)</p>
<p>CMH (cubic meters / hr)</p>
<p>CMD (cubic meters / day)</p></td>
</tr>
<tr class="even">
<td>Rim Elevation</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="odd">
<td>Manhole Load</td>
<td>Flow units</td>
<td>Flow units</td>
</tr>
<tr class="even">
<td>Manhole Diameter</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="odd">
<td>Particle Settling Velocity</td>
<td>Feet/sec</td>
<td>Meters/sec</td>
</tr>
<tr class="even">
<td>Limiting Flow Velocity</td>
<td>Feet/sec</td>
<td>Meters/sec</td>
</tr>
<tr class="odd">
<td>Reaction Rate Coefficient</td>
<td>Day<sup>-1</sup></td>
<td>Day<sup>-1</sup></td>
</tr>
<tr class="even">
<td>Temperature</td>
<td><sup>o</sup>C</td>
<td><sup>o</sup>C</td>
</tr>
<tr class="odd">
<td>Wet Well Bottom Elevation</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="even">
<td>Wet Well Levels</td>
<td>Feet above bottom</td>
<td>Meters above bottom</td>
</tr>
<tr class="odd">
<td>Wet Well Diameter</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="even">
<td>Wet Well Volume</td>
<td>Cubic feet</td>
<td>Cubic meters</td>
</tr>
<tr class="odd">
<td>Pipe Length</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="even">
<td><p><u>Quality/Manholes:</u></p>
<p>Concentration</p>
<p>BOD</p>
<p>Time of Concentration</p>
<p>Source Trace</p>
<p>Hydrogen Sulfide</p></td>
<td><p> </p>
<p>Milligrams/liter</p>
<p>Milligrams/liter</p>
<p>Hours</p>
<p>Percent</p>
<p>Milligrams/liter</p></td>
<td><p> </p>
<p>Milligrams/liter</p>
<p>Milligrams/liter</p>
<p>Hours</p>
<p>Percent</p>
<p>Milligrams/liter</p></td>
</tr>
<tr class="odd">
<td><p><u>Quality/Pipes:</u></p>
<p>Concentration</p>
<p>BOD</p>
<p>Time of Concentration</p>
<p>Source Trace</p>
<p>Sediment/Deposition</p>
<p>Hydrogen Sulfide</p>
<p>Corrosion Rate</p></td>
<td><p> </p>
<p>Milligrams/liter</p>
<p>Milligrams/liter</p>
<p>Hours</p>
<p>Percent</p>
<p>Kilograms</p>
<p>Milligrams/liter</p>
<p>Inch/year</p></td>
<td><p> </p>
<p>Milligrams/liter</p>
<p>Milligrams/liter</p>
<p>Hours</p>
<p>Percent</p>
<p>Kilograms</p>
<p>Milligrams/liter</p>
<p>mm/year</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 36%" />
<col style="width: 31%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong><u>Stormwater Modeling:</u></strong></p>
<p><strong>Drainage Area</strong></p>
<p><strong>Subwatershed Area</strong></p>
<p><strong>Channel Length</strong></p>
<p><strong>Rainfall Intensity for Hyetograph</strong></p>
<p><strong>Rainfall Duration for Hyetograph</strong></p>
<p><strong>Unit Hydrograph Ordinates</strong></p>
<p><strong>Watershed Hydraulic Length</strong></p>
<p><strong>Watershed Centroid Distance</strong></p>
<p><strong>Impervious Retention Storage</strong></p>
<p><strong>Pervious Retention Storage</strong></p>
<p><strong>Infiltration Rate</strong></p>
<p><strong>Horton’s Decay Constant</strong></p>
<p><strong>Infiltration Regeneration Constant</strong></p></th>
<th><p><strong> </strong></p>
<p><strong>Acre</strong></p>
<p><strong>Acre</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Inch/hour</strong></p>
<p><strong>Minutes</strong></p>
<p><strong>Flow Units</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Inch/hour</strong></p>
<p><strong>Sec<sup>-1</sup></strong></p>
<p><strong>None</strong></p>
<p><strong>Feet</strong></p>
<p><strong>Inch/hour</strong></p>
<p><strong>Sec-1</strong></p>
<p><strong>None</strong></p></th>
<th><p><strong> </strong></p>
<p><strong>Square meters</strong></p>
<p><strong>Square meters</strong></p>
<p><strong>Meters</strong></p>
<p><strong>mm/hour</strong></p>
<p><strong>Minutes</strong></p>
<p><strong>Flow Units</strong></p>
<p><strong>Meters</strong></p>
<p><strong>Meters</strong></p>
<p><strong>Millimeters</strong></p>
<p><strong>Millimeters</strong></p>
<p><strong>mm/hour</strong></p>
<p><strong>Sec<sup>-1</sup></strong></p>
<p><strong>None</strong></p>
<p><strong>Millimeters</strong></p>
<p><strong>mm/hour</strong></p>
<p><strong>Sec-1</strong></p>
<p><strong>None</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pipe Diameter</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
<tr class="even">
<td>Pipe/Channel Depth</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
<tr class="odd">
<td>Pipe/Channel Width</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
<tr class="even">
<td>Pipe/Channel Side Slopes</td>
<td>None</td>
<td>None</td>
</tr>
<tr class="odd">
<td>Pipe Cover</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
<tr class="even">
<td>Minorloss Crown Drop</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
<tr class="odd">
<td><p>Pipe Roughness</p>
<p>   Hazen-Williams</p>
<p>    Manning</p></td>
<td><p> </p>
<p>None</p>
<p>None</p></td>
<td><p> </p>
<p>None</p>
<p>None</p></td>
</tr>
<tr class="even">
<td>Pump Head</td>
<td>Feet</td>
<td>Meters</td>
</tr>
<tr class="odd">
<td>Pump Flow</td>
<td>Flow units</td>
<td>Flow units</td>
</tr>
<tr class="even">
<td>Pump Speed Ratio</td>
<td>None</td>
<td>None</td>
</tr>
<tr class="odd">
<td>Pump Fixed Flow Capacity</td>
<td>Flow units</td>
<td>Flow Units</td>
</tr>
<tr class="even">
<td>Angle of Excavation</td>
<td>Degrees</td>
<td>Degrees</td>
</tr>
<tr class="odd">
<td>Clearance</td>
<td>Inches</td>
<td>Millimeters</td>
</tr>
</tbody>
</table>

 

**Default H&H or Hydrology and Hydraulic Values from SWMM5**

**A.1       Units of Measurement**

>  

<table>
<colgroup>
<col style="width: 24%" />
<col style="width: 45%" />
<col style="width: 30%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>PARAMETER</strong></th>
<th><blockquote>
<p><strong>US CUSTOMARY</strong></p>
</blockquote></th>
<th><strong>SI METRIC</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Area (Subcatchment)</td>
<td><blockquote>
<p> acres</p>
</blockquote></td>
<td>hectares</td>
</tr>
<tr class="even">
<td>Area (Storage Unit)</td>
<td><blockquote>
<p> square feet</p>
</blockquote></td>
<td>square meters</td>
</tr>
<tr class="odd">
<td>Area (Ponding)</td>
<td><blockquote>
<p> square feet</p>
</blockquote></td>
<td>square meters</td>
</tr>
<tr class="even">
<td>Capillary Suction</td>
<td><blockquote>
<p> inches</p>
</blockquote></td>
<td>millimeters</td>
</tr>
<tr class="odd">
<td>Concentration</td>
<td><blockquote>
<p> mg/L (milligrams/liter)  ug/L (micrograms/liter)  Count/L (counts/liter)</p>
</blockquote></td>
<td>mg/L ug/L Count/L</td>
</tr>
<tr class="even">
<td>Decay Constant (Infiltration)</td>
<td><blockquote>
<p> 1/hours</p>
</blockquote></td>
<td>1/hours</td>
</tr>
<tr class="odd">
<td>Decay Constant (Pollutants)</td>
<td><blockquote>
<p> 1/days</p>
</blockquote></td>
<td>1/days</td>
</tr>
<tr class="even">
<td>Depression Storage</td>
<td><blockquote>
<p> inches</p>
</blockquote></td>
<td>millimeters</td>
</tr>
<tr class="odd">
<td>Depth</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
<tr class="even">
<td>Diameter</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
<tr class="odd">
<td><p>Discharge Coefficient:</p>
<p>    Orifice</p></td>
<td><blockquote>
<p> </p>
<p> dimensionless</p>
</blockquote></td>
<td><p> </p>
<p>dimensionless</p></td>
</tr>
<tr class="even">
<td>    Weir</td>
<td><blockquote>
<p> CFS/foot<sup>n</sup></p>
</blockquote></td>
<td>CMS/meter<sup>n</sup></td>
</tr>
<tr class="odd">
<td>Elevation</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
<tr class="even">
<td>Evaporation</td>
<td><blockquote>
<p> inches/day</p>
</blockquote></td>
<td>millimeters/day</td>
</tr>
<tr class="odd">
<td>Flow</td>
<td><blockquote>
<p> CFS (cubic feet / second)  GPM (gallons / minute)</p>
<p> MGD (million gallons/day)</p>
</blockquote></td>
<td><p>CMS (cubic meters/second)</p>
<p>LPS (liters/second)</p>
<p>MLD (million liters/day)</p></td>
</tr>
<tr class="even">
<td>Head</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
<tr class="odd">
<td>Hydraulic Conductivity</td>
<td><blockquote>
<p> inches/hour</p>
</blockquote></td>
<td>millimeters/hour</td>
</tr>
<tr class="even">
<td>Infiltration Rate</td>
<td><blockquote>
<p> inches/hour</p>
</blockquote></td>
<td>millimeters/hour</td>
</tr>
<tr class="odd">
<td>Length</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
<tr class="even">
<td>Manning's n</td>
<td><blockquote>
<p> seconds/meter<sup>1/3</sup></p>
</blockquote></td>
<td>seconds/meter<sup>1/3</sup></td>
</tr>
<tr class="odd">
<td>Pollutant Buildup</td>
<td><blockquote>
<p> mass/length  mass/acre</p>
</blockquote></td>
<td>mass/length mass/hectare</td>
</tr>
<tr class="even">
<td>Rainfall Intensity</td>
<td><blockquote>
<p> inches/hour</p>
</blockquote></td>
<td>millimeters/hour</td>
</tr>
<tr class="odd">
<td>Rainfall Volume</td>
<td><blockquote>
<p> inches</p>
</blockquote></td>
<td>millimeters</td>
</tr>
<tr class="even">
<td>Slope (Subcatchments)</td>
<td><blockquote>
<p> percent</p>
</blockquote></td>
<td>percent</td>
</tr>
<tr class="odd">
<td>Slope (Cross Section)</td>
<td><blockquote>
<p> rise/run</p>
</blockquote></td>
<td>rise/run</td>
</tr>
<tr class="even">
<td>Street Cleaning Interval</td>
<td><blockquote>
<p> days</p>
</blockquote></td>
<td>days</td>
</tr>
<tr class="odd">
<td>Volume</td>
<td><blockquote>
<p> cubic feet</p>
</blockquote></td>
<td>cubic meters</td>
</tr>
<tr class="even">
<td>Width</td>
<td><blockquote>
<p> feet</p>
</blockquote></td>
<td>meters</td>
</tr>
</tbody>
</table>

>  
>
>  

**A.2       Soil Characteristics**

>  

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 14%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Soil Texture Class</strong></th>
<th><strong>K</strong></th>
<th><strong>Ψ</strong></th>
<th><strong>φ</strong></th>
<th><strong>FC</strong></th>
<th><blockquote>
<p><strong>WP</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Sand</td>
<td><blockquote>
<p> 4.74</p>
</blockquote></td>
<td>  1.93</td>
<td><blockquote>
<p> 0.437</p>
</blockquote></td>
<td> 0.062</td>
<td><blockquote>
<p> 0.024</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Loamy Sand</td>
<td><blockquote>
<p> 1.18</p>
</blockquote></td>
<td>  2.40</td>
<td><blockquote>
<p> 0.437</p>
</blockquote></td>
<td> 0.105</td>
<td><blockquote>
<p> 0.047</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Sandy Loam</td>
<td><blockquote>
<p>0.43</p>
</blockquote></td>
<td><blockquote>
<p> 4.33</p>
</blockquote></td>
<td><blockquote>
<p> 0.453</p>
</blockquote></td>
<td> 0.190</td>
<td><blockquote>
<p> 0.085</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Loam</td>
<td><blockquote>
<p>0.13</p>
</blockquote></td>
<td>3.50</td>
<td><blockquote>
<p> 0.463</p>
</blockquote></td>
<td> 0.232</td>
<td><blockquote>
<p> 0.116</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Silt Loam</td>
<td><blockquote>
<p>0.26</p>
</blockquote></td>
<td>6.69</td>
<td><blockquote>
<p> 0.501</p>
</blockquote></td>
<td> 0.284</td>
<td><blockquote>
<p> 0.135</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Sandy Clay Loam</td>
<td><blockquote>
<p>0.06</p>
</blockquote></td>
<td><blockquote>
<p> 8.66</p>
</blockquote></td>
<td><blockquote>
<p> 0.398</p>
</blockquote></td>
<td> 0.244</td>
<td><blockquote>
<p> 0.136</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Clay Loam</td>
<td><blockquote>
<p>0.04</p>
</blockquote></td>
<td><blockquote>
<p> 8.27</p>
</blockquote></td>
<td><blockquote>
<p> 0.464</p>
</blockquote></td>
<td> 0.310</td>
<td><blockquote>
<p> 0.187</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Silty Clay Loam</td>
<td><blockquote>
<p> 0.04</p>
</blockquote></td>
<td>10.63</td>
<td><blockquote>
<p> 0.471</p>
</blockquote></td>
<td> 0.342</td>
<td><blockquote>
<p> 0.210</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Sandy Clay</td>
<td><blockquote>
<p> 0.02</p>
</blockquote></td>
<td>9.45</td>
<td><blockquote>
<p> 0.430</p>
</blockquote></td>
<td> 0.321</td>
<td><blockquote>
<p>0.221</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Silty Clay</td>
<td><blockquote>
<p> 0.02</p>
</blockquote></td>
<td>11.42</td>
<td><blockquote>
<p> 0.479</p>
</blockquote></td>
<td> 0.371</td>
<td><blockquote>
<p>0.251</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Clay</td>
<td><blockquote>
<p> 0.01</p>
</blockquote></td>
<td>12.60</td>
<td><blockquote>
<p> 0.475</p>
</blockquote></td>
<td> 0.378</td>
<td><blockquote>
<p> 0.265</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  
>
> **K** =   saturated hydraulic conductivity, in/hr Ψ =   suction head, in.
>
> φ=   porosity, fraction **FC** =   field capacity, fraction **WP** =   wilting point, fraction
>
>  
>
> Source: Rawls, W.J. et al., (1983). *J. Hyd. Engr*., 109:1316.

 

> Note: The following relation between Ψ and K can be derived from this table:

                                         <img src="./media/image1.gif" style="width:3.44792in;height:0.56458in" />

>  

**A.3       NRCS Hydrologic Soil Group Definitions**

>  

<table>
<colgroup>
<col style="width: 11%" />
<col style="width: 64%" />
<col style="width: 23%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong> </strong></p>
<p><strong> </strong></p>
<p><strong>Group</strong></p></th>
<th><blockquote>
<p><strong> </strong></p>
<p><strong> </strong></p>
<p><strong>Meaning</strong></p>
</blockquote></th>
<th><p><strong>Saturated Hydraulic</strong></p>
<p><strong>Conductivity</strong></p>
<p><strong>(in/hr)</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p> </p>
<p>A</p></td>
<td><blockquote>
<p>Low runoff potential.</p>
<p>Water is transmitted freely through the soil. Group A soils typically have less than 10 percent clay and more than 90 percent sand or gravel and have gravel or sand textures. </p>
</blockquote></td>
<td><p> </p>
<p>&gt; 1.42</p></td>
</tr>
<tr class="even">
<td><p> </p>
<p>B</p></td>
<td><blockquote>
<p>Moderately low runoff potential.</p>
<p>Water transmission through the soil is unimpeded. Group B soils typically have between 10 percent and 20 percent clay and 50 percent to 90 percent sand and have loamy sand or sandy loam textures.</p>
</blockquote></td>
<td><p> </p>
<p>0.57 – 1.42</p></td>
</tr>
<tr class="odd">
<td> </td>
<td><blockquote>
<p>Moderately high runoff potential.</p>
</blockquote></td>
<td> </td>
</tr>
<tr class="even">
<td>C</td>
<td><blockquote>
<p>Water transmission through the soil is somewhat restricted. Group C soils typically have between 20 percent and 40 percent clay and less than 50 percent sand and have loam, silt loam, sandy clay loam, clay loam, and silty clay loam textures.</p>
</blockquote></td>
<td>0.06 - 0.57</td>
</tr>
<tr class="odd">
<td> </td>
<td><blockquote>
<p>High runoff potential.</p>
</blockquote></td>
<td> </td>
</tr>
<tr class="even">
<td>D</td>
<td><blockquote>
<p>Water movement through the soil is restricted or very restricted. Group D soils typically have greater than 40 percent clay, less than 50 percent sand, and have clayey textures.</p>
</blockquote></td>
<td>&lt; 0.06</td>
</tr>
</tbody>
</table>

>  
>
> Source: Hydrology National Engineering Handbook, Chapter 7, Natural Resources Conservation Service, U.S. Department of Agriculture, January 2009.
>
>  

**A.4       SCS Curve Numbers<sup>1</sup>**

>  

<table>
<colgroup>
<col style="width: 56%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr class="header">
<th rowspan="2"><blockquote>
<p><strong>Land Use Description  </strong></p>
</blockquote></th>
<th><strong> </strong></th>
<th colspan="3"><strong>Hydrologic Soil Group</strong></th>
</tr>
<tr class="odd">
<th><blockquote>
<p><strong>A</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>B</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>C</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>D</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Cultivated land</p>
<p>   Without conservation treatment</p>
<p>   With conservation treatment</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>72</p>
<p>62</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>81</p>
<p>71</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>88</p>
<p>78</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>91</p>
<p>81</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Pasture or range land    Poor condition</p>
<p>   Good condition</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>68</p>
<p>39</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>79</p>
<p>61</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>86</p>
<p>74</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>89</p>
<p>80</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Meadow</p>
<p>   Good condition</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>30</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>58</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>71</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>78</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Wood or forest land</p>
<p>   Thin stand, poor cover, no mulch</p>
<p>   Good cover<strong><sup>2</sup></strong></p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>45</p>
<p>25</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>66</p>
<p>55</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>77</p>
<p>70</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>83</p>
<p>77</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Open spaces, lawns, parks, golf courses, cemeteries, etc.</p>
<p>   Good condition: grass cover on</p>
<p>   75% or more of the area</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p> </p>
<p>39</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p> </p>
<p>61</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p> </p>
<p>74</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p> </p>
<p>80</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>   Fair condition: grass cover on    50-75% of the area</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>49</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>69</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>79</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>84</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Commercial and business areas (85% impervious) </p>
</blockquote></td>
<td><blockquote>
<p>89</p>
</blockquote></td>
<td><blockquote>
<p>92</p>
</blockquote></td>
<td><blockquote>
<p>94</p>
</blockquote></td>
<td><blockquote>
<p>95</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Industrial districts (72% impervious) </p>
</blockquote></td>
<td><blockquote>
<p>81</p>
</blockquote></td>
<td><blockquote>
<p>88</p>
</blockquote></td>
<td><blockquote>
<p>91</p>
</blockquote></td>
<td><blockquote>
<p>93</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Residential<strong><sup>3</sup></strong> </p>
<p>Average lot size (% Impervious<strong><sup>4</sup></strong>)</p>
<p>   1/8 ac or less (65)    1/4 ac (38)</p>
<p>   1/3 ac (30)</p>
<p>   1/2 ac (25)</p>
<p>   1 ac (20)</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p>77</p>
<p>61</p>
<p>57</p>
<p>54</p>
<p>51</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p>85</p>
<p>75</p>
<p>72</p>
<p>70</p>
<p>68</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p>90</p>
<p>83</p>
<p>81</p>
<p>80</p>
<p>79</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p> </p>
<p>92</p>
<p>87</p>
<p>86</p>
<p>85</p>
<p>84</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Paved parking lots, roofs, driveways, etc.<strong><sup>5</sup></strong></p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Streets and roads</p>
<p>   Paved with curbs and storm sewers<strong><sup>5</sup></strong></p>
<p>   Gravel</p>
<p>   Dirt</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>98</p>
<p>76</p>
<p>72</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>98</p>
<p>85</p>
<p>82</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>98</p>
<p>89</p>
<p>87</p>
</blockquote></td>
<td><blockquote>
<p> </p>
<p>98</p>
<p>91</p>
<p>89</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  

Source*: SCS Urban Hydrology for Small Watersheds*, 2<sup>nd</sup> Ed., (TR-55), June 1986.

>  
>
> Footnotes:
>
> **1. ** Antecedent moisture condition II.
>
> **2. ** Good cover is protected from grazing and litter and brush cover soil.
>
> **3. ** Curve numbers are computed assuming that the runoff from the house and driveway is directed toward the street with a minimum of roof water directed to lawns where additional infiltration could occur.
>
> **4. ** The remaining pervious areas (lawn) are considered to be in good pasture condition for these curve numbers.
>
> **5. ** In some warmer climates of the country a curve number of 95 may be used.
>
> **A.5         ** **Depression Storage**
>
>  

<table>
<colgroup>
<col style="width: 51%" />
<col style="width: 48%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Impervious surfaces  </strong></th>
<th><blockquote>
<p><strong>0.05 - 0.10 inches</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Lawns </td>
<td><blockquote>
<p>0.10 - 0.20 inches</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Pasture </td>
<td><blockquote>
<p>0.20 inches</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Forest litter </td>
<td><blockquote>
<p>0.30 inches</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  
>
> Source: ASCE, (1992). *Design & Construction of Urban Stormwater Management Systems,* New York, NY.
>
>  
>
> **A.6         ** **Manning’s n – Overland Flow**
>
>  

<table>
<colgroup>
<col style="width: 61%" />
<col style="width: 38%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Surface </strong></th>
<th><blockquote>
<p><strong>n</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Smooth asphalt </td>
<td><blockquote>
<p>0.011</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Smooth concrete </td>
<td><blockquote>
<p>0.012</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Ordinary concrete lining </td>
<td><blockquote>
<p>0.013</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Good wood </td>
<td><blockquote>
<p>0.014</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Brick with cement mortar</td>
<td><blockquote>
<p>0.014</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Vitrified clay</td>
<td><blockquote>
<p>0.015</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Cast iron </td>
<td><blockquote>
<p>0.015</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Corrugated metal pipes </td>
<td><blockquote>
<p>0.024</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Cement rubble surface </td>
<td><blockquote>
<p>0.024</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Fallow soils (no residue) </td>
<td><blockquote>
<p>0.05</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><p>Cultivated soils</p>
<p>   Residue cover &lt; 20%</p></td>
<td><blockquote>
<p> </p>
<p>0.06</p>
</blockquote></td>
</tr>
<tr class="even">
<td>   Residue cover &gt; 20%</td>
<td><blockquote>
<p>0.17</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Range (natural) </td>
<td><blockquote>
<p>0.13</p>
</blockquote></td>
</tr>
<tr class="even">
<td><p>Grass</p>
<p>   Short, prairie    Dense</p></td>
<td><blockquote>
<p> </p>
<p>0.15</p>
<p>0.24</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>   Bermuda grass</td>
<td><blockquote>
<p>0.41</p>
</blockquote></td>
</tr>
<tr class="even">
<td><p>Woods</p>
<p>   Light underbrush</p>
<p>   Dense underbrush</p></td>
<td><blockquote>
<p> </p>
<p>0.40</p>
<p>0.80</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  
>
> Source: McCuen, R. et al. (1996), *Hydrology*, FHWA-SA96-067, Federal Highway Administration, Washington, DC
>
>  
>
> **A.7         ** **Manning’s n – Closed Conduits**
>
>  

<table>
<colgroup>
<col style="width: 56%" />
<col style="width: 43%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Conduit Material</strong></th>
<th><blockquote>
<p><strong>Manning n</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Asbestos-cement pipe</td>
<td><blockquote>
<p>0.011 - 0.015</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Brick</td>
<td><blockquote>
<p>0.013 - 0.017</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><p>Cast iron pipe</p>
<p>- Cement-lined &amp; seal coated</p></td>
<td><blockquote>
<p> </p>
<p>0.011 - 0.015</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Concrete (monolithic) - Smooth forms</td>
<td><blockquote>
<p> </p>
<p>0.012 - 0.014</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>- Rough forms</td>
<td><blockquote>
<p>0.015 - 0.017</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Concrete pipe</td>
<td><blockquote>
<p>0.011 - 0.015</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><p>Corrugated-metal pipe</p>
<p>(1/2-in. x 2-2/3-in. corrugations) - Plain</p></td>
<td><blockquote>
<p> </p>
<p> </p>
<p>0.022 - 0.026</p>
</blockquote></td>
</tr>
<tr class="even">
<td>- Paved invert</td>
<td><blockquote>
<p>0.018 - 0.022</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>- Spun asphalt lined</td>
<td><blockquote>
<p>0.011 - 0.015</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Plastic pipe (smooth)</td>
<td><blockquote>
<p>0.011 - 0.015</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><p>Vitrified clay</p>
<p>-  Pipes</p>
<p>-  Liner plates</p></td>
<td><blockquote>
<p> </p>
<p>0.011 - 0.015</p>
<p>0.013 - 0.017</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  
>
> Source: ASCE (1982). *Gravity Sanitary Sewer Design and Construction*, ASCE Manual of Practice No. 60, New York, NY.
>
>  
>
> **A.8         ** **Manning’s n – Open Channels**
>
>  

<table>
<colgroup>
<col style="width: 60%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Channel Type</strong></th>
<th><strong>Manning n</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Lined Channels</td>
<td><blockquote>
<p> </p>
</blockquote></td>
</tr>
<tr class="even">
<td>   - Asphalt</td>
<td>0.013 - 0.017</td>
</tr>
<tr class="odd">
<td>   - Brick</td>
<td>0.012 - 0.018</td>
</tr>
<tr class="even">
<td>   - Concrete</td>
<td>0.011 - 0.020</td>
</tr>
<tr class="odd">
<td>   - Rubble or riprap</td>
<td>0.020 - 0.035</td>
</tr>
<tr class="even">
<td>   - Vegetal</td>
<td>0.030 - 0.40</td>
</tr>
<tr class="odd">
<td>Excavated or dredged</td>
<td><blockquote>
<p> </p>
</blockquote></td>
</tr>
<tr class="even">
<td>   - Earth, straight and uniform</td>
<td>0.020 - 0.030</td>
</tr>
<tr class="odd">
<td>   - Earth, winding, fairly uniform</td>
<td>0.025 - 0.040</td>
</tr>
<tr class="even">
<td>   - Rock</td>
<td>0.030 - 0.045</td>
</tr>
<tr class="odd">
<td>   - Unmaintained</td>
<td>0.050 - 0.140</td>
</tr>
<tr class="even">
<td>Natural channels (minor streams, top width at flood stage &lt; 100 ft)</td>
<td><blockquote>
<p> </p>
<p> </p>
</blockquote></td>
</tr>
<tr class="odd">
<td>   - Fairly regular section</td>
<td>0.030 - 0.070</td>
</tr>
<tr class="even">
<td>   - Irregular section with pools</td>
<td>0.040 - 0.100</td>
</tr>
</tbody>
</table>

>  
>
> Source: ASCE (1982). *Gravity Sanitary Sewer Design and Construction,* ASCE Manual of Practice No. 60, New York, NY.
>
>  
>
>  
>
> **A.9         ** **Water Quality Characteristics of Urban Runoff**
>
>  

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Constituent</strong></th>
<th><blockquote>
<p><strong>Event Mean Concentrations</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>TSS (mg/L)</td>
<td><blockquote>
<p>180 - 548</p>
</blockquote></td>
</tr>
<tr class="even">
<td>BOD (mg/L)</td>
<td><blockquote>
<p>12 - 19</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>COD (mg/L)</td>
<td><blockquote>
<p>82 - 178</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Total P (mg/L)</td>
<td><blockquote>
<p>0.42 - 0.88</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Soluble P (mg/L)</td>
<td><blockquote>
<p>0.15 - 0.28</p>
</blockquote></td>
</tr>
<tr class="even">
<td>TKN (mg/L)</td>
<td><blockquote>
<p>1.90 - 4.18</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>NO2/NO3-N (mg/L)</td>
<td><blockquote>
<p>0.86 - 2.2</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Total Cu (ug/L)</td>
<td><blockquote>
<p>43 - 118</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Total Pb (ug/L)</td>
<td><blockquote>
<p>182 - 443</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Total Zn (ug/L)</td>
<td><blockquote>
<p>202 - 633</p>
</blockquote></td>
</tr>
</tbody>
</table>

>  
>
> Source: U.S. Environmental Protection Agency. (1983). *Results of the Nationwide Urban Runoff Program (NURP), Vol. 1*, NTIS PB 84-185552), Water Planning Division, Washington, DC.
>
>  
>
> Source:   [<u>http://nepis.epa.gov/Exe/ZyPDF</u>](http://www.epa.gov/water-research/storm-water-management-model-swmm)

 

**References for InfoSewer  **

- American Society of Civil Engineers Manuals and Reports on Engineering Practice No. 60 (1982). *Gravity Sanitary Sewer Design and Construction*. Reston, VA.

- Babbitt, H.E. and Baumann, E.R. (1958). *Sewerage and Sewage Treatment*. John Wiley & Sons, Inc., New York, NY.

- Bedient, P. B. and Huber, W.C. 1992. Hydrology and Flood Plain Analysis. Addison-Wesley, New York.

- Chatila, J.G. (2003). Muskingum Method, EXTRAN and ONE-D for Routing Unsteady Flows in Open Channels. *Journal Canadian Water Resources*, Vol. 28, No. 3, pp. 481-498.

- Cunge JA and Wegner M 'Integration numerique des equations d'ecoulement de Barre de Saint-Venant parun schema implicite de differences finies: Application au cas d'une galerie tantot en charge, tantot a surfacelibre', La Houille Blance, No 1, 1964

- Dickinson, R.E., Huber, W.C., Roesener, L.A. and Aldrich, J.A. (June 1990) Advances in SWMM EXTRAN flow routing. Proceedings of 5th International Conference on Urban Storm Drainage, Tokyo Japan, pp. 287-292

- Goldberg, D.E. (1989). *Genetic Algorithms in Search, Optimization and Machine Learning*. Addison Wesley, Reading, MA.

- Gomez et al. Hydraulic Engineering Software IV, Fluid Flow Modelling, 1992

- Huber, C., & Dickinson, R.E. (1988). Storm Water Management Model: User’s Manual. U.S. EPA/600/3-88/001a. Athens: Georgia (USA).

- Huber, W.C., Heaney, J.P., Aggidis, D.A., Dickinson, R.E. and Wallace, R.W., "Urban Rainfall-Runoff-Quality Data Base," EPA-600/2-81-238 (NTIS PB82221094), Environmental Protection Agency, Cincinnati, OH, October 1981a.

- Huber, W.C., Heaney, J.P., Medina, M.A., Peltz, W.A., Sheikh, H. and Smith, G.F., "Storm Water Management Model User's Manual - Version II," EPA-670/2-75017 (NTIS PB-257809), Environmental Protection Agency, Cincinnati, OH, March 1975.

- Huber, W.C., Heaney, J.P., Aggidis, D.A., Dickinson, R.E. and Wallace, R.W., "Urban Rainfall-Runoff-Quality Data Base," EPA-600/2-81-238 (NTIS PB82221094), Environmental Protection Agency, Cincinnati, OH, October 1981a.

- Huber, W.C., Heaney, J.P. and Cunningham, B.A., "Storm Water Management Model (SWMM) Bibliography," EPA Report EPA/600/3-85-077 (NTIS PB86-136041/AS), Environmental Protection Agency, Athens, GA, September 1985.

- Huber, W.C., Heaney, J.P., Medina, M.A., Peltz, W.A., Sheikh, H. and Smith, G.F., "Storm Water Management Model User's Manual - Version II," EPA-670/2-75017 (NTIS PB-257809), Environmental Protection Agency, Cincinnati, OH, March 1975.

- Huber, W.C., Heaney, J.P., Nix, S.J., Dickinson, R.E. and Polmann, D.J., "Storm Water Management Model User's Manual, Version III," EPA-600/2-84-109a (NTIS PB84-198423), Environmental Protection Agency, Cincinnati, OH, November 1981b

- James, W., Rossman, L.A. , Huber, W.C. , Dickinson, R.E. , James, R.C. , Roesner, L.A.,  Aldrich, J.A. ,  2008. User’s guide to SWMM5, 12th Edition, Computational Hydraulics International, Guelph, Ontario.

- Liggett, J A and Cunge, J A, "Numerical methods of solution for the unsteady flow equation, in unsteady flow in open channels", 1, Edited by Mahmood, K. and Yevjevich, V, Water Resources Publ., Fort Collins, Colorado, 1975.

- Maidment, D.R. (1993). *Handbook of Hydrology.* McGraw-Hill, New York, NY.

- Mays, L.W. (2001). *Stormwater Collection Systems Design Handbook*. McGraw-Hill, New York, NY.

- Metcalf & Eddy, Inc. (2003). *Wastewater Engineering Treatment and Reuse*. G. Tchobanoglous ed., Fourth Edition. McGraw Hill, New York, NY.

- Metcalf & Eddy, Inc. (1981). *Wastewater Engineering: Collection and Pumping of Wastewater*.

- G. Tchobanoglous ed.. McGraw Hill, New York, NY.

- Preissmann A, Propagation des intumescences dans les canaux et rivieres. Presented at the 1st Congress of the French association for Computation, Grenoble, France, 1961

- Richens, P J, "Development of an accurate simulation model for urban storm sewers", Report No IT297, DoE Contract PEDC 7/7/053, HR Wallingford Ltd, 1985.

- Rossman, Lewis A. 2008. Storm Water Management Model User's Manual Version 5.0. Pub. Water Supply and Water Resources Division, National Risk Management Research Laboratory, Cincinnati, OH.

- U.S. Department of Agriculture, Soil Conservation Service (1986). *Urban Hydrology for Small Watersheds*. Washington, D.C.

- Yen, B C 'Open channel flow equations revisited' J Eng Mech Div ASCE, Vol 99, No EM5, 1973

- Bennett, D. et al. (1999). Using flow prediction technologies to control sanitary sewer overflows. Water Environment Research Foundation (WERF), Project 97-CTS-8, Alexandria, VA.

- Boulos, P.F. (2005). InfoSWMM Suite – User’s guide. MWH Soft, Inc., Broomfield, CO.

- Boulos, P.F. (2006). H2OMAP SWMM Suite – User’s guide. MWH Soft, Inc., Broomfield, CO.

 
