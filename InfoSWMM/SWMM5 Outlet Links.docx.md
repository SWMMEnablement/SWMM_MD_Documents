---
subtitle: "**SWMM5 Relevant C Code in Graphical Form for Dynamic Wave Only**"
title: SWMM5 outlet Links
---

<table>
<caption>Presentation notes table</caption>
<colgroup>
<col style="width: 19%" />
<col style="width: 80%" />
</colgroup>
<thead>
<tr class="header">
<th><h1 id="where-is-the-link-flow-for-outlet-links-calculated"><span class="smallcaps">Where is the LInk Flow for OUTLET LInks Calculated?</span></h1>
<p><strong>In Links.c -</strong> outlet_getInflow</p></th>
<th><h2 id="double-outlet_getinflowint-j">double outlet_getInflow(int j)</h2>
<p>//</p>
<p>// Input: j = link index</p>
<p>// Output: outlet flow rate (cfs)</p>
<p>// Purpose: finds the flow through an outlet.</p>
<p>//</p>
<p>{</p>
<p>int k, n1, n2;</p>
<p>double head, hcrest, h1, h2, y1, dir;</p>
<p>// --- get indexes of end nodes</p>
<p>n1 = Link[j].node1;</p>
<p>n2 = Link[j].node2;</p>
<p>k = Link[j].subIndex;</p>
<p>// --- find heads at upstream &amp; downstream nodes</p>
<p>if ( RouteModel == DW )</p>
<p>{</p>
<p>h1 = Node[n1].newDepth + Node[n1].invertElev;</p>
<p>h2 = Node[n2].newDepth + Node[n2].invertElev;</p>
<p>}</p>
<p>else</p>
<p>{</p>
<p>h1 = Node[n1].newDepth + Node[n1].invertElev;</p>
<p>h2 = Node[n1].invertElev;</p>
<p>}</p>
<p>dir = (h1 &gt;= h2) ? +1.0 : -1.0;</p>
<p>// --- exchange h1 and h2 for reverse flow</p>
<p>y1 = Node[n1].newDepth;</p>
<p>if ( dir &lt; 0.0 )</p>
<p>{</p>
<p>y1 = h1;</p>
<p>h1 = h2;</p>
<p>h2 = y1;</p>
<p>y1 = Node[n2].newDepth;</p>
<p>}</p>
<p>// --- for a NODE_DEPTH rating curve the effective head across the</p>
<p>// outlet is the depth above the crest elev. while for a NODE_HEAD</p>
<p>// curve it is the difference between upstream &amp; downstream heads</p>
<p>hcrest = Node[n1].invertElev + Link[j].offset1;</p>
<p>if ( Outlet[k].curveType == NODE_HEAD &amp;&amp; RouteModel == DW )</p>
<p>head = h1 - MAX(h2, hcrest);</p>
<p>else head = h1 - hcrest;</p>
<p>// --- no flow if either no effective head difference,</p>
<p>// no upstream water available, or closed flap gate</p>
<p>if ( head &lt;= FUDGE || y1 &lt;= FUDGE ||</p>
<p>link_setFlapGate(j, n1, n2, dir) )</p>
<p>{</p>
<p>Link[j].newDepth = 0.0;</p>
<p>Link[j].flowClass = DRY;</p>
<p>return 0.0;</p>
<p>}</p>
<p>// --- otherwise use rating curve or function to compute flow</p>
<p>Link[j].newDepth = head;</p>
<p>Link[j].flowClass = SUBCRITICAL;</p>
<p>return dir * Link[j].setting * outlet_getFlow(k, head);</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h1 id="how-is-the-flow-calculated"><span class="smallcaps">How is the flow calculated?</span></h1>
<p>Flow is either a rating curve or a function = SWMM5 always has internal units of USA Units.</p></td>
<td><h2 id="double-outlet_getflowint-k-double-head">double outlet_getFlow(int k, double head)</h2>
<p>//</p>
<p>// Input: k = outlet index</p>
<p>// head = head across outlet (ft)</p>
<p>// Output: returns outlet flow rate (cfs)</p>
<p>// Purpose: computes flow rate through an outlet given head.</p>
<p>//</p>
<p>{</p>
<p>int m;</p>
<p>double h;</p>
<p>// --- convert head to original units</p>
<p>h = head * UCF(LENGTH);</p>
<p>// --- look-up flow in rating curve table if provided</p>
<p>m = Outlet[k].qCurve;</p>
<p>if ( m &gt;= 0 ) return table_lookup(&amp;Curve[m], h) / UCF(FLOW);</p>
<p>// --- otherwise use function to find flow</p>
<p>else return Outlet[k].qCoeff * pow(h, Outlet[k].qExpon) / UCF(FLOW);</p></td>
</tr>
<tr class="even">
<td><h1 id="two-types-of-functions-and-two-types-of-tables-depth-and-head"><span class="smallcaps">two types of Functions and two types of Tables – Depth and Head</span></h1>
<h1 id="section"></h1>
<h1 id="section-1"></h1></td>
<td><img src="./media/image1.png" style="width:4.84209in;height:2.25853in" /></td>
</tr>
<tr class="odd">
<td><h1 id="what-are-the-boundary-conditions-of-the-outlet"><span class="smallcaps">What are the boundary conditions of the Outlet?</span></h1></td>
<td><p><strong>h1</strong> is the depth at the upstream node + the invert of the upstream node.</p>
<p><strong>h2</strong> is the depth at the downstream node + the invert of the downstream node.</p>
<p>If <strong>h2</strong> &gt; <strong>h1</strong> then there is reverse flow and <strong>h1</strong> becomes <strong>h2</strong> and <strong>h2</strong> becomes <strong>h1</strong>.</p>
<p>What is the <strong>hCrest</strong> elevation = invert of node <strong>n1</strong> + offset depth of <strong>OUTLET.</strong></p>
<p><strong>Head of OUTLET is h1 – hCrest if the OUTLET Type is Depth.</strong></p>
<p><strong>Head of OUTLET is h1 – MAX(h2, hCrest) if OUTLET Type is Head.</strong></p>
<p><strong>If reverse flow and Flap Gate the flow is zero.</strong></p></td>
</tr>
<tr class="even">
<td><h1 id="list-view-of-the-h1-h2-and-head-rules"><span class="smallcaps">List View of the h1, h2 and Head Rules</span></h1></td>
<td></td>
</tr>
</tbody>
</table>

Presentation notes table
