---
subtitle: |
  Best Modeling Practices in InfoWorks ICM Checklist

  <span class="smallcaps">a checklist that new and existing users of ICM may find helpful.</span>
---

<table>
<caption>Presentation notes table</caption>
<colgroup>
<col style="width: 17%" />
<col style="width: 82%" />
</colgroup>
<thead>
<tr class="header">
<th><h1 id="icm-data-sources"><span class="smallcaps">ICM Data Sources</span></h1></th>
<th><ul>
<li><p>Is the coordinate system set for your model? (GeoPlan -&gt; Select Coordinate System) </p></li>
<li><p>Is the imported data (DEMs, shps, etc.) either to be used in the model or as reference in the same coordinate system? </p></li>
<li><p>If using a surface, how was it developed? </p></li>
</ul>
<ul>
<li><p>High Quality LiDAR (QL1, QL2)? </p></li>
</ul>
<ul>
<li><p>Survey Data? </p></li>
<li><p>Were buildings, trees, etc. filtered from the data? </p></li>
<li><p>How was bathymetry included? </p></li>
<li><p>Is the amount of detail in the surface and/or bathymetry enough for the purposes of the project? A high level of accuracy in the data is needed for detailed hydraulic analysis. </p></li>
<li><p>If surfaces were merged outside of ICM, is there a smooth connection between them? </p></li>
</ul>
<ul>
<li><p>What is the source of the pipes, manholes, pumps, weirs, etc to be used in the model? </p></li>
</ul>
<ul>
<li><p>Another model? </p></li>
<li><p>Survey/GIS? </p></li>
<li><p>As data was brought in, were data flags used to map where data came from? Best practice for modeling building in ICM is to use data flags to know where the data came from and assist with QA audits. </p></li>
<li><p>Was validation run to find any gaps that may be in the data? </p></li>
</ul>
<ul>
<li><p>Does the data need to be cleaned up? </p></li>
</ul>
<ul>
<li><p>Based on the validation, does some of the information need to be inferenced?  This can be done through either an ‘Inference’ model object or through SQL/ruby scripting. </p></li>
<li><p>Have default values been used where possible and appropriate?  If data for the field of an object is not imported from another model or from GIS data, its often appropriate to use the default value suggested by ICM.  By changing the data flag to ‘#D’ for default, the program will automatically populate the field with the default value.  </p></li>
</ul>
<ul>
<li><p>Once successfully validated, has the data been committed to the database?  Best practice in ICM includes committing data to the database at various milestones during the model building process and providing an accurate description of what was done in the comments.  This could be after a different type of model is entirely imported into ICM, or after importing various parts (nodes, conduits, etc.) from GIS sources. </p></li>
</ul></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h1 id="geometric-and-model-data"><span class="smallcaps">Geometric and Model Data</span></h1></td>
<td><p><strong><em>Hydrology</em> </strong></p>
<ul>
<li><blockquote>
<p>Will Subcatchments need to be included?  This will depend on if hydrology (losses and transformation of the hydrograph) will be represented in the model, how dry weather flows are included, and how I&amp;I is introduced to the model. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Have ‘Land Use’ and ‘Runoff’ been set up and referenced within the Subcatchment data appropriately?  ‘Land Use’ and ‘Runoff’ data can be accessed by opening the Subcatchment table and locating the appropriate tab in the bottom left of the window. </p>
</blockquote></li>
<li><blockquote>
<p>Have the ‘RTK hydrograph’ and/or ‘Monthly RTK hydrograph’ tabs been set up appropriately? Are you using the SWMM5 or SWMM5 Simulation Option?</p>
</blockquote></li>
</ul>
<p><strong><em>1D</em> </strong></p>
<ul>
<li><blockquote>
<p>Should initial conditions be used?  For instance, these can be useful in situations where level boundary conditions are being used so that a rush of water is not being introduced during the start of the simulation which can result in convergence and initialization problems. </p>
</blockquote></li>
<li><blockquote>
<p>Have the property tables for all conduits been checked for unrealistically steep slopes? Its atypical for pipes to have gradients greater than 10%.  If a conduit truly has a very steep slope, removing the headloss on the pipe can help if there are convergence problems. </p>
</blockquote></li>
<li><blockquote>
<p>Have culverts been set up appropriately with culvert inlets, outlets, and a conduit representing the culvert?  Culvert inlet and outlet objects should be used on the US and DS side of the culvert conduit, respectively.  The elevations of the culvert inlets and outlets should match the elevation where they connect to the river reach, as well as the US and DS inverts of the conduit culvert.  Headlosses into and out of the culvert are considered by the culvert inlet and culvert outlet model objects and should be set to ‘None’ unless there is a bend or other type of head loss occurring within the culvert. </p>
</blockquote></li>
<li><blockquote>
<p>Open Channel/River </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Is the profile of the channel smooth? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Were the bank lines sampled from a ground model? If so, was the sampling distance set to a reasonable level of detail? </p>
</blockquote></li>
<li><blockquote>
<p>Are the bank lines set above the channel?  Poor or inaccurate sampling when building the bank information can lead to bank lines below the channel thalweg and lead to problems. </p>
</blockquote></li>
<li><blockquote>
<p>Were outfalls from closed systems into the channel represented appropriately?   </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Outfalls should be connected to a break node within the river (one may need to be inserted as needed).   </p>
</blockquote></li>
<li><blockquote>
<p>Downstream elevations of the outfall should be set to a surveyed elevation or otherwise appropriate elevation between the bank elevation and river thalweg. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Head loss type for the conduit entering the river should be set to ‘None’ or ‘Fixed’, whichever is more appropriate for the situation.  ‘Normal’ and ‘High’ should only be used in conduits between manholes, and ‘FHWA’ and ‘Flap’ are for HEC-22 inlet losses and flap valves, respectively. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Have the conveyance curves been checked for rapid changes?  Conveyance data can be found in the properties of the river reach under Cross section -&gt; Conveyance data and clicking the ellipsis.  The curves for each of the cross sections should be relatively smooth and generally follow a log function. Any jagged move backward, which would indicate a higher depth with less less conveyance, indicates the need for panel markers (more information on what panel markers are: https://innovyze.force.com/support/s/article/What-s-the-purpose-of-the-River-Section-Panel-Markers-in-InfoWorks-ICM)  </p>
</blockquote></li>
</ul>
<p> </p>
<p> </p>
<p><strong><em>1D/2D</em> </strong></p>
<ul>
<li><blockquote>
<p>Have steps been taken to ensure stable exchange between 1D and 2D domains? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>If a 1D river reach is being model with a 2D floodplain, have settings been updated to ensure a match between the bank and 2D mesh?  When meshing, you can specify in the dialog to lower 2D mesh elements that are higher than the adjacent banks.  Alternatively, you can specify in the run dialog to adjust the bank levels based on the adjacent mesh elements. </p>
</blockquote></li>
<li><blockquote>
<p>Are there stability problems or oscillations at 1D-2D interfaces? In the run dialog in ‘2D parameters’ there is an option to ‘Link 1D and 2D Calculations at Minor Timesteps’ which can help with these issues. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Do the 1D nodes and outfalls with connections to the 2D mesh have the same or nearly the same manhole cover elevation as the mesh element its located within?  You could create a mesh zone around the 1D node and set the elevation to be the same as the manhole cover if there is a significant difference.  In cases where the elevation of the 1D node is truly raised above the ground (ie a raised manhole) it may be more appropriate to change the ‘1D-2D linkage basis’ from ‘Depth’ to ‘Elevation’ within the manhole properties. </p>
</blockquote></li>
<li><blockquote>
<p>Has the 1D model run successfully before adding in 2D components?  This can often be helpful in diagnosing problems to understand where and how the model is having problems converging. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>If bridges are being modeled as 1D model objects, have you considered using base linear structures and bridge linear structures in their place? Using base linear structures and bridge linear structures will keep the flow within the 2D domain and could prevent stability problems that occur when exchanging flow between 1D and 2D domains. </p>
</blockquote></li>
</ul>
<p><strong><em>2D</em> </strong></p>
<ul>
<li><blockquote>
<p>Should initial conditions be used?  For instance, these can be useful in situations where level boundary conditions are being used so that a rush of water isn’t being introduced during the start of the simulation which can result in convergence and initialization problems. </p>
</blockquote></li>
<li><blockquote>
<p>Have best practices been used when creating the 2D mesh? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Is the mesh large enough to cover where flooding is occurring? Is ponding occurring against the edges of the 2D zone? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Review GIS files to be used in 2D mesh development (buildings, curb lines, roughness polygons, etc.) </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Check for polygons intersection or overlapping each other. </p>
</blockquote></li>
<li><blockquote>
<p>Look for and limit the number of vertices to the bear minimum to represent the object. </p>
</blockquote></li>
<li><blockquote>
<p>Look for slivers and nearly coincident points/vertexes in the GIS features. </p>
</blockquote></li>
<li><blockquote>
<p>Combine adjacent polygons. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Reduce the GIS features that will be used so that they are only located within the 2D zone. </p>
</blockquote></li>
<li><blockquote>
<p>Have the geometry tools in ICM been used to find any problems with the geometry of GIS features that have been brought into the model that will impact the 2D mesh?  These tools can be found in Model -&gt; Geometry. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Is the mesh resolution appropriate? Is there enough detail in the mesh to properly represent the topography?  Terrain sensitive meshing can help ensure this.  Testing different mesh resolutions can also help to determine the most appropriate. </p>
</blockquote></li>
<li><blockquote>
<p>Have roughness and infiltration zones been set to be excluded when meshing?  It’s recommended to exclude these items whenever possible. </p>
</blockquote></li>
<li><blockquote>
<p>If more detail is needed in one area versus another, have mesh zones and/or mesh level zones been used? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Have you reviewed the mesh for small elements?  Themes can be set up to highlight areas with small elements that can cause significant computation problems. </p>
</blockquote></li>
<li><blockquote>
<p>More detail for each of these practices can be found here: https://innovyze-us01.s3-us-west-2.amazonaws.com/salesforce-knowledgebase/Tips-for-a-Good-Meshing-Experience.pdf </p>
</blockquote></li>
</ul>
<p><strong><em>Boundary Condition</em> </strong></p>
<ul>
<li><blockquote>
<p>Have upstream (if applicable) and downstream boundary conditions been set for the model?  Are they appropriate for your analysis? </p>
</blockquote></li>
<li><blockquote>
<p>Do you need different boundary conditions for the different events being modeled? </p>
</blockquote></li>
</ul>
<p> </p></td>
</tr>
<tr class="even">
<td><h1 id="run-setup-control-set-up-and-initialization"><span class="smallcaps">Run Setup, Control Set Up and Initialization</span></h1>
<h1 id="section"></h1>
<h1 id="section-1"></h1></td>
<td><p>Have you included all appropriate model objects for your run?  Depending on the type of analysis you’re performing: </p>
<ul>
<li><blockquote>
<p>Is a rainfall event needed? </p>
</blockquote></li>
<li><blockquote>
<p>Is an inflow needed to define a boundary condition? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Has the profile been named the same as the associated object in the model?  Profile properties and sub-event properties can be changed by right-clicking on the table within the object table. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Are dry weather flows (wastewater, trade waste) needed? </p>
</blockquote></li>
<li><blockquote>
<p>Is ground infiltration needed? </p>
</blockquote></li>
<li><blockquote>
<p>Is a level needed to define a boundary condition? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Has the profile been named the same as the associated object in the model?  Profile properties and sub-event properties can be changed by right-clicking on the table within the object table. </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Do you need to provide a hot start (sim for an initial state) or initial 1D/2D conditions? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>Are you running the correct version of the network? Are the scenarios needed checked on? </p>
</blockquote></li>
<li><blockquote>
<p>Is the timestep appropriate?  60s is normally appropriate. ICM will dynamically change the time step to meet stability requirements which can be viewed in the job progress window during the simulation. </p>
</blockquote></li>
<li><blockquote>
<p>Is ‘Summary (PRN) results’ checked on? This summary information can help diagnose convergence problems. </p>
</blockquote></li>
<li><blockquote>
<p>If running a 2D simulation, has the GPU setting under ‘2D Parameters’ been changed to ‘If suitable card is available’? </p>
</blockquote></li>
<li><blockquote>
<p>After starting the run, has the model initialized in a reasonable amount of time?  Initialization is intended to create a stable starting point for the model.  Initialization can be stopped by clicking the ‘Stop Initializing’ button in the top right corner of the Job Progress window (Window -&gt; Job Progress).  After the run ends (fails or ends with warnings), convergence problems, unrealistically high flooding levels or volumes at nodes indicates areas that could be causing problems. </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><h1 id="review-results"><span class="smallcaps">Review Results</span></h1></td>
<td><ul>
<li><blockquote>
<p>Have you checked the PRN summary to identify areas of the model with any convergence problems?  High ‘Vol Balance %’ will indicate convergence problems.  Alternatively, looking at the ‘Link fail’ and ‘Node fail’ fields of the Job Progress window during the simulation can aid this as well. </p>
</blockquote></li>
<li><blockquote>
<p>Spot check 1D elements at key locations in the model to look at head, velocity, flow, etc for oscillations, flow anomalies, or ‘noise’.  These could indicate inaccurate results. </p>
</blockquote></li>
<li><blockquote>
<p>Run 2D results animation to look for oscillations or problems with 1D-2D connections. </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><h1 id="d-and-2d-themes"><span class="smallcaps">1d and 2d Themes</span></h1></td>
<td><blockquote>
<p>In 1D and 2D (themes can be set up to help quickly identify where these problems may be occurring), </p>
</blockquote>
<ul>
<li><blockquote>
<p>Are Froude numbers generally below 1 indicating subcritical flow? </p>
</blockquote></li>
<li><blockquote>
<p>Are velocities within a reasonable and expected range? </p>
</blockquote></li>
<li><blockquote>
<p>Are there any abrupt changes in water surface depth? Can they be explained by the terrain or geometry of the network? </p>
</blockquote></li>
</ul>
<ul>
<li><blockquote>
<p>For 2D results, do the velocity vectors look as you would expect? </p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

Presentation notes table
