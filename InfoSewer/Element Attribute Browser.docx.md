# Element Attribute Browser in InfoSewer

The Attribute Browser dialog box allows the user to view and edit the database information related to a selected link or node facility.  Shown below, the dialog box contains all information related to links and nodes when selected by the user.  

Unless "grayed" out, any of the records under the section headers (Geometry, Modeling, Information) are editable at any time.  While using the Attribute Browser, click the red check box next to the title to expand and contract the section headers.   The Output data section is available only after a successful model run. Additionally other features allow you to locate (search) elements, create default values and assign specific values through the [<u>Tools</u>](javascript:BSSCPopup('../Tools_Icon.htm');) menu.

To learn more about the multitude of icons related to the Attribute Browser, [<u>click here</u>](javascript:BSSCPopup('../User_Interface/Dialog_Boxes/Attribute_Browser_Icons.htm');) or select any of the icons below.

**<u>The Link Element</u>**

The link tab allows the user to see the database information related to a graphically selected link.                        

Click on any of the drop down links below to learn more about the database information contained in the Attribute Browser.                                                                                                                  

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong><u>Pipe Data</u></strong></p>
<p>Pipe ID</p>
<p><strong>ID</strong> - The unique H2OMAP Sewer identification of the pipe.</p>
<p><strong>Description</strong> - A user defined description of the pipe.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> ID</strong> - The unique InfoSewer identification of the pipe.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Description</strong> - A user defined description of the pipe.</p>
<p>Geometry</p>
<p><strong>Start Node</strong> - The upstream node for the pipe.</p>
<p><strong>End Node</strong> - The downstream node for the pipe.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Start Node</strong> - The upstream node for the pipe.</p>
<p><strong>End Node</strong> - The downstream node for the pipe.</p>
<p>Modeling</p>
<p><strong>From Invert</strong> - The upstream invert elevation of the pipe</p>
<p><strong>To Invert</strong> - The downstream invert elevation of the pipe.</p>
<p><strong>Length</strong> - The length of the pipe.  Created automatically if Tools -&gt; Preferences -&gt; Operation -&gt; Auto Length Calculation is checked on.</p>
<p><strong>Diameter</strong> - The diameter of the channel (for circular pipes) as specified by the user. For non-circular conduits, required input parameters may be one or more of channel depth, channel width, and side slopes.</p>
<p><strong>Coefficient</strong> - The Manning (gravity flow) or Hazen-Williams (force main) roughness coefficient as assigned by the user.</p>
<p><strong>Parallel</strong> - The number of pipes in parallel with the existing pipe.  Each parallel pipe is given the exact same parameters as the existing pipe.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> From Invert</strong> - The upstream invert elevation of the pipe. Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> To Invert</strong> - The downstream invert elevation of the pipe.  Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Length</strong> - The length of the pipe.  Created automatically if Tools -&gt; Preferences -&gt; Operation -&gt; Auto Length Calculation is checked on.  Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Diameter</strong> - The diameter of the channel (for circular pipes) as specified by the user. For non-circular conduits, required input parameters may be one or more of channel depth, channel width, and side slopes. Units are inches or millimeters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Coefficient</strong> - The Manning (gravity flow) or Hazen-Williams (force main) roughness coefficient as assigned by the user.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Parallel</strong> - The number of pipes in parallel with the existing pipe.  Each parallel pipe is given the exact same parameters as the existing pipe.  Unitless.</p>
<p>Output</p>
<p><strong>Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Reports_Graphing_and_Output\Available_Report_Types.htm#StaticGravity"><u>Click here</u></a> to learn more about the fields provided in a pipe output report.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="javascript:BSSCPopup(&#39;../Reports_Graphing_and_Output/Available_Report_Types.htm&#39;);"><u>Click here</u></a> to learn more about the fields provided in a pipe output report.</p>
<p><strong><u>Pump Data</u></strong></p>
<p>Pump ID</p>
<p><strong>ID</strong> - The unique H2OMAP Sewer identification of the pump.</p>
<p><strong>Description</strong> - A user defined description of the pump.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> ID</strong> - The unique InfoSewer identification of the pump.</p>
<p><strong>Description</strong> - A user defined description of the pump.</p>
<p>Geometry</p>
<p><strong>Start Node</strong> - The upstream node for the pump.</p>
<p><strong>End Node</strong> - The downstream node for the pump.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Start Node</strong> - The upstream node for the pump.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> End Node</strong> - The downstream node for the pump.</p>
<p>Modeling</p>
<p><strong>Type</strong> - The type of pump to be used by H2OMAP Sewer.  To change the type, merely click in the drop down box and select from the list.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Data_Elements\Pumps.htm#TypesPump"><u>Click here</u></a> to learn more about each type and the fields required.</p>
<p><strong>Parallel</strong> - The number of pumps in parallel to the existing pump.  Parallel pumps are given the exact specifications of the existing pump.</p>
<p><a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Data_Elements\Pumps.htm#TypesPump"><u>Click here</u></a> to learn more about the types of pumps available in H2OMAP Sewer.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Type</strong> - The type of pump to be used by InfoSewer..  To change the type, merely click in the drop down box and select from the list.  <a href="javascript:BSSCPopup(&#39;Pumps.htm&#39;);"><u>Click here</u></a> to learn more about each type and the fields required.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Parallel</strong> - The number of pumps in parallel to the existing pump.  Parallel pumps are given the exact specifications of the existing pump.   Unitless.</p>
<p><a href="javascript:BSSCPopup(&#39;Pumps.htm&#39;);"><u>Click here</u></a> to learn more about the types of pumps available</p>
<p>Information</p>
<p><strong>Installation Year</strong> - The year the pump was installed.</p>
<p><strong>Retirement Year</strong> - The year the pump is expected to be retired from service.</p>
<p><strong>Zone</strong> - The service area of the selected pump.</p>
<p><strong>Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><strong>Rated Power</strong> - The rated horsepower of the pump in the field.</p>
<p><strong>Cost ID</strong> - A database field used to assign differing cost identifiers to differing facilities.</p>
<p><strong>(Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Database_Management\DBEditor.htm#AddingFields"><u>Click here</u></a> to learn how to add a field.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Installation Year</strong> - The year the pump was installed.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Retirement Year</strong> - The year the pump is expected to be retired from service.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Zone</strong> - The service area of the selected pump.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Rated Power</strong> - The rated horsepower of the pump in the field.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Cost ID</strong> - A database field used to assign differing cost identifiers to differing facilities.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> (Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="javascript:BSSCPopup(&#39;../Database_Management/DBEditor.htm#AddingFields&#39;);"><u>Click here</u></a> to learn how to add a field.</p>
<p>Output</p>
<p><strong>Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Reports_Graphing_and_Output\Available_Report_Types.htm#EPSPump"><u>Click here</u></a> to learn more about the fields provided in a pump output report.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="javascript:BSSCPopup(&#39;../Reports_Graphing_and_Output/Available_Report_Types.htm#EPSPump&#39;);"><u>Click here</u></a> to learn more about the fields provided in a pump output report.</p></th>
<th><p><img src="./media/image2.jpeg" style="width:3.97569in;height:8.82222in" /></p>
<p> </p>
<p><img src="./media/image3.jpeg" style="width:3.83403in;height:8.77917in" /></p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

 

**<u>The Node Element</u>**

The node tab allows the user to see the database information related to a graphically selected node.

 

<table>
<colgroup>
<col style="width: 36%" />
<col style="width: 63%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong><u>Manhole Data (Normal, Chamber, Outlet)</u></strong></p>
<p>Node ID</p>
<p><strong>ID</strong> - The unique H2OMAP Sewer identification of the manhole.</p>
<p><strong>Description</strong> - A user defined description of the node.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> ID</strong> - The unique H2OMAP Sewer identification of the manhole.</p>
<p><strong>Description</strong> - A user defined description of the node.</p>
<p>Geometry</p>
<p><strong>X</strong> - The x-coordinate of the node.</p>
<p><strong>Y</strong> - The y-coordinate of the node.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> X</strong> - The x-coordinate of the node.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Y</strong> - The y-coordinate of the node.</p>
<p>Modeling</p>
<p><strong>Diameter</strong> - The internal diameter of the manhole.</p>
<p><strong>Rim Elevation</strong> - The elevation of the rim of the manhole as specified by the user (usually a value denoted above sea level).</p>
<p><strong>Load1</strong> - The base sewage loading demand at the manhole.  Up to ten base loadings can be entered for a single manhole.  The <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Sewer_Design\Extra_Load.htm"><u>extra load</u></a> option allows additional loadings to be added as needed.</p>
<p><strong>Type1</strong> - Specify whether the load is an unpeakable flow, an peakable base flow or a peakable coverage flow.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Sewer_Design\Simulation_Options.htm#Peaking"><u>Click here</u></a> to learn more about each type.</p>
<p><strong>Pattern1</strong> - The user defined diurnal pattern for the manhole loading.  Required for an EPS analysis.</p>
<p><strong>Coverage1</strong> - The base population to be used during a peakable coverage flow determination.</p>
<p><strong>Subbasin Area</strong> - Area of the subwatershed that drains to the loading manhole. This variable is required for stormwater modeling.</p>
<p><strong>Runoff Coefficient </strong>-<strong> </strong>Ratio of storm runoff to rainfall volume. This variable is required during steady state simulation of stormwater.</p>
<p><strong>Channel Slope</strong> - Average slope of the longest flow channel for the subwatershed that drains to the loading manhole. This variable is required during steady state simulation of stormwater.</p>
<p><strong>Channel Length </strong>-<strong> </strong>Length of the longest flow path for the subbasin that drains to the manhole. This variable is required during steady state simulation of stormwater.</p>
<p><strong>Hyetograph </strong>- A plot of rainfall intensity versus time. This variable is required during dynamic simulation of stormwater.</p>
<p><strong>Hydrograph </strong>-  Refers to a unit hydrograph pattern, and is required  is required during dynamic simulation of stormwater.</p>
<p><strong>% Impervious</strong> : Percentage of the subwatershed that is covered with impervious       land uses. This parameter is used to estimate depression storage losses.</p>
<p><strong>Pervious Retention </strong>: Refers to depression storage of the pervious portion of the subwatershed. The value should be given in feet for US Customary units, and in mm for SI units.</p>
<p><strong>Impervious Retention </strong>: Refers to depression storage of the impervious portion of the subwatershed. The value should be given in feet for US Customary units, and in mm for SI units.</p>
<p><strong>Initial Infiltration </strong>: maximum or initial infiltration rate (at t = 0). The parameter is accepted in inches/hour for US Customary, and in mm/hour for SI units. The default value is value is 3<strong> </strong>inches/hour (76.2 mm/hour).</p>
<p><strong>Final Infiltration </strong>:<strong> </strong>final infiltration rate. The value should be provided in inches/hour for US Customary, and in mm/hour for SI units. The default value is 0.5 inches/hour.</p>
<p><strong>Decay Constant </strong>: decay coefficient for Horton's infiltration equation, in per second. The default value is 0.001/second.</p>
<p><strong>Regeneration Constant</strong> : Decay coefficient for the exponential recovery curve, in per second. It is generally considered to be less than decay constant, implying a longer drying curve than wetting curve.</p>
<p> </p>
<p><strong>Time of Concentration:</strong> Time of concentration for the subcatchment that is just starting to contribute to the node.</p>
<p><strong> </strong></p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Diameter</strong> - The internal diameter of the manhole.  Feet or Meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Rim Elevation</strong> - The elevation of the rim of the manhole as specified by the user (usually a value denoted above sea level).  Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong>  Headloss Coef</strong> – Used to calculate headloss in the manhole itself using the exit pipe velocity ( see <a href="javascript:BSSCPopup(&#39;../HEADLOSS_AT_MANHOLES.htm&#39;);"><u>link</u></a> for more details on Headloss Coefficients and manhole headloss)</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Load1</strong> - The base sewage loading demand at the manhole.  Up to ten base loadings can be entered for a single manhole.  The <a href="javascript:BSSCPopup(&#39;../Sewer_Design/Extra_Load.htm&#39;);"><u>extra load</u></a> option allows additional loadings to be added as needed.  Units from the Run Manager.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Type1</strong> - Specify whether the load is an unpeakable flow, an peakable base flow or a peakable coverage flow.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Sewer_Design\Simulation_Options.htm#Peaking"><u>Click here</u></a> to learn more about each type.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Pattern1</strong> - The user defined diurnal pattern for the manhole loading.  Required for an EPS analysis.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Coverage1</strong> - The base population to be used during a peakable coverage flow determination.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Subbasin Area</strong> - Area of the subwatershed that drains to the loading manhole. This variable is required for stormwater modeling.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Runoff Coefficient </strong>-<strong> </strong>Ratio of storm runoff to rainfall volume. This variable is required during steady state simulation of stormwater.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Channel Slope</strong> - Average slope of the longest flow channel for the subwatershed that drains to the loading manhole. This variable is required during steady state simulation of stormwater.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Channel Length </strong>-<strong> </strong>Length of the longest flow path for the subbasin that drains to the manhole. This variable is required during steady state simulation of stormwater. Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Hyetograph </strong>- A plot of rainfall intensity versus time. This variable is required during dynamic simulation of stormwater.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Hydrograph </strong>-  Refers to a unit hydrograph pattern, and is required  is required during dynamic simulation of stormwater.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> % Impervious</strong> : Percentage of the subwatershed that is covered with impervious       land uses. This parameter is used to estimate depression storage losses.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Pervious Retention </strong>: Refers to depression storage of the pervious portion of the subwatershed. The value should be given in feet for US Customary units, and in mm for SI units.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Impervious Retention </strong>: Refers to depression storage of the impervious portion of the subwatershed. The value should be given in feet for US Customary units, and in mm for SI units.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Initial Infiltration </strong>: maximum or initial infiltration rate (at t = 0). The parameter is accepted in inches/hour for US Customary, and in mm/hour for SI units. The default value is value is 3<strong> </strong>inches/hour (76.2 mm/hour).</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Final Infiltration </strong>:<strong> </strong>final infiltration rate. The value should be provided in inches/hour for US Customary, and in mm/hour for SI units. The default value is 0.5 inches/hour.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Decay Constant </strong>: decay coefficient for Horton's infiltration equation, in per second. The default value is 0.001/second.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Regeneration Constant</strong> : Decay coefficient for the exponential recovery curve, in per second. It is generally considered to be less than decay constant, implying a longer drying curve than wetting curve.</p>
<p> </p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Time of Concentration:</strong> Time of concentration for the subcatchment that is just starting to contribute to the node.  Minutes.</p>
<p> </p>
<p>Information</p>
<p><strong>Type </strong>- The type of manhole.  Type 0 is a normal manhole, type 1 is a chamber manhole while type 2 is an outlet.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Data_Elements\Manholes.htm"><u>Click here</u></a> to learn more.</p>
<p><strong>Elevation</strong> - The ground elevation of the manhole.  This value may differ than the rim elevation.</p>
<p><strong>Installation Year</strong> - The year the manhole was installed.</p>
<p><strong>Retirement Year</strong> - The year the manhole is expected to be retired from service.</p>
<p><strong>Zone</strong> - The service are of the selected manhole.</p>
<p><strong>Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><strong>(Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Database_Management\DBEditor.htm#AddingFields"><u>Click here</u></a> to learn how to add a field.</p>
<p> </p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Type </strong>- The type of manhole.  Type 0 is a normal manhole, type 1 is a chamber manhole while type 2 is an outlet.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Data_Elements\Manholes.htm"><u>Click here</u></a> to learn more.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Elevation</strong> - The ground elevation of the manhole.  This value may differ than the rim elevation.  Units are feet or meters.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Installation Year</strong> - The year the manhole was installed.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Retirement Year</strong> - The year the manhole is expected to be retired from service.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Zone</strong> - The service are of the selected manhole.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> (Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="javascript:BSSCPopup(&#39;../Database_Management/DBEditor.htm#AddingFields&#39;);"><u>Click here</u></a> to learn how to add a field.</p>
<p>Output</p>
<p><strong>Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Reports_Graphing_and_Output\Available_Report_Types.htm#EPSLoadingMH"><u>Click here</u></a> to learn more about the fields provided in a manhole node output report.</p>
<p>Output - The output fields will display the output results for the latest model run (*active* output source).  <a href="javascript:BSSCPopup(&#39;../Reports_Graphing_and_Output/Available_Report_Types.htm#EPSLoadingMH&#39;);"><u>Click here</u></a> to learn more about the fields provided in a manhole node output report.</p>
<p><strong><u>Wet Well Data</u></strong></p>
<p>Wet Well ID</p>
<p><strong>ID</strong> - The unique H2OMAP Sewer identification of the wet well.</p>
<p><strong>Description</strong> - A user defined description of the wet well.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> ID</strong> - The unique  InfoSewer identification of the wet well.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Description</strong> - A user defined description of the wet well.</p>
<p>Geometry</p>
<p><strong>X</strong> - The x-coordinate of the wet well.</p>
<p><strong>Y</strong> - The y-coordinate of the wet well.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> X</strong> - The x-coordinate of the wet well.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Y</strong> - The y-coordinate of the wet well.</p>
<p>Modeling</p>
<p><strong>Type</strong> - The type of wet well to be used by H2OMAP Sewer.  To change the type, merely click in the drop down box and select from the list.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Data_Elements\Wet_Wells.htm#TypeWetWells"><u>Click here</u></a> to learn more about each type and the fields required.</p>
<p>Type - The type of wet well to be used by InfoSewer.  To change the type, merely click in the drop down box and select from the list.  <a href="javascript:BSSCPopup(&#39;Wet_Wells.htm#TypeWetWells&#39;);"><u>Click here</u></a> to learn more about each type and the fields required.</p>
<p>Information</p>
<p><strong>Installation Year</strong> - The year the wet well was installed.</p>
<p><strong>Retirement Year</strong> - The year the wet well is expected to be retired from service.</p>
<p><strong>Zone</strong> - The service area zone of the selected wet well.</p>
<p><strong>Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><strong>Cost ID</strong> - A database field used to assign differing cost identifiers to differing facilities.</p>
<p><strong>(Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Database_Management\DBEditor.htm#AddingFields"><u>Click here</u></a> to learn how to add a field.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Installation Year</strong> - The year the wet well was installed.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Retirement Year</strong> - The year the wet well is expected to be retired from service.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Zone</strong> - The service area zone of the selected wet well.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Phase</strong> - Assigning a phase enables the user to activate and deactivate facilities through the facility manager prior to modeling a simulation.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> Cost ID</strong> - A database field used to assign differing cost identifiers to differing facilities.</p>
<p><img src="./media/image1.jpeg" style="width:0.13472in;height:0.13472in" /><strong> (Other User Created Fields)</strong> - Any fields added by the user will appear at the end of the Information tab.  <a href="javascript:BSSCPopup(&#39;../Database_Management/DBEditor.htm#AddingFields&#39;);"><u>Click here</u></a> to learn how to add a field.</p>
<p>Output</p>
<p><strong>Output</strong> - The output fields will display the output results for the latest model run (*active* output source).  <a href="file:///C:\SWMM-SEWER%20Robohelp\SewerCombined%20-%20InfoSewer\Reports_Graphing_and_Output\Available_Report_Types.htm#EPSWetWell"><u>Click here</u></a> to learn more about the fields provided in a wet well output report.</p>
<p>Output - The output fields will display the output results for the latest model run (*active* output source).  <a href="javascript:BSSCPopup(&#39;../Reports_Graphing_and_Output/Available_Report_Types.htm#EPSWetWell&#39;);"><u>Click here</u></a> to learn more about the fields provided in a wet well output report.</p>
<p> </p></th>
<th><p><img src="./media/image4.jpeg" style="width:3.95069in;height:8.80347in" /></p>
<p> </p>
<p><img src="./media/image5.jpeg" style="width:3.95694in;height:8.80347in" /></p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<img src="./media/image6.jpeg" style="width:3.83403in" />

**Other Related Topics - **[<u>Tools menu</u>](javascript:BSSCPopup('../Tools_Icon.htm');)

<img src="./media/image6.jpeg" style="width:3.83403in" />

** **

**Tools Icon**

Use this command to access certain advanced tools provided by InfoSewer to manipulate data related to the currently active element. Click on the Down Arrow icon <img src="./media/image7.gif" style="width:0.42361in;height:0.25139in" /> to launch the **Tools** menu. The tools menu changes depending on the type of element presently selected as shown below.

Click on any portion below to learn more:

**<u>Manhole</u>**

<img src="./media/image8.gif" style="width:1.49097in;height:0.90764in" />

**<u>Wetwell</u>**

   <img src="./media/image9.gif" style="width:0.97569in;height:0.26389in" />

**<u>Pipe</u>**

 <img src="./media/image10.gif" style="width:1.55208in;height:1.35556in" />

**<u>Pump</u>**

 <img src="./media/image11.gif" style="width:1.37431in;height:0.68681in" />

<img src="./media/image6.jpeg" style="width:3.83403in" />

**Other Related Topics - **[<u>Attribute Browser</u>](javascript:BSSCPopup('../User_Interface/Attribute_Browser.htm');)

<img src="./media/image6.jpeg" style="width:3.83403in" />

** **

**Operation Data**

The Operation Tab section of the InfoSewer **Browser** provides you with tools to create, edit and operate on the different operational features of InfoSewer.

Click on any section below to learn more

:<img src="./media/image12.gif" style="width:3.96944in;height:5.28194in" />

 

<img src="./media/image6.jpeg" style="width:3.83403in" />

**Other Related Topics - ** [<u>Annotation Dialog Box</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Annotation/Annotation_Dialog_Box.htm');), [<u>Annotation Methodology</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Annotation/Annotation_Methodology.htm');), [<u>Contour-Labelling</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour-Labelling.htm');), [<u>Contour-Level</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour_-Level.htm');), [<u>Contour Dialog Box</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour_Dialog_Box.htm');), [<u>Contour Methodology</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour_Methodology.htm');), [<u>Contour Options</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour_Options.htm');),** **[<u>InfoSewer Browser</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Browser_Overview.htm');)

