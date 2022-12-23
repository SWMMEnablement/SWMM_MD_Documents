# InfoSewer GIS Exchange 

The GIS Exchange allows the user to quickly import and export data between InfoSewer and other GIS formats.  It also allows the user to perform spatial joins between an imported GIS layer and an InfoSewer data table.

**<u>Running GIS Exchange</u>**

To run a GIS Exchange, you must first import a GIS layer for which an exchange is desired.  From the **View** menu, select **Add Layer**.  Once the add layer dialog box opens, point to the GIS layer on the network drive to add it to the InfoSewer session. Add the layer using your mouse and click on the GIS Exchange icon at the top of the control center.  You will now see the GIS Exchange dialog box and be able to select the type of join to be performed by the GIS Exchange.

This process is also applicable to ESRI geodatabases and ArcSDE Layers.  By adding an SDE layer, you are also to perform a GIS Exchange with the highlighted GIS layer.

**<u>Tabular Joins</u>**

A tabular join merely exchanges data fields between one GIS data source and another.  Use the GIS ID Mapping field to denote which field in the GIS layer will be matched with the respective ID field in the selected InfoSewer data table.

<img src="./media/image1.png" style="width:4.72986in;height:4.33125in" />

- **GIS Data Source** - The file that will be used for exchanging data.

- **H2OMAP Data Type** - The InfoSewer Element (and associated tables) that will be used in the exchange.

- **Update Direction** - Specify the direction for the GIS Exchange.

- **Relate Type** - During a tabular join, select the Tabular Join radial button.

- **GIS ID Mapping Field** - The Unique ID field that will be mapped to the corresponding ID field in InfoSewer

- **Create New Records** - When this option is selected, new records will be created.  Use the Field Mapping tab to map the corresponding fields.

- **Create New ID's** - By checking this box, InfoSewer will automatically assign unique ID's to the elements being exchanged.

- **Update Existing Records** - This option will update matching fields as denoted in the GIS ID Mapping Field.  Use the Field Mapping tab to map the corresponding fields.

- **Update Geometry Data** - When this box is checked, the physical geometry of the data file being exchanged will be updated to reflect recent changes.

Once the tabular join options have been specified, proceed to the Field Mapping tab to map the desired fields prior to exchanging the data.

<u>Spatial Joins</u>

A spatial join allows the user to perform a join between two data layers based on their physical relationship to one another.  This means that the data contained in one data layer can be assigned to another table by using 'smart topography' features of InfoSewer.

<img src="./media/image2.png" style="width:4.72986in;height:4.33125in" />

- **GIS Data Source** - The file that will be used for exchanging data.

- **InfoSewer Data Type** - The InfoSewer Element (and associated tables) that will be used in the exchange.

- **Update Direction** - Specify the direction for the GIS Exchange.

- **Relate Type** - During a spatial join, select the Spatial Join radial button.

- **Select from InfoSewer Data** - Using a graphical selection, the user can graphically select which elements are to be included in the spatial join process.  When this box is checked, click the Select Elements button to make a graphical selection.

- **Desired Topology Relationship** - The user must specify the type of spatial join to be utilized during the spatial join

- ***Completely Contain*** - Used to exchange data between a point or line data layer and a polygon.  Those elements that are 'completely contained' in the polygon data set will be tagged for the spatial join.  Those elements not completely contained will be excluded.

- ***Intersect*** - When two data layers are intersected, those elements that are contained within and/or cross the intersected layer are tagged for the spatial join.  Those elements that do not have a physical intersection are excluded.

- ***Within Distance of*** - Those elements that are within the user specified distance will be tagged for a spatial join.  This option is specified to assign contour elevation data to a point element such as a manhole rim elevation.  In other words, any elements of the selected layer that fall within the tolerance level specified will be tagged for a spatial join.

- Once the spatial join options have been specified, proceed to the Field Mapping tab to map the desired fields prior to exchanging the data.

**<u>Field Mapping</u>**

The field mapping tab allows the user to map corresponding fields to one another prior to performing the GIS Exchange.  Merely select fields on the left hand side to be mapped to InfoSewer field on the right.  Once all field mapping has been completed, click on the Exchange button to finish the GIS Exchange.

<img src="./media/image3.png" style="width:4.72986in;height:4.33125in" />

- **GIS Data Fields** - The fields found in the GIS data set that can be linked to the InfoSewer data fields.  Use the arrow buttons to map one field to another.

- **InfoSewer/GIS Data Field Mapping** - TheInfoSewer fields that are available to be mapped during a GIS Exchange.  By using the arrow buttons, select the desired exchange fields to map to the InfoSewer fields.
