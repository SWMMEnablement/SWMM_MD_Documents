---
title: SWMM5 Pump Summary Table
---

Table, Meaning and SWMM5 Relevant C Code

<table>
<caption>Presentation notes table</caption>
<colgroup>
<col style="width: 18%" />
<col style="width: 81%" />
</colgroup>
<thead>
<tr class="header">
<th><h1 id="what-does-the-pump-summary-table-look-like">What does the Pump Summary Table look like?</h1></th>
<th><p>Columns:</p>
<ol type="1">
<li><p>Two columns for time NOT on the pump curve – high and low.</p></li>
<li><p>Power Usage for the Pump – Important for Sewers</p></li>
<li><p>Total Volume pumped during the simulation.</p></li>
<li><p>Maximum flow at ALL Time Steps.</p></li>
<li><p>Average flow during the simulation for ONLY Pump time steps.</p></li>
<li><p>Minimum flow at All Time steps.</p></li>
<li><p>Number of Start Ups</p></li>
<li><p>Percent of time utilized during the Simulation</p></li>
</ol>
<p><img src="./media/image1.png" style="width:5.32914in;height:0.98975in" /></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h1 id="where-is-the-pump-flow-summary-report-written">Where is the Pump Flow Summary Report Written? </h1>
<h1 id="section"></h1>
<h1 id="statsrpt.c">Statsrpt.c</h1>
<h1 id="section-1"></h1></td>
<td><p>void writePumpFlows()</p>
<p>//</p>
<p>// Input: none</p>
<p>// Output: none</p>
<p>// Purpose: writes simulation statistics for pumps to report file.</p>
<p>//</p>
<p>{</p>
<p>int j, k;</p>
<p>double avgFlow, pctUtilized, pctOffCurve1, pctOffCurve2, totalSeconds;</p>
<p>if ( Nlinks[PUMP] == 0 ) return;</p>
<p>WRITE("");</p>
<p>WRITE("***************");</p>
<p>WRITE("Pumping Summary");</p>
<p>WRITE("***************");</p>
<p>WRITE("");</p>
<p>fprintf(Frpt.file,</p>
<p>"\n ---------------------------------------------------------------------------------------------------------"</p>
<p>"\n Min Avg Max Total Power %% Time Off"</p>
<p>"\n Percent Number of Flow Flow Flow Volume Usage Pump Curve"</p>
<p>"\n Pump Utilized Start-Ups %3s %3s %3s %8s Kw-hr Low High"</p>
<p>"\n ---------------------------------------------------------------------------------------------------------",</p>
<p>FlowUnitWords[FlowUnits], FlowUnitWords[FlowUnits],</p>
<p>FlowUnitWords[FlowUnits], VolUnitsWords[UnitSystem]);</p>
<p>for ( j = 0; j &lt; Nobjects[LINK]; j++ )</p>
<p>{</p>
<p>if ( Link[j].type != PUMP ) continue;</p>
<p>k = Link[j].subIndex;</p>
<p>fprintf(Frpt.file, "\n %-20s", Link[j].ID);</p>
<p>totalSeconds = NewRoutingTime / 1000.0;</p>
<p>pctUtilized = PumpStats[k].utilized / totalSeconds * 100.0;</p>
<p>avgFlow = PumpStats[k].avgFlow;</p>
<p>if ( PumpStats[k].totalPeriods &gt; 0 )</p>
<p>avgFlow /= PumpStats[k].totalPeriods;</p>
<p>fprintf(Frpt.file, " %8.2f %10d %9.2f %9.2f %9.2f %9.3f %9.2f",</p>
<p>pctUtilized, PumpStats[k].startUps, PumpStats[k].minFlow*UCF(FLOW),</p>
<p>avgFlow*UCF(FLOW), PumpStats[k].maxFlow*UCF(FLOW),</p>
<p>PumpStats[k].volume*Vcf, PumpStats[k].energy);</p>
<p>pctOffCurve1 = PumpStats[k].offCurveLow;</p>
<p>pctOffCurve2 = PumpStats[k].offCurveHigh;</p>
<p>if ( PumpStats[k].utilized &gt; 0.0 )</p>
<p>{</p>
<p>pctOffCurve1 = pctOffCurve1 / PumpStats[k].utilized * 100.0;</p>
<p>pctOffCurve2 = pctOffCurve2 / PumpStats[k].utilized * 100.0;</p>
<p>}</p>
<p>fprintf(Frpt.file, " %6.1f %6.1f", pctOffCurve1, pctOffCurve2);</p>
<p>}</p>
<p>WRITE("");</p>
<p>}</p></td>
</tr>
<tr class="even">
<td><h1 id="where-are-the-pump-statistics-defined">Where are the Pump Statistics Defined? </h1>
<h1 id="section-2"></h1>
<h1 id="in-objects.h">In Objects.h</h1></td>
<td><p>//----------------</p>
<p>// PUMP STATISTICS</p>
<p>//----------------</p>
<p>typedef struct</p>
<p>{</p>
<p>double utilized;</p>
<p>double minFlow;</p>
<p>double avgFlow;</p>
<p>double maxFlow;</p>
<p>double volume;</p>
<p>double energy;</p>
<p>double offCurveLow;</p>
<p>double offCurveHigh;</p>
<p>int startUps;</p>
<p>int totalPeriods;</p>
<p>} TPumpStats;</p></td>
</tr>
<tr class="odd">
<td><h1 id="where-are-the-pump-stats-calculated-in-stats.c">Where are the Pump Stats Calculated? In Stats.c</h1></td>
<td><p>PumpStats[k].minFlow = MIN(PumpStats[k].minFlow, q);</p>
<p>PumpStats[k].maxFlow = LinkStats[j].maxFlow;</p>
<p>PumpStats[k].avgFlow += q;</p>
<p>PumpStats[k].volume += q*tStep;</p>
<p>PumpStats[k].utilized += tStep;</p>
<p>PumpStats[k].energy += link_getPower(j)*tStep/3600.0;</p>
<p>if ( Link[j].flowClass == DN_DRY )</p>
<p>PumpStats[k].offCurveLow += tStep;</p>
<p>if ( Link[j].flowClass == UP_DRY )</p>
<p>PumpStats[k].offCurveHigh += tStep;</p>
<p>if ( Link[j].oldFlow &lt; MIN_RUNOFF_FLOW )</p>
<p>PumpStats[k].startUps++;</p>
<p>PumpStats[k].totalPeriods++;</p></td>
</tr>
</tbody>
</table>

Presentation notes table