<img src="./media/image6.jpeg" style="width:3.83403in" />

**Browser Overview**

The InfoSewer Browser provides a centralized location to access the various tools to create, edit, operate and analyze InfoSewer models. The Browser dialog box can be invoked by using the **Attribute Browser** command from the **InfoSewer\>** **View** menu.

The InfoSewer Browser provides four major capabilities for the modeling and analysis of water distribution systems:

- **Attribute Browser:** The Attribute tab displays all of the element attribute tables for the selected data element. See [<u>Attribute Browser</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Attribute_Browser/Element_Attribute_Browser.htm');)

- **Contour:** Use the contour tab to plot nodal input and output contours. To learn more about the different contouring options provided by InfoSewer [<u>click here</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Contour/Contour_Dialog_Box.htm');).

- **Operation Data:** The Operation Data tab contains all of the operational features of InfoSewer. Click here to learn more about the [<u>Operation Data</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Operation_Tab/Operating_Data.htm');) feature of InfoSewer.

- **Annotation:** The Annotation tab is used to color code pipes or nodes based on input and/or output results. Click here to learn more about the InfoSewer [<u>Annotation Manager</u>](javascript:BSSCPopup('../../InfoSewer/User_Interface/InfoSewer_Browser/Annotation/Annotation_Dialog_Box.htm');).

Click on any section below to learn more:

<img src="./media/image13.jpeg" style="width:3.93889in;height:8.23958in" />

 
