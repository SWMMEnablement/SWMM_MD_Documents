---
subtitle: <span class="smallcaps">InfoSWMM 2008 NON-EPA SWMM Hydrology</span>
---

<table>
<caption>Presentation notes table</caption>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th><h1 id="infoswmm-uh-is-solved-independently-of-epa-swmm5."><span class="smallcaps">InfoSWMM UH is Solved Independently of EPA SWMM5.</span> </h1>
<p><strong>Hs_UhSubCatchRunoffRun is UH Runoff</strong></p>
<p><strong>Search for hs_runoffType</strong></p></th>
<th><img src="./media/image1.png" style="width:6.28333in;height:7.84097in" /></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h1 id="hs_uhsubcatchrunoffrun">Hs_UhSubCatchRunoffRun</h1></td>
<td><p><strong>// **************************</strong></p>
<p><strong>// Hs_UhSubCatchRunoffRun</strong></p>
<p><strong>// **************************</strong></p>
<p><strong>//</strong></p>
<p><strong>bool Hs_UhSubCatchRunoffRun()</strong></p>
<p><strong>//</strong></p>
<p><strong>// Description : run unit hydrograph subcatchment runoff</strong></p>
<p><strong>//</strong></p>
<p><strong>{</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Check **</strong></p>
<p><strong>//</strong></p>
<p><strong>if (hf_pSubCatchRunoff == NULL) return false;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Run Runoff Calculation **</strong></p>
<p><strong>//</strong></p>
<p><strong>if (!hf_pSubCatchRunoff-&gt;F_Run()) return false;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Exit **</strong></p>
<p><strong>//</strong></p>
<p><strong>return true;</strong></p>
<p><strong>}</strong></p></td>
</tr>
<tr class="even">
<td><h1 id="f_run-determine-runoff-from-each-subcatchment-at-current-runoff-time.">F_Run : determine runoff from each subcatchment at current runoff time.</h1>
<h1 id="section"></h1>
<h1 id="section-1"></h1></td>
<td><p>// *********</p>
<p>// F_Run</p>
<p>// *********</p>
<p>//</p>
<p>bool CHs_UhSubCatchRunoff::F_Run()</p>
<p>//</p>
<p>// Description : determine runoff from each subcatchment at current runoff time.</p>
<p>//</p>
<p>{</p>
<p>//</p>
<p>//</p>
<p>// ** Check **</p>
<p>//</p>
<p>if (ErrorCode &gt; 0) return false;</p>
<p>//</p>
<p>//</p>
<p>// ** Initialisation: convert elapsed runoff time in milliseconds to a calendar date **</p>
<p>///</p>
<p>DateTime currentDate = getDateTime(NewRunoffTime);</p>
<p>//</p>
<p>//</p>
<p>// ** Setup Runoff Times **</p>
<p>//</p>
<p>// Get runoff time step (in seconds)</p>
<p>//</p>
<p>if (hs_unitHydDuration &lt;= 0.0)</p>
<p>{</p>
<p>ErrorCode = ERR_TIMESTEP;</p>
<p>return false;</p>
<p>}</p>
<p>//</p>
<p>double runoffStep = hs_unitHydDuration; // runoff time step (in seconds)</p>
<p>//</p>
<p>OldRunoffTime = NewRunoffTime;</p>
<p>int hydTimeIndex = (int) (0.001*NewRunoffTime/hs_unitHydDuration + 0.001);</p>
<p>//</p>
<p>NewRunoffTime += 1000.0*runoffStep;</p>
<p>//</p>
<p>//</p>
<p>// ** Update Current Rainfall at Each Raingage **</p>
<p>// Note: must examine gages in sequential order due to possible presence</p>
<p>// of co-gages (gages that share same rain time series).</p>
<p>//</p>
<p>IsRaining = FALSE;</p>
<p>//</p>
<p>int i = 0;</p>
<p>for (i = 0; i &lt; Nobjects[GAGE]; i++)</p>
<p>{</p>
<p>gage_setState(i, currentDate);</p>
<p>if (Gage[i].rainfall &gt; 0.0)</p>
<p>IsRaining = TRUE;</p>
<p>}</p>
<p>//</p>
<p>//</p>
<p>// ** Get Runoff Results from Interface File: where applicable **</p>
<p>//</p>
<p>if (Frunoff.mode == USE_FILE)</p>
<p>{</p>
<p>runoff_readFromFile();</p>
<p>return true;</p>
<p>}</p>
<p>//</p>
<p>//</p>
<p>// ** Check Street Sweeping: see if street sweeping can occur on current date **</p>
<p>//</p>
<p>int day = datetime_dayOfYear(currentDate); // day of calendar year</p>
<p>bool canSweep = false;</p>
<p>//</p>
<p>if ((day &gt;= SweepStart) &amp;&amp; (day &lt;= SweepEnd) &amp;&amp; (!IsRaining))</p>
<p>canSweep = true;</p>
<p>//</p>
<p>//</p>
<p>// ** Subcatchment **</p>
<p>//</p>
<p>// Update old state of each subcatchment</p>
<p>//</p>
<p>for (i = 0; i &lt; Nobjects[SUBCATCH]; i++)</p>
<p>subcatch_setOldState(i);</p>
<p>//</p>
<p>// Determine runon from upstream subcatchments</p>
<p>//</p>
<p>for (i = 0; i &lt; Nobjects[SUBCATCH]; i++)</p>
<p>Fv_GetRunonData(i);</p>
<p>//</p>
<p>//</p>
<p>// ** Determine Runoff and Pollutant Buildup/Washoff: in each subcatchment **</p>
<p>//</p>
<p>HasSnow = FALSE;</p>
<p>HasRunoff = FALSE;</p>
<p>//</p>
<p>for (i = 0; i &lt; Nobjects[SUBCATCH]; i++)</p>
<p>{</p>
<p>//</p>
<p>// Find runoff rate: also if u/s subcatchment(s) is/are draining to the subcatchment, add the flow</p>
<p>//</p>
<p>double runoff = Fv_GetSubcatchUHRunoff(i, hydTimeIndex);</p>
<p>//</p>
<p>// Add to pollutant buildup if runoff is negligible</p>
<p>//</p>
<p>if (runoff &gt; MIN_RUNOFF_FLOW)</p>
<p>HasRunoff = TRUE;</p>
<p>else</p>
<p>subcatch_getBuildup(i, runoffStep);</p>
<p>//</p>
<p>// Reduce buildup by street sweeping</p>
<p>//</p>
<p>if (canSweep)</p>
<p>subcatch_sweepBuildup(i, currentDate);</p>
<p>//</p>
<p>// Compute pollutant washoff</p>
<p>//</p>
<p>subcatch_getWashoff(i, runoff, runoffStep);</p>
<p>}</p>
<p>//</p>
<p>Nsteps++;</p>
<p>//</p>
<p>//</p>
<p>// ** Interface File: save runoff results to interface file if one is used **</p>
<p>//</p>
<p>if (Frunoff.mode == SAVE_FILE)</p>
<p>runoff_saveToFile((float) runoffStep);</p>
<p>//</p>
<p>//</p>
<p>// ** Exit **</p>
<p>//</p>
<p>return true;</p>
<p>}</p></td>
</tr>
<tr class="odd">
<td><h1 id="fv_getsubcatchuhrunoff"><strong>Fv_GetSubcatchUHRunoff</strong></h1></td>
<td><p><strong>// **************************</strong></p>
<p><strong>// Fv_GetSubcatchUHRunoff</strong></p>
<p><strong>// **************************</strong></p>
<p><strong>//</strong></p>
<p><strong>double CHs_UhSubCatchRunoff::Fv_GetSubcatchUHRunoff(int subCatchIndex,</strong></p>
<p><strong>int hydTimeIndex)</strong></p>
<p><strong>//</strong></p>
<p><strong>// Description : computes runoff &amp; new storage depth for subcatchment</strong></p>
<p><strong>// Return data : returns total runoff produced by subcatchment (cfs)</strong></p>
<p><strong>//</strong></p>
<p><strong>{</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Initialisation **</strong></p>
<p><strong>//</strong></p>
<p><strong>double rainfall = 0.0; // rainfall (ft/sec)</strong></p>
<p><strong>double snowfall = 0.0; // snowfall (ft/sec)</strong></p>
<p><strong>double rainVol = 0.0; // rain volume (ft)</strong></p>
<p><strong>double evapVol = 0.0; // evaporation volume (ft)</strong></p>
<p><strong>double infilVol = 0.0; // infiltration volume (ft)</strong></p>
<p><strong>double outflowVol = 0.0; // runoff volume leaving subcatch (ft)</strong></p>
<p><strong>double outflow = 0.0; // runoff rate leaving subcatch (cfs)</strong></p>
<p><strong>double runoff = 0.0; // total runoff rate on subcatch (cfs)</strong></p>
<p><strong>double netPrecip[3]; // subarea net precipitation (ft/sec)</strong></p>
<p><strong>//</strong></p>
<p><strong>double area = Subcatch[subCatchIndex].area ; // total subcatch area (ft2)</strong></p>
<p><strong>double tStep = hs_unitHydDuration;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Rainfall/SnowFall: get current rainfall or snowfall from rain gage (in ft/sec) **</strong></p>
<p><strong>//</strong></p>
<p><strong>// Rain gauge index</strong></p>
<p><strong>//</strong></p>
<p><strong>int gaugeIndex = Subcatch[subCatchIndex].gage;</strong></p>
<p><strong>//</strong></p>
<p><strong>// Assign total precip. rate to subcatch's rainfall property</strong></p>
<p><strong>//</strong></p>
<p><strong>Subcatch[subCatchIndex].rainfall = Gage[gaugeIndex].rainfall;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Determine Net Precipitation Input (netPrecip) to Each Sub-Area **</strong></p>
<p><strong>//</strong></p>
<p><strong>int i = 0;</strong></p>
<p><strong>for (i = IMPERV0; i &lt;= PERV; i++)</strong></p>
<p><strong>netPrecip[i] = Subcatch[subCatchIndex].rainfall;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Compute Loss Rate &amp; Runoff Rates **</strong></p>
<p><strong>//</strong></p>
<p><strong>// Loss rate</strong></p>
<p><strong>//</strong></p>
<p><strong>Subcatch[subCatchIndex].losses = 0.0;</strong></p>
<p><strong>Subcatch[subCatchIndex].losses = mv_pInfiltrationDepth[subCatchIndex].F_GetData(hydTimeIndex) +</strong></p>
<p><strong>mv_pDepressionLoss[subCatchIndex].F_GetData(hydTimeIndex);</strong></p>
<p><strong>Subcatch[subCatchIndex].losses = __max(0.0,</strong></p>
<p><strong>Subcatch[subCatchIndex].losses/hs_unitHydDuration); // in ft/sec</strong></p>
<p><strong>//</strong></p>
<p><strong>// Runoff rate</strong></p>
<p><strong>//</strong></p>
<p><strong>outflow = mv_pRunoffRate[subCatchIndex].F_GetData(hydTimeIndex); // runoff rate (in cfs)</strong></p>
<p><strong>// Subcatch[subCatchIndex].runon; // runoff contribution from u/s subcatchment (if any)</strong></p>
<p><strong>runoff = outflow;</strong></p>
<p><strong>evapVol = 0.0;</strong></p>
<p><strong>infilVol = mv_pInfiltrationDepth[subCatchIndex].F_GetData(hydTimeIndex) +</strong></p>
<p><strong>mv_pDepressionLoss[subCatchIndex].F_GetData(hydTimeIndex); // infiltration depth + depression loss depth in ft</strong></p>
<p><strong>outflowVol = 0.5*(Subcatch[subCatchIndex].oldRunoff + outflow)*hs_unitHydDuration/area; // average volume in ft</strong></p>
<p><strong>//</strong></p>
<p><strong>if (outflow &lt; MIN_RUNOFF_FLOW)</strong></p>
<p><strong>outflow = 0.0;</strong></p>
<p><strong>//</strong></p>
<p><strong>Subcatch[subCatchIndex].newRunoff = outflow;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Compute Rainfall and Snowfall Volume (does not include snowmelt) **</strong></p>
<p><strong>//</strong></p>
<p><strong>rainfall = Subcatch[subCatchIndex].rainfall*(tStep/(12.0*3600.0));</strong></p>
<p><strong>rainVol = rainfall*area;</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Update Subcatchment Runoff Total **</strong></p>
<p><strong>//</strong></p>
<p><strong>stats_updateSubcatchStats(subCatchIndex,</strong></p>
<p><strong>rainfall,</strong></p>
<p><strong>Subcatch[subCatchIndex].runon*tStep,</strong></p>
<p><strong>evapVol, // 0.0</strong></p>
<p><strong>infilVol, // 0.0</strong></p>
<p><strong>outflowVol,</strong></p>
<p><strong>outflow);</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Update System Flow Balance **</strong></p>
<p><strong>// runoff volume is 0 if outlet is another subcatch</strong></p>
<p><strong>//</strong></p>
<p><strong>if ((Subcatch[subCatchIndex].outNode == -1) &amp;&amp; (Subcatch[subCatchIndex].outSubcatch != subCatchIndex))</strong></p>
<p><strong>outflowVol = 0.0;</strong></p>
<p><strong>//</strong></p>
<p><strong>massbal_updateRunoffTotals(rainVol,</strong></p>
<p><strong>evapVol*area,</strong></p>
<p><strong>infilVol*area,</strong></p>
<p><strong>outflowVol*area);</strong></p>
<p><strong>//</strong></p>
<p><strong>//</strong></p>
<p><strong>// ** Exit **</strong></p>
<p><strong>//</strong></p>
<p><strong>return runoff;</strong></p>
<p><strong>}</strong></p></td>
</tr>
<tr class="even">
<td><h1 id="d-and-2d-themes"><span class="smallcaps">1d and 2d Themes</span></h1></td>
<td></td>
</tr>
</tbody>
</table>

Presentation notes table
