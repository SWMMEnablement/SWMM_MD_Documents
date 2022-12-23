**How to Use and Understand the InfoSewer IEDB Folder**

Did you know that once you’ve repaired and refined a mesh body in the [<u>Fusion 360</u>](https://www.autodesk.com/products/fusion-360/free-trial?mktvar002=4333583001|ORG|&utm_medium=social&utm_source=other&utm_campaign=4333583dmblogf360&utm_id=4333583001) Design Workspace, you can convert it to a solid or surface body in your design? Start taking full advantage of the versatile solid and surface modeling tools in Fusion 360 today.

<img src="./media/image1.png" style="width:6.5in;height:3.23056in" alt="Table Description automatically generated with medium confidence" /><img src="./media/image2.jpeg" style="width:6.25in;height:3.26389in" alt="mesh-solid-surface-body-fusion-360" />

**Solid body vs. surface body**

Solid bodies are watertight boundary representations or BREPs. Surface bodies are also BREPs, but they are not watertight.

**How to convert a mesh body to a solid or surface body**

To start, on the toolbar, navigate to the **Mesh tab**. Expand the **Modify** menu and then click **Convert Mesh**. In the canvas or the browser, select the mesh body you want to convert. If the mesh body has more than 10,000 faces, you can still convert it. However, it will take a significant amount of time to complete.

If you set the operation to **Parametric**, Fusion 360 will create a convert mesh feature in the timeline that maintains its upstream parametric relationships. And if you set the method to faceted and click **OK**, each individual face on the mesh body converts to an individual face on the resulting solid or surface body. Because the operation is parametric, if you edit any of the upstream features associated with the mesh body you converted, the **Convert Mesh** feature will reflect those changes.

**From faceted to prismatic**

Next, if you want to switch from faceted to prismatic, you can right-click the **Convert Mesh** feature in the timeline and select the **Edit** feature. The prismatic method merges groups of faces into singular faces. This makes up the prismatic features on the new solid or surface body. You can use any face groups on the mesh body to infer prismatic features. When you click **OK**, the converted solid or surface body updates to use the prismatic method.

You can also use **Convert Mesh** to create a base feature in the timeline that does not maintain any upstream parametric relationships. You can still select either the faceted or prismatic method. When you click **OK**, the mesh body still converts to a solid or surface body, and a new base feature is also added to the timeline. This does not affect any upstream changes you make to the parametric design. And there is no way to go back and edit the Convert Mesh feature.

**Forming a solid body**

Finally, if the result of the Convert Mesh command is a surface body instead of a solid body, but all of the faces should combine to create a watertight solid, you may be able to stitch the faces of the surface body together to form a solid body.

In the browser, select the surface body so that all of its faces are selected. On the toolbar, navigate to the **Surface tab**. On the Modify panel, click **Stitch**, and the dialog displays. You can adjust the settings or click **OK**. If the faces can be stitched together to form a watertight solid, the body in the browser will switch from a surface body to a solid body. If it remains a surface body, you can use additional surface modeling tools to patch any holes in the body or edit the parametric mesh upstream in the timeline before it was converted.
