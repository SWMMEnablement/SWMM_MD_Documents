<img src="./media/image1.jpg" style="width:8.5in;height:11in" />**EPA/600/R*-*14/413b Revised September 2015**

United States **[<u>www2.epa.gov/water-research</u>](http://www2.epa.gov/water-research)**

Environmental Protection  
Agency

**Storm Water Management Model User's Manual Version 5.1**

**Office of Research and Development** Water Supply and Water Resources Division

> EPA- 600**/R-14/413b Revisied September** 2015

Storm Water Management Model User’s Manual Version 5.1

> by
>
> Lewis A. Rossman
>
> Envronmental Scientist, Emeritus  
> U.S. Environmental Protection Agency

National Risk Management Research Laboratory  
Office of Research and Development  
U.S. Environmental Protection Agency  
26 Martin Luther King Drive  
Cincinnati, OH 45268

September 2015

**ACKNOWLEDGEMENTS**

This manual was prepared by Lewis A. Rossman, Environmental Scientist Emeritus, U.S. Environmental Protection Agency, Office of Research and Development, National Risk Management Research Laboratory.

ii

**DISCLAIMER**

The information in this document has been funded wholly or in part by the U.S. Environmental Protection Agency (EPA). It has been subjected to the Agency’s peer and administrative review, and has been approved for publication as an EPA document. Note that approval does not signify that the contents necessarily reflect the views of the Agency. Mention of trade names or commercial products does not constitute endorsement or recommendation for use.

**NOTICE**: This report was prepared as an account of work sponsored by an agency of the United States Government. Neither the United States Government, nor any agency thereof, nor any of their employees, nor any of their contractors, subcontractors, or their employees, make any warranty, express or implied, or assume any legal liability or responsibility for the accuracy, completeness, or usefulness of any information, apparatus, product, or process disclosed, or represent that its use would not infringe privately owned rights. Reference herein to any specific commercial product, process, or service by trade name, trademark, manufacturer, or otherwise, does not necessarily constitute or imply its endorsement, recommendation, or favoring by the United States Government, any agency thereof, or any of their contractors or subcontractors. The views and opinions expressed herein do not necessarily state or reflect those of the United States Government, any agency thereof, or any of their contractors.

iii

**CONTENTS**

**ACKNOWLEDGEMENTS II**

**DISCLAIMER III**

**CHAPTER 1 - INTRODUCTION 12**

1.1 What is SWMM 12

1.2 Modeling Capabilities 13

1.3 Typical Applications of SWMM 14

1.4 Installing EPA SWMM 14

1.5 Steps in Using SWMM 15

1.6 About This Manual 16

**CHAPTER 2 – QUICK START TUTORIAL 18**

2.1 Example Study Area 18

2.2 Project Setup 18

2.3 Drawing Objects 21

2.4 Setting Object Properties 24

2.5 Running a Simulation 28

2.6 Simulating Water Quality 38

2.7 Running a Continuous Simulation 42

**CHAPTER 3 – SWMM’S CONCEPTUAL MODEL 46**

3.1 Introduction 46

3.2 Visual Objects 46

3.3 Non-Visual Objects 57

3.4 Computational Methods 72

**CHAPTER 4 – SWMM’S MAIN WINDOW 80**

4.1 Overview 80

4.2 Main Menu 81

iv

4.3 Toolbars 84

4.4 Status Bar 86

4.5 Study Area Map 87

4.6 Project Browser 88

4.7 Map Browser 89

4.8 Property Editor 91

4.9 Setting Program Preferences 92

**CHAPTER 5 – WORKING WITH PROJECTS 94**

5.1 Creating a New Project 94

5.2 Opening an Existing Project 94

5.3 Saving a Project 94

5.4 Setting Project Defaults 95

5.5 Measurement Units 97

5.6 Link Offset Conventions 97

5.7 Calibration Data 98

5.8 Viewing All Project Data 100

**CHAPTER 6 – WORKING WITH OBJECTS 101**

6.1 Types of Objects 101

6.2 Adding Objects 101

6.3 Selecting and Moving Objects 102

6.4 Editing Objects 103

6.5 Converting an Object 104

6.6 Copying and Pasting Objects 104

6.7 Shaping and Reversing Links 104

6.8 Shaping a Subcatchment 105

6.9 Deleting an Object 105

6.10 Editing or Deleting a Group of Objects 105

v

**CHAPTER 7 – WORKING WITH THE MAP 108**

7.1 Selecting a Map Theme 108

7.2 Setting the Map’s Dimensions 108

7.3 Utilizing a Backdrop Image 109

7.4 Measuring Distances 113

7.5 Zooming the Map 113

7.6 Panning the Map 114

7.7 Viewing at Full Extent 114

7.8 Finding an Object 114

7.9 Submitting a Map Query 115

7.10 Using the Map Legends 116

7.11 Using the Overview Map 118

7.12 Setting Map Display Options 118

7.13 Exporting the Map 122

**CHAPTER 8 – RUNNING A SIMULATION 124**

8.1 Setting Simulation Options 124

8.2 Setting Reporting Options 131

8.3 Starting a Simulation 132

8.4 Troubleshooting Results 133

**CHAPTER 9 – VIEWING RESULTS 136**

9.1 Viewing a Status Report 136

9.2 Viewing Summary Results 136

9.3 Time Series Results 140

9.4 Viewing Results on the Map 141

9.5 Viewing Results with a Graph 142

9.6 Customizing a Graph’s Appearance 148

9.7 Viewing Results with a Table 153

vi

9.8 Viewing a Statistics Report 156

**CHAPTER 10 – PRINTING AND COPYING 160**

10.1 Selecting a Printer 160

10.2 Setting the Page Format 161

10.3 Print Preview 162

10.4 Printing the Current View 162

10.5 Copying to the Clipboard or to a File 162

**CHAPTER 11 – FILES USED BY SWMM 164**

11.1 Project Files 164

11.2 Report and Output Files 164

11.3 Rainfall Files 165

11.4 Climate Files 165

11.5 Calibration Files 166

11.6 Time Series Files 167

11.7 Interface Files 168

**CHAPTER 12 – USING ADD-IN TOOLS 173**

12.1 What Are Add-In Tools 173

12.2 Configuring Add-In Tools 174

**APPENDIX A – USEFUL TABLES 177**

A.1 Units of Measurement 177

A.2 Soil Characteristics 178

A.3 NRCS Hydrologic Soil Group Definitions 179

A.4 SCS Curve Numbers 180

A.5 Depression Storage 181

A.6 Manning’s n – Overland Flow 182

A.7 Manning’s n – Closed Conduits 183

A.8 Manning’s n – Open Channels 184

vii

A.9 Water Quality Characteristics of Urban Runoff 185

A.10 Culvert Code Numbers 186

A.11 Culvert Entrance Loss Coefficients 189

A.12 Standard Elliptical Pipe Sizes 190

A.13 Standard Arch Pipe Sizes 191

**APPENDIX B – VISUAL OBJECT PROPERTIES 195**

B.1 Rain Gage Properties 195

B.2 Subcatchment Properties 196

B.3 Junction Properties 198

B.4 Outfall Properties 199

B.5 Flow Divider Properties 200

B.6 Storage Unit Properties 202

B.7 Conduit Properties 204

B.8 Pump Properties 205

B.9 Orifice Properties 206

B.10 Weir Properties 207

B.11 Outlet Properties 208

B.12 Map Label Properties 209

**APPENDIX C – SPECIALIZED PROPERTY EDITORS 210**

C.1 Aquifer Editor 210

C.2 Climatology Editor 212

C.3 Control Rules Editor 220

C.4 Cross-Section Editor 225

C.5 Curve Editor 226

C.6 Groundwater Flow Editor 227

C.7 Groundwater Equation Editor 230

C.8 Infiltration Editor 231

viii

C.9 Inflows Editor 234

C.10 Initial Buildup Editor 239

C.11 Land Use Editor 240

C.12 Land Use Assignment Editor 244

C.13 LID Control Editor 245

C.14 LID Group Editor 251

C.15 LID Usage Editor 252

C.16 Pollutant Editor 254

C.17 Snow Pack Editor 256

C.18 Time Pattern Editor 260

C.19 Time Series Editor 261

C.20 Title/Notes Editor 263

C.21 Transect Editor 264

C.22 Treatment Editor 266

C.23 Unit Hydrograph Editor 268

**APPENDIX D – COMMAND LINE SWMM 270**

**APPENDIX E – ERROR AND WARNING MESSAGES 343**

ix

**LIST OF FIGURES**

**FIGURE 2-1 EXAMPLE STUDY AREA 18**

**FIGURE 2-2 DEFAULT ID LABELING FOR TUTORIAL EXAMPLE 19**

**FIGURE 2-3 MAP OPTIONS DIALOG 21**

**FIGURE 2-4 SUBCATCHMENTS AND NODES FOR EXAMPLE STUDY AREA 22**

**FIGURE 2-5 PROPERTY EDITOR WINDOW 24**

**FIGURE 2-6 GROUP EDITOR DIALOG 25**

**FIGURE 2-7 TIME SERIES EDITOR 27**

**FIGURE 2-8 TITLE/NOTES EDITOR 28**

**FIGURE 2-9 SIMULATION OPTIONS DIALOG 29**

**FIGURE 2-10 PORTION OF A STATUS REPORT 30**

**FIGURE 2-11 NODE FLOODING SUMMARY TABLE 31**

**FIGURE 2-12 CONDUIT SURCHARGE SUMMARY TABLE 31**

**FIGURE 2-13 VIEWING COLOR-CODED RESULTS ON THE STUDY AREA MAP 32**

**FIGURE 2-14 TIME SERIES PLOT DIALOGS 34**

**FIGURE 2-15 TIME SERIES PLOT OF LINK FLOWS 34**

**FIGURE 2-16 PROFILE PLOT DIALOG 35**

**FIGURE 2-17 EXAMPLE PROFILE PLOT 36**

**FIGURE 2-18 DYNAMIC WAVE SIMULATION OPTIONS 37**

**FIGURE 2-19 POLLUTANT EDITOR DIALOG 39**

**FIGURE 2-20 LAND USE EDITOR DIALOG 39**

**FIGURE 2-21 DEFINING A TSS BUILDUP FUNCTION 40**

**FIGURE 2-22 LAND USE ASSIGNMENT DIALOG 41**

**FIGURE 2-23 RUNOFF TSS FROM SELECTED SUBCATCHMENTS 42**

**FIGURE 2-24 STATISTICS SELECTION DIALOG 44**

**FIGURE 2-25 EXAMPLE STATISTICS REPORT 45**

**FIGURE 3-1 PHYSICAL OBJECTS USED TO MODEL A DRAINAGE SYSTEM 47**

**FIGURE 3-2 CONCRETE BOX CULVERT 53**

**FIGURE 3-3 AREAL DEPLETION CURVE FOR A NATURAL AREA 59**

**FIGURE 3-4 AN RDII UNIT HYDROGRAPH 61**

**FIGURE 3-5 EXAMPLE OF A NATURAL CHANNEL TRANSECT 62**

**FIGURE 3-6 ADJUSTMENT OF SUBCATCHMENT PARAMETERS AFTER LID PLACEMENT 71**

x

**FIGURE 3-7 CONCEPTUAL VIEW OF SURFACE RUNOFF 73**

**FIGURE 3-8 TWO-ZONE GROUNDWATER MODEL 74**

**FIGURE 3-9 CONCEPTUAL DIAGRAM OF A BIO-RETENTION CELL LID 78**

**FIGURE 8-1 FLOW INSTABILITY INDEX FOR A FLOW HYDROGRAPH 135**

**FIGURE 11-1 COMBINING ROUTING INTERFACE FILES 171**

**LIST OF TABLES**

**TABLE 3-1 AVAILABLE CROSS SECTION SHAPES FOR CONDUITS 52**

**TABLE 3-2 AVAILABLE TYPES OF WEIRS 56**

**TABLE 9-1 TIME SERIES VARIABLES AVAILABLE FOR VIEWING 141**

**TABLE D-1 GEOMETRIC PARAMETERS OF CONDUIT CROSS SECTIONS 313**

**TABLE D-2 POLLUTANT BUILDUP FUNCTIONS (T IS ANTECEDENT DRY DAYS) 326**

**TABLE D-3 POLLUTANT WASH OFF FUNCTIONS 327**

xi

**CHAPTER 1 - INTRODUCTION**

**1.1 What is SWMM**

The EPA Storm Water Management Model (SWMM) is a dynamic rainfall-runoff simulation model used for single event or long-term (continuous) simulation of runoff quantity and quality from primarily urban areas. The runoff component of SWMM operates on a collection of subcatchment areas that receive precipitation and generate runoff and pollutant loads. The routing portion of SWMM transports this runoff through a system of pipes, channels, storage/treatment devices, pumps, and regulators. SWMM tracks the quantity and quality of runoff generated within each subcatchment, and the flow rate, flow depth, and quality of water in each pipe and channel during a simulation period comprised of multiple time steps.

> <img src="./media/image2.jpg" style="width:6.00972in;height:3.48681in" />

SWMM was first developed in 1971<sup>1</sup> and has undergone several major upgrades since then<sup>2</sup>. It continues to be widely used throughout the world for planning, analysis and design related to storm water runoff, combined sewers, sanitary sewers, and other drainage systems in urban

1 Metcalf & Eddy, Inc., University of Florida, Water Resources Engineers, Inc. “Storm Water Management Model, Volume I – Final Report”, 11024DOC07/71, Water Quality Office, Environmental Protection Agency, Washington, DC, July 1971.

<sup>2</sup> Huber, W.C. and Dickinson, R.E., “Storm Water Management Model, Version 4: User’s Manual, EPA/600/3-88/001a, Environmental Research Laboratory, U.S. Environmental Protection Agency, Athens, GA, October 1992.

**12**

areas, with many applications in non-urban areas as well. The current edition, Version 5, is a complete re-write of the previous release.

Running under Windows, SWMM 5 provides an integrated environment for editing study area input data, running hydrologic, hydraulic and water quality simulations, and viewing the results in a variety of formats. These include color-coded drainage area and conveyance system maps, time series graphs and tables, profile plots, and statistical frequency analyses.

This latest re-write of SWMM was produced by the Water Supply and Water Resources Division of the U.S. Environmental Protection Agency's National Risk Management Research Laboratory with assistance from the consulting firm of CDM-Smith.

**1.2 Modeling Capabilities**

SWMM accounts for various hydrologic processes that produce runoff from urban areas. These include:

- time-varying rainfall

- evaporation of standing surface water

- snow accumulation and melting

- rainfall interception from depression storage

- infiltration of rainfall into unsaturated soil layers

- percolation of infiltrated water into groundwater layers

- interflow between groundwater and the drainage system

- nonlinear reservoir routing of overland flow

- capture and retention of rainfall/runoff with various types of low impact development (LID) practices.

Spatial variability in all of these processes is achieved by dividing a study area into a collection of smaller, homogeneous subcatchment areas, each containing its own fraction of pervious and impervious sub-areas. Overland flow can be routed between sub-areas, between subcatchments, or between entry points of a drainage system.

SWMM also contains a flexible set of hydraulic modeling capabilities used to route runoff and external inflows through a drainage system network of pipes, channels, storage/treatment units and diversion structures. These include the ability to:

- handle networks of unlimited size

- use a wide variety of standard closed and open conduit shapes as well as natural channels

- model special elements such as storage/treatment units, flow dividers, pumps, weirs, and orifices

- apply external flows and water quality inputs from surface runoff, groundwater interflow, rainfall-dependent infiltration/inflow, dry weather sanitary flow, and user-defined inflows

- utilize either kinematic wave or full dynamic wave flow routing methods

- model various flow regimes, such as backwater, surcharging, reverse flow, and surface ponding

**13**

- apply user-defined dynamic control rules to simulate the operation of pumps, orifice openings, and weir crest levels.

In addition to modeling the generation and transport of runoff flows, SWMM can also estimate the production of pollutant loads associated with this runoff. The following processes can be modeled for any number of user-defined water quality constituents:

- dry-weather pollutant buildup over different land uses

- pollutant washoff from specific land uses during storm events

- direct contribution of rainfall deposition

- reduction in dry-weather buildup due to street cleaning

- reduction in washoff load due to BMPs

- entry of dry weather sanitary flows and user-specified external inflows at any point in the drainage system

- routing of water quality constituents through the drainage system

- reduction in constituent concentration through treatment in storage units or by natural processes in pipes and channels.

**1.3 Typical Applications of SWMM**

Since its inception, SWMM has been used in thousands of sewer and stormwater studies throughout the world. Typical applications include:

- design and sizing of drainage system components for flood control

- sizing of detention facilities and their appurtenances for flood control and water quality protection

- flood plain mapping of natural channel systems

- designing control strategies for minimizing combined sewer overflows

- evaluating the impact of inflow and infiltration on sanitary sewer overflows

- generating non-point source pollutant loadings for waste load allocation studies

- evaluating the effectiveness of BMPs for reducing wet weather pollutant loadings.

**1.4 Installing EPA SWMM**

EPA SWMM Version 5 is designed to run under all versions of the Microsoft Windows personal computer operating system. It is distributed as a single file, swmm51xxx_setup.exe (where xxx is the current release number which as of this writing is 010) that contains a self-extracting setup program. To install EPA SWMM:

1.  Select **Run** from the Windows Start menu.

2.  Enter the full path and name of the setup file or click the **Browse** button to locate it on your computer.

3.  Click the **OK** button type to begin the setup process.

The setup program will ask you to choose a folder (directory) where the SWMM program files will be placed. The default folder is **[<u>c:\Program</u>](c:\Program) Files\EPA SWMM 5.1**. After the files are installed your Start Menu will have a new item named EPA SWMM 5.1. To launch SWMM, simply select

**14**

this item off of the Start Menu, and then select EPA SWMM 5.1 from the submenu that appears. (The name of the executable file that runs SWMM under Windows is **epaswmm5.exe**.)

A user’s personal settings for running SWMM are stored in a folder named *EPASWMM* under the user’s Application Data directory (e.g., *Users\\\<username\>\AppData\Roaming\EPASWMM* for Windows 7). If you need to save these settings to a different location, you can install a shortcut to SWMM 5 on the desktop whose target entry includes the name of the SWMM 5 executable followed by /s \<userfolder\>, where \<userfolder\> is the name of the folder where the personal settings will be stored. An example might be:

> *“c:\Program Files\EPA SWMM 5.1\epaswmm5.exe” /s “My Folders\SWMM5\\”.*

Several example data sets have been included with the installation package to help users become familiar with the program. They are placed in a sub-folder named *EPA SWMM Projects\Examples* in the user’s *My Documents* folder. Each example consists of a *.INP* file that holds the project’s data along with a *.TXT* file that describes the system being modeled.

To remove EPA SWMM from your computer, do the following:

1.  Select Settings from the Windows Start menu.

2.  Select Control Panel from the Settings menu.

3.  Double-click on the Add/Remove Programs item.

4.  Select EPA SWMM 5.1 from the list of programs that appears.

5.  Click the Add/Remove button.

**1.5 Steps in Using SWMM**

One typically carries out the following steps when using EPA SWMM to model a study area:

1.  Specify a default set of options and object properties to use (see Section 5.4).

2.  Draw a network representation of the physical components of the study area (see Section 6.2).

3.  Edit the properties of the objects that make up the system (see Section 6.4).

4.  Select a set of analysis options (see Section 8.1).

5.  Run a simulation (see Section 8.2).

6.  View the results of the simulation (see Chapter 9).

For building larger systems from scratch it will be more convenient to replace Step 2 by collecting study area data from various sources, such as CAD drawings or GIS files, and transferring these data into a SWMM input file whose format is described in Appendix D of this manual.

**15**

**1.6 About This Manual**

Chapter 2 presents a short tutorial to help get started using EPA SWMM. It shows how to add objects to a SWMM project, how to edit the properties of these objects, how to run a single event simulation for both hydrology and water quality, and how to run a long-term continuous simulation.

Chapter 3 provides background material on how SWMM models stormwater runoff within a drainage area. It discusses the behavior of the physical components that comprise a stormwater drainage area and collection system as well as how additional modeling information, such as rainfall quantity, dry weather sanitary inflows, and operational control, are handled. It also provides an overview of how the numerical simulation of system hydrology, hydraulics and water quality behavior is carried out.

Chapter 4 shows how the EPA SWMM graphical user interface is organized. It describes the functions of the various menu options and toolbar buttons, and how the three main windows – the Study Area Map, the Browser panel, and the Property Editor—are used.

Chapter 5 discusses the project files that store all of the information contained in a SWMM model of a drainage system. It shows how to create, open, and save these files as well as how to set default project options. It also discusses how to register calibration data that are used to compare simulation results against actual measurements.

Chapter 6 describes how one goes about building a network model of a drainage system with SWMM. It shows how to create the various physical objects (subcatchment areas, drainage pipes and channels, pumps, weirs, storage units, etc.) that make up a system, how to edit the properties of these objects, and how to describe the way that externally imposed inflows, boundary conditions and operational controls change over time.

Chapter 7 explains how to use the study area map that provides a graphical view of the system being modeled. It shows how to view different design and computed parameters in color-coded fashion on the map, how to re-scale, zoom, and pan the map, how to locate objects on the map, how to utilize a backdrop image, and what options are available to customize the appearance of the map.

Chapter 8 shows how to run a simulation of a SWMM model. It describes the various options that control how the analysis is made and offers some troubleshooting tips to use when examining simulation results.

Chapter 9 discusses the various ways in which the results of an analysis can be viewed. These include different views of the study area map, various kinds of graphs and tables, and several different types of special reports.

Chapter 10 explains how to print and copy the results discussed in Chapter 9.

Chapter 11 describes how EPA SWMM can use different types of interface files to make simulations runs more efficient.

**16**

Chapter 12 describes how add-in tools can be registered and share data with SWMM. These tools are external applications launched from SWMM’s graphical user interface that can extend its capabilities.

The manual also contains several appendixes:

Appendix A - provides several useful tables of parameter values, including a table of units of expression for all design and computed parameters.

Appendix B - lists the editable properties of all visual objects that can be displayed on the study area map and be selected for editing using point and click.

Appendix C - describes the specialized editors available for setting the properties of non-visual objects.

Appendix D - provides instructions for running the command line version of SWMM and includes a detailed description of the format of a project file.

Appendix E - lists all of the error messages and their meaning that SWMM can produce.

**17**

**CHAPTER 2 – QUICK START TUTORIAL**

*This chapter provides a tutorial on how to use EPA SWMM. If you are not familiar with the elements that comprise a drainage system, and how these are represented in a SWMM model, you might want to review the material in Chapter 3 first.*

**2.1 Example Study Area**

In this tutorial we will model the drainage system serving a 12-acre residential area. The system layout is shown in Figure 2-1 and consists of subcatchment areas<sup>3</sup> *S1* through *S3*, storm sewer conduits *C1* through *C4*, and conduit junctions *J1* through *J4*. The system discharges to a creek at the point labeled *Out1*. We will first go through the steps of creating the objects shown in this diagram on SWMM's study area map and setting the various properties of these objects. Then we will simulate the water quantity and quality response to a 3-inch, 6-hour rainfall event, as well as a continuous, multi-year rainfall record.

> <img src="./media/image3.png" style="width:2.15972in;height:1.7in" />

**Figure 2-1 Example study area**

**2.2 Project Setup**

Our first task is to create a new SWMM project and make sure that certain default options are selected. Using these defaults will simplify the data entry tasks later on.

1.  Launch EPA SWMM if it is not already running and select **File** \>\> **New** from the Main Menu bar to create a new project.

2.  Select **Project** \>\> **Defaults** to open the Project Defaults dialog.

<sup>3</sup> A subcatchment is an area of land containing a mix of pervious and impervious surfaces whose runoff drains to a common outlet point, which could be either a node of the drainage network or another subcatchment.

**18**

3.  On the ID Labels page of the dialog, set the ID Prefixes as shown in Figure 2-2. This will make SWMM automatically label new objects with consecutive numbers following the designated prefix.

> <img src="./media/image4.jpg" style="width:2.95in;height:4.52014in" />

**Figure 2-2 Default ID labeling for tutorial example**

4.  On the Subcatchments page of the dialog set the following default values:

> Area 4
>
> Width 400
>
> % Slope 0.5
>
> % Imperv. 50
>
> N-Imperv. 0.01
>
> N-Perv. 0.10
>
> Dstore-Imperv. 0.05
>
> Dstore-Perv 0.05
>
> %Zero-Imperv. 25
>
> Infil. Model \<click to edit\>
>
> \- Method Modified Green-Ampt
>
> \- Suction Head 3.5
>
> \- Conductivity 0.5
>
> \- Initial Deficit 0.26

**19**

5.  On the Nodes/Links page set the following default values:

> Node Invert 0
>
> Node Max. Depth 4
>
> Node Ponded Area 0
>
> Conduit Length 400
>
> Conduit Geometry \<click to edit\>
>
> \- Barrels 1
>
> \- Shape Circular
>
> \- Max. Depth 1.0
>
> Conduit Roughness 0.01
>
> Flow Units CFS
>
> Link Offsets DEPTH
>
> Routing Model Kinematic Wave

6.  Click **OK** to accept these choices and close the dialog. If you wanted to save these choices for all future new projects you could check the Save box at the bottom of the form before accepting it.

Next we will set some map display options so that ID labels and symbols will be displayed as we add objects to the study area map, and links will have direction arrows.

1.  Select **Tools** \>\> **Map Display Options** to bring up the Map Options dialog (see Figure 2­3).

2.  Select the Subcatchments page, set the Fill Style to Diagonal and the Symbol Size to 5.

3.  Then select the Nodes page and set the Node Size to 5.

4.  Select the Annotation page and check off the boxes that will display ID labels for Subcatchments, Nodes, and Links. Leave the others un-checked.

5.  Finally, select the Flow Arrows page, select the Filled arrow style, and set the arrow size to 7.

6.  Click the **OK** button to accept these choices and close the dialog.

**20**

> <img src="./media/image5.jpg" style="width:3.49028in;height:3.84306in" />

**Figure 2-3 Map options dialog**

Before placing objects on the map we should set its dimensions.

1.  Select **View** \>\> **Dimensions** to bring up the Map Dimensions dialog.

2.  You can leave the dimensions at their default values for this example.

Finally, look in the status bar at the bottom of the main window and check that the **Auto-Length** feature is off.

**2.3 Drawing Objects**

We are now ready to begin adding components to the Study Area Map<sup>4</sup>. We will start with the subcatchments.

> **1.** Begin by selecting the **Subcatchments** category (under Hydrology) in the Project Browser panel (on the left side of the main window).

4 Drawing objects on the map is just one way of creating a project. For large projects it might be more convenient to first construct a SWMM project file external to the program. The project file is a text file that describes each object in a specified format as described in Appendix D of this manual. Data extracted from various sources, such as CAD drawings or GIS files, can be used to create the project file.

**21**

2.  Then click the button on the toolbar underneath the object category listing in the  
    > Project panel (or select **Project \| Add a New Subcatchment** from the main menu). Notice how the mouse cursor changes shape to a pencil when you move it over the map.

3.  Move the mouse to the map location where one of the corners of subcatchment *S1* lies and left-click the mouse.

4.  Do the same for the next three corners and then right-click the mouse (or hit the **Enter** key) to close up the rectangle that represents subcatchment *S1*. You can press the **Esc** key if instead you wanted to cancel your partially drawn subcatchment and start over again. Don't worry if the shape or position of the object isn't quite right. We will go back later and show how to fix this.

5.  Repeat this process for subcatchments *S2* and *S3*<sup>5</sup>.

Observe how sequential ID labels are generated automatically as we add objects to the map.

Next we will add in the junction nodes and the outfall node that comprise part of the drainage network.

1.  To begin adding junctions, select the **Junctions** category from the Project Browser

> (under Hydraulics -\> Nodes) and click the button or select **Project \| Add a New**
>
> **Junction** from the main menu..

2.  Move the mouse to the position of junction *J1* and left-click it. Do the same for junctions *J2* through *J4*.

3.  To add the outfall node, select **Outfalls** from the Project Browser, click the button or  
    > select **Project \| Add a New Outfall** from the main menu, move the mouse to the outfall's location on the map, and left-click. Note how the outfall was automatically given the name *Out1*.

At this point your map should look something like that shown in Figure 2-4.

> <img src="./media/image6.png" style="width:2.34722in;height:1.91667in" />

**Figure 2-4 Subcatchments and nodes for example study area**

<sup>5</sup> If you right-click (or press **Enter**) after adding the first point of a subcatchment's outline, the subcatchment will be shown as just a single point.

**22**

Now we will add the storm sewer conduits that connect our drainage system nodes to one another. (You must have created a link's end nodes as described previously before you can create the link.) We will begin with conduit *C1*, which connects junction *J1* to *J2*.

1.  Select the **Conduits** from the Project Browser (under Hydraulics -\> Links) and press the

button or select **Project \| Add a New Conduit** from the main menu. The mouse cursor will change shape to a cross hair when moved onto the map.

2.  Left-click the mouse on junction *J1*. Note how the mouse cursor changes shape to a pencil.

3.  Move the mouse over to junction *J2* (note how an outline of the conduit is drawn as you move the mouse) and left-click to create the conduit. You could have cancelled the operation by either right clicking or by hitting the \<**Esc**\> key.

4.  Repeat this procedure for conduits *C2* through *C4*.

Although all of our conduits were drawn as straight lines, it is possible to draw a curved link by left-clicking at intermediate points where the direction of the link changes before clicking on the end node.

To complete the construction of our study area schematic we need to add a rain gage.

1.  Select the **Rain Gages** category from the Project Browser panel (under Hydrology) and

> either click the button or select **Project \| Add a New Rain Gage** from the main menu.

2.  Move the mouse over the Study Area Map to where the gage should be located and left-click the mouse.

At this point we have completed drawing the example study area. Your system should look like the one in Figure 2-1. If a rain gage, subcatchment or node is out of position you can move it by doing the following:

1.  If the button on the Map Toolbar is not already depressed, click it to place the map in Object Selection mode.

2.  Click on the object to be moved.

3.  Drag the object with the left mouse button held down to its new position.

To re-shape a subcatchment's outline:

1.  With the map in Object Selection mode, click on the subcatchment's centroid (indicated by a solid square within the subcatchment) to select it.

2.  Then click the button on the Map Toolbar to put the map into Vertex Selection mode.

3.  Select a vertex point on the subcatchment outline by clicking on it (note how the selected vertex is indicated by a filled solid square).

4.  Drag the vertex to its new position with the left mouse button held down.

**23**

5.  If need be, vertices can be added or deleted from the outline by right-clicking the mouse and selecting the appropriate option from the popup menu that appears.

6.  When finished, click the button to return to Object Selection mode. This same procedure can also be used to re-shape a link.

**2.4 Setting Object Properties**

As visual objects are added to our project, SWMM assigns them a default set of properties. To change the value of a specific property for an object we must select the object into the Property Editor (see Figure 2-5). There are several different ways to do this. If the Editor is already visible, then you can simply click on the object or select it from the Project Browser. If the Editor is not visible then you can make it appear by one of the following actions:

- double-click the object on the map,

- or right-click on the object and select **Properties** from the pop-up menu that appears,

- or select the object from the Project Browser and then click the Browser’s button.

> <img src="./media/image8.jpg" style="width:2.34306in;height:3.3in" />

**Figure 2-5 Property editor window**

Whenever the Property Editor has the focus you can press the **F1** key to obtain a more detailed description of the properties listed.

Two key properties of our subcatchments that need to be set are the rain gage that supplies rainfall data to the subcatchment and the node of the drainage system that receives runoff from

**24**

the subcatchment. Since all of our subcatchments utilize the same rain gage, *Gage1*, we can use a shortcut method to set this property for all subcatchments at once:

1.  From the main menu select **Edit** \>\>**Select All**.

2.  Then select **Edit** \>\> **Group Edit** to make a Group Editor dialog appear (see Figure 2-6).

3.  Select *Subcatchment* as the type of object to edit, *Rain Gage* as the property to edit, and type in *Gage1* as the new value.

4.  Click **OK** to change the rain gage of all subcatchments to *Gage1*. A confirmation dialog will appear noting that 3 subcatchments have changed. Select “**No**” when asked to continue editing.

> <img src="./media/image9.jpg" style="width:3.40347in;height:2.77986in" />

**Figure 2-6 Group editor dialog**

To set the outlet node of our subcatchments we have to proceed one by one, since these vary by subcatchment:

1.  Double click on subcatchment *S1* or select it from the Project Browser and click the

> Browser's button to bring up the Property Editor.

2.  Type *J1* in the Outlet field and press **Enter**. Note how a dotted line is drawn between the subcatchment and the node.

3.  Click on subcatchment *S2* and enter *J2* as its Outlet.

4.  Click on subcatchment *S3* and enter *J3* as its Outlet.

We also wish to represent area *S3* as being less developed than the others. Select *S3* into the Property Editor and set its % Imperviousness to 25.

**25**

The junctions and outfall of our drainage system need to have invert elevations assigned to them. As we did with the subcatchments, select each junction individually into the Property Editor and set its Invert Elevation to the value shown below<sup>6.</sup>

> **<u>Node Invert</u>**
>
> *J1 96*
>
> *J2 90*
>
> *J3 93*
>
> *J4 88*
>
> *Out1 85*

Only one of the conduits in our example system has a non-default property value. This is conduit *C4*, the outlet pipe, whose diameter should be 1.5 instead of 1 ft. To change its diameter, select conduit C4 into the Property Editor and set the Max. Depth value to 1.5.

In order to provide a source of rainfall input to our project we need to set the rain gage’s properties. Select *Gage1* into the Property Editor and set the following properties:

*Rain Format INTENSITY*

> *Rain Interval 1:00*

*Data Source TIMESERIES*

> *Series Name TS1*

As mentioned earlier, we want to simulate the response of our study area to a 3-inch, 6-hour design storm. A time series named *TS1* will contain the hourly rainfall intensities that make up this storm. Thus we need to create a time series object and populate it with data. To do this:

1.  From the Project Browser select the *Time Series* category of objects.

2.  Click the button on the Browser to bring up the Time Series Editor dialog (see Figure 2-7) .

> 7

3.  Enter *TS1* in the Time Series Name field.

4.  Enter the values shown in Figure 2-7 into the *Time* and *Value* columns of the data entry grid (leave the *Date* column blank ).

> 8

5.  You can click the **View** button on the dialog to see a graph of the time series values. Click the **OK** button to accept the new time series.

<sup>6</sup> An alternative way to move from one object of a given type to the next in order (or to the previous one) in the Property Editor is to hit the Page Down (or Page Up) key.

7 The Time Series Editor can also be launched directly from the Rain Gage Property Editor by selecting the editor's Series Name field and double clicking on it.

<sup>8</sup> Leaving off the dates for a time series means that SWMM will interpret the time values as hours from the start of the simulation. Otherwise, the time series follows the date/time values specified by the user.

**26**

> <img src="./media/image10.jpg" style="width:4.14653in;height:5.37361in" />

**Figure 2-7 Time series editor**

Having completed the initial design of our example project it is a good idea to give it a title and save our work to a file at this point. To do this:

1.  Select the *Title/Notes* category from the Project Browser and click the button.

2.  In the Project Title/Notes dialog that appears (see Figure 2-8), enter “Tutorial Example” as the title of our project and click the **OK** button to close the dialog.

3.  From the **File** menu select the **Save As** option.

4.  In the Save As dialog that appears, select a folder and file name under which to save this project. We suggest naming the file **tutorial.inp**. (An extension of .inp will be added to the file name if one is not supplied.)

5.  Click **Save** to save the project to file.

> <img src="./media/image11.jpg" style="width:4.49722in;height:2.40347in" />

**Figure 2-8 Title/Notes editor**

The project data are saved to the file in a readable text format. You can view what the file looks like by selecting **Project** \>\> **Details** from the main menu. To open our project at some later time, you would select the **Open** command from the **File** menu.

**2.5 Running a Simulation**

<u>Setting Simulation Options</u>

Before analyzing the performance of our example drainage system we need to set some options that determine how the analysis will be carried out. To do this:

1.  From the Project Browser, select the **Options** category and click the button.

2.  On the **General** page of the Simulation Options dialog that appears (see Figure 2-9), select **Kinematic Wave** as the flow routing method. The infiltration method should already be set to **Modified Green-Ampt**. The **Allow Ponding** option should be unchecked.

3.  On the **Dates** page of the dialog, set the **End Analysis** time to 12:00:00.

4.  On the **Time Steps** page, set the **Routing Time Step** to 60 seconds.

5.  Click **OK** to close the Simulation Options dialog.

**28**

> <img src="./media/image12.jpg" style="width:4.46667in;height:5.12361in" />

**Figure 2-9 Simulation options dialog**

<u>Starting a Simulation</u>

We are now ready to run the simulation. To do so, select **Project** \>\> **Run Simulation** (or click the

button). If there was a problem with the simulation, a Status Report will appear describing what errors occurred. Upon successfully completing a run, there are numerous ways in which to view the results of the simulation. We will illustrate just a few here.

<u>Viewing the Status Report</u>

The Status Report contains useful information about the quality of a simulation run, including a mass balance on rainfall, infiltration, evaporation, runoff, and inflow/outflow for the conveyance

system. To view the report select **Report** \>\> **Status** (or click the button on the Standard

Toolbar and then select **Status Report** from the drop down menu). A portion of the report for the system just analyzed is shown in Figure 2-10.

**29**

**Figure 2-10 Portion of a Status Report**

For the system we just analyzed the report indicates the quality of the simulation is quite good, with negligible mass balance continuity errors for both runoff and routing (-0.39% and 0.03%,

**30**

respectively, if all data were entered correctly). Also, of the 3 inches of rain that fell on the study area, 1.75 infiltrated into the ground and essentially the remainder became runoff.

<u>Viewing the Summary Report</u>

The Summary Report contains tables listing summary results for each subcatchment, node and link in the drainage system. Total rainfall, total runoff, and peak runoff for each subcatchment, peak depth and hours flooded for each node, and peak flow, velocity, and depth for each conduit are just some of the outcomes included in the summary report.

To view the Summary Report select **Report \| Summary** from the main menu (or click the button on the Standard Toolbar and then select **Summary Report** from the drop down menu). The report's window has a drop down list from which you select a particular report to view. For our example, the Node Flooding Summary table (Figure 2-11) indicates there was internal flooding in the system at node J2. Note. The Conduit Surcharge Summary table (Figure 2-12) shows that Conduit C2, just downstream of node J2, was at full capacity and therefore appears to be slightly undersized.

In SWMM flooding will occur whenever the water surface at a node exceeds the maximum assigned depth. Normally such water will be lost from the system. The option also exists to have this water pond atop the node and be re-introduced into the drainage system when capacity exists to do so.

> <img src="./media/image15.jpg" style="width:6.13958in;height:1.51667in" />

**Figure 2-11 Node flooding summary table**

> <img src="./media/image16.jpg" style="width:6.15972in;height:1.73333in" />

**Figure 2-12 Conduit surcharge summary table**

**31**

> <u>Viewing Results on the Map</u>
>
> Simulation results (as well as some design parameters, such as subcatchment area, node invert elevation, and link maximum depth) can be viewed in color-coded fashion on the study area map. To view a particular variable in this fashion:

1.  Select the **Map** page of the Browser panel.

2.  Select the variables to view for Subcatchments, Nodes, and Links from the dropdown combo boxes appearing in the Themes panel. In Figure 2-13, subcatchment runoff and link flow have been selected for viewing.

> <img src="./media/image17.jpg" style="width:6.40972in;height:6.01667in" />
>
> **Figure 2-13 Viewing color-coded results on the Study Area Map**

**32**

3.  The color-coding used for a particular variable is displayed with a legend on the study area map. To toggle the display of a legend, select **View** \>\> **Legends**.

4.  To move a legend to another location, drag it with the left mouse button held down.

5.  To change the color-coding and the breakpoint values for different colors, select **View** \>\> **Legends** \>\> **Modify** and then the pertinent class of object (or if the legend is already visible, simply right-click on it). To view numerical values for the variables being displayed on the map, select **Tools** \>\> **Map Display Options** and then select the Annotation page of the Map Options dialog. Use the check boxes for Subcatchment Values, Node Values, and Link Values to specify what kind of annotation to add.

6.  The Date / Time of Day / Elapsed Time controls on the Map Browser can be used to move through the simulation results in time. Figure 2-13 depicts results at 5 hours and 45 minutes into the simulation.

7.  You can use the controls in the Animator panel of the Map Browser (see Figure 2-13) to

> animate the map display through time. For example, pressing the button will run the
>
> animation forward in time.
>
> <u>Viewing a Time Series Plot</u>
>
> To generate a time series plot of a simulation result:

1.  Select **Report** \>\> **Graph** \>\> **Time Series** or simply click on the Standard Toolbar.

2.  A Time Series Plot Selection dialog will appear. It is used to select the objects and variables to be plotted.

> For our example, the Time Series Plot Selection dialog can be used to graph the flow in conduits *C1* and *C2* as follows (refer to Figure 2-14a):

1.  Click the **Add** button on the dialog to view the Data Series Selection dialog (Figure 2­14(b).

2.  Select conduit *C1* (either on the map or in the Project Browser) and select **Flow** as the variable to be plotted. Click the **Accept** button to return to the Time Series Plot Selection dialog.

3.  Repeat steps 1 and 2 for conduit *C2*.

4.  Press OK to create the plot which should look like the graph in Figure 2-15.

**33**

> \(a\) (b)
>
> **Figure 2-14 Time series plot dialogs**

**Figure 2-15 Time series plot of link flows**

**34**

> After a plot is created you can:

- customize its appearance by selecting **Report** \>\> **Customize** or by clicking the button on the Standard Toolbar or by simply right clicking on the plot,

- copy it to the clipboard and paste it into another application by selecting **Edit** \>\> **Copy To**

> or clicking on the Standard Toolbar

- print it by selecting **File** \>\> **Print** or **File** \>\> **Print Preview** (use **File** \>\> **Page Setup** first to set margins, orientation, etc.).

> Viewing a Profile Plot
>
> SWMM can generate profile plots showing how water surface depth varies across a path of connected nodes and links. Let's create such a plot for the conduits connecting junction *J1* to the outfall *Out1* of our example drainage system. To do this:

1.  Select **Report** \>\> **Graph** \>\> **Profile** on the main menu or simply click on the Standard  
    > Toolbar.

2.  Either enter *J1* in the **Start Node** field of the Profile Plot Selection dialog that appears

> (see Figure 2-16) or select it on the map or from the Project Browser and click the button next to the field.
>
> <img src="./media/image22.jpg" style="width:3.49028in;height:3.49028in" />
>
> **Figure 2-16 Profile plot dialog**

3.  Do the same for node *Out1* in the **End Node** field of the dialog.

**35**

4.  Click the **Find Path** button. An ordered list of the links forming a connected path between the specified Start and End nodes will be displayed in the **Links in Profile** box. You can edit the entries in this box if need be.

5.  Click the **OK** button to create the plot, showing the water surface profile as it exists at the simulation time currently selected in the Map Browser (see Figure 2-17 for hour 02:45).

> <img src="./media/image23.jpg" style="width:5.3in;height:3.85278in" />
>
> **Figure 2-17 Example profile plot**
>
> As you move through time using the Map Browser or with the Animator control, the water depth profile on the plot will be updated. Observe how node *J2* becomes flooded between hours 2 and 3 of the storm event. A Profile Plot’s appearance can be customized and it can be copied or printed using the same procedures as for a Time Series Plot.
>
> Running a Full Dynamic Wave Analysis
>
> In the analysis just run we chose to use the Kinematic Wave method of routing flows through our drainage system. This is an efficient but simplified approach that cannot deal with such phenomena as backwater effects, pressurized flow, flow reversal, and non-dendritic layouts. SWMM also includes a Dynamic Wave routing procedure that can represent these conditions. This procedure, however, requires more computation time, due to the need for smaller time steps to maintain numerical stability.

**36**

> Most of the effects mentioned above would not apply to our example. However we had one conduit, *C2*, which flowed full and caused its upstream junction to flood. It could be that this pipe is actually being pressurized and could therefore convey more flow than was computed using Kinematic Wave routing. We would now like to see what would happen if we apply Dynamic Wave routing instead.
>
> To run the analysis with Dynamic Wave routing:

1.  From the Project Browser, select the **Options** category and click the button.

2.  On the **General** page of the Simulation Options dialog that appears, select **Dynamic Wave** as the flow routing method.

3.  On the **Dynamic Wave** page of the dialog, use the settings shown in Figure 2-18 .

> 9
>
> <img src="./media/image24.jpg" style="width:4.46667in;height:5.12986in" />
>
> **Figure 2-18 Dynamic wave simulation options**
>
> 9 Normally when running a Dynamic Wave analysis, one would also want to reduce the routing time step (on the Time Steps page of the dialog). We will keep it at 60 seconds.

**37**

<table>
<colgroup>
<col style="width: 95%" />
<col style="width: 4%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>4.</strong> Click <strong>OK</strong> to close the form and select <strong>Project</strong> &gt;&gt; <strong>Run Simulation</strong> (or click the button) to re-run the analysis.</p>
</blockquote></td>
<td><img src="./media/image25.jpg" style="width:0.19028in;height:0.18611in" /></td>
</tr>
</tbody>
</table>

> If you look at the Summary Report for this run, you will see that there is no longer any junction flooding and that the peak flow carried by conduit *C2* has been increased from 3.52 cfs to 4.04 cfs.
>
> **2.6 Simulating Water Quality**
>
> In the next phase of this tutorial we will add water quality analysis to our example project. SWMM has the ability to analyze the buildup, washoff, transport and treatment of any number of water quality constituents. The steps needed to accomplish this are:

1.  Identify the pollutants to be analyzed.

2.  Define the categories of land uses that generate these pollutants.

3.  Set the parameters of buildup and washoff functions that determine the quality of runoff from each land use.

4.  Assign a mixture of land uses to each subcatchment area

5.  Define pollutant removal functions for nodes within the drainage system that contain treatment facilities.

> We will now apply each of these steps, with the exception of number 5, to our example project<sup>10</sup>.
>
> We will define two runoff pollutants; total suspended solids (TSS), measured as mg/L, and total Lead, measured in ug/L. In addition, we will specify that the concentration of Lead in runoff is a fixed fraction (0.25) of the TSS concentration. To add these pollutants to our project:

1.  Under the **Quality** category in the project Browser, select the **Pollutants** sub-category beneath it.

2.  Click the button to add a new pollutant to the project.

3.  In the Pollutant Editor dialog that appears (see Figure 2-19), enter **TSS** for the pollutant name and leave the other data fields at their default settings.

4.  Click the **OK** button to close the Editor.

5.  Click the button on the Project Browser again to add our next pollutant.

6.  In the Pollutant Editor, enter **Lead** for the pollutant name, select **UG/L** for the concentration units, enter **TSS** as the name of the Co-Pollutant, and enter **0.25** as the Co-Fraction value.

> <sup>10</sup> Aside from surface runoff, SWMM also allows pollutants to be introduced into the nodes of a drainage system through user-defined time series of direct inflows, dry weather inflows, groundwater interflow, and rainfall dependent inflow/infiltration
>
> **38**

**7.** Click the **OK** button to close the Editor.

> In SWMM, pollutants associated with runoff are generated by specific land uses assigned to subcatchments. In our example, we will define two categories of land uses: Residential and Undeveloped. To add these land uses to the project:

1.  Under the **Quality** category in the Project Browser, select the **Land Uses** sub-category

> and click the button.

2.  In the Land Use Editor dialog that appears (see Figure 2-20), enter **Residential** in the Name field and then click the **OK** button.

3.  Repeat steps 1 and 2 to create the **Undeveloped** land use category.

> **Figure 2-19 Pollutant editor dialog Figure 2-20 Land use editor dialog**
>
> Next we need to define buildup and washoff functions for TSS in each of our land use categories. Functions for Lead are not needed since its runoff concentration was defined to be a fixed fraction of the TSS concentration. Normally, defining these functions requires site-specific calibration.
>
> In this example we will assume that suspended solids in Residential areas builds up at a constant rate of 1 pound per acre per day until a limit of 50 lbs per acre is reached. For the Undeveloped
>
> **39**
>
> area we will assume that buildup is only half as much. For the washoff function, we will assume a constant event mean concentration of 100 mg/L for Residential land and 50 mg/L for Undeveloped land. When runoff occurs, these concentrations will be maintained until the available buildup is exhausted. To define these functions for the Residential land use:

1.  Select the **Residential** land use category from the Project Browser and click the button.

2.  In the Land Use Editor dialog, move to the **Buildup** page (see Figure 2-21).

3.  Select **TSS** as the pollutant and **POW** (for Power function) as the function type.

4.  Assign the function a maximum buildup of **50**, a rate constant of **1.0**, a power of **1** and select **AREA** as the normalizer.

5.  Move to the **Washoff** page of the dialog and select **TSS** as the pollutant, **EMC** as the function type, and enter **100** for the coefficient. Fill the other fields with 0.

6.  Click the **OK** button to accept your entries.

> Now do the same for the Undeveloped land use category, except use a maximum buildup of **25**, a buildup rate constant of **0.5**, a buildup power of **1**, and a washoff EMC of **50**.
>
> <img src="./media/image28.jpg" style="width:3.15694in;height:3.87292in" />
>
> **Figure 2-21 Defining a TSS buildup function**
>
> The final step in our water quality example is to assign a mixture of land uses to each subcatchment area:

**40**

1.  Select subcatchment *S1* into the Property Editor.

2.  Select the **Land Uses** property and click the ellipsis button (or press **Enter**).

3.  In the Land Use Assignment dialog that appears, enter **75** for the % Residential and **25  
    > **for the % Undeveloped (see Figure 2-22). Then click the **OK** button to close the dialog.

> <img src="./media/image29.jpg" style="width:2.89375in;height:2.90625in" />
>
> **Figure 2-22 Land use assignment dialog**

4.  Repeat the same three steps for subcatchment *S2*.

5.  Repeat the same for subcatchment *S3*, except assign the land uses as **25%** Residential and **75%** Undeveloped.

> Before we simulate the runoff quantities of TSS and Lead from our study area, an initial buildup of TSS should be defined so it can be washed off during our single rainfall event. We can either specify the number of antecedent dry days prior to the simulation or directly specify the initial buildup mass on each subcatchment. We will use the former method:

1.  From the **Options** category of the Project Browser, select the **Dates** sub-category and

> click the button.

2.  In the Simulation Options dialog that appears, enter 5 into the **Antecedent Dry Days** field.

3.  Leave the other simulation options the same as they were for the dynamic wave flow routing we just completed.

4.  Click the **OK** button to close the dialog.

> Now run the simulation by selecting **Project** \>\> **Run Simulation** or by clicking on the
>
> Standard Toolbar.
>
> When the run is completed, view its Status Report. Note that two new sections have been added for **Runoff Quality Continuity** and **Quality Routing Continuity**. From the Runoff Quality

**41**

> Continuity table we see that there was an initial buildup of 47.5 lbs of TSS on the study area and an additional 2.2 lbs of buildup added during the dry periods of the simulation. About 47.9 lbs were washed off during the rainfall event. The quantity of Lead washed off is a fixed percentage (25% times 0.001 to convert from mg to ug) of the TSS as was specified.
>
> If you plot the runoff concentration of TSS for subcatchment *S1* and *S3* together on the same time series graph, as in Figure 2-23, you will see the difference in concentrations resulting from the different mix of land uses in these two areas. You can also see that the duration over which pollutants are washed off is much shorter than the duration of the entire runoff hydrograph (i.e., 1 hour versus about 6 hours). This results from having exhausted the available buildup of TSS over this period of time.
>
> <img src="./media/image30.jpg" style="width:5.09375in;height:3.76042in" />
>
> **Figure 2-23 Runoff TSS from selected subcatchments**
>
> **2.7 Running a Continuous Simulation**
>
> As a final exercise in this tutorial we will demonstrate how to run a long-term continuous simulation using a historical rainfall record and how to perform a statistical frequency analysis on the results. The rainfall record will come from a file named **sta310301.dat** that was included with the example data sets provided with EPA SWMM. It contains several years of hourly rainfall beginning in January 1998. The data are stored in the National Climatic Data Center's DSI 3240 format, which SWMM can automatically recognize.
>
> **42**
>
> To run a continuous simulation with this rainfall record:

1.  Select the rain gage *Gage1* into the Property Editor.

2.  Change the selection of Data Source to FILE.

3.  Select the File Name data field and click the ellipsis button (or press the **Enter** key) to bring up a standard Windows File Selection dialog.

4.  Navigate to the folder where the SWMM example files were stored, select the file named sta310301.dat, and click **Open** to select the file and close the dialog.

5.  In the Station No. field of the Property Editor enter **310301**.

6.  Select the **Options** category in the Project Browser and click the button to bring up  
    > the Simulation Options form.

7.  On the **General** page of the form, select Kinematic Wave as the Routing Method (this will help speed up the computations).

8.  On the **Dates** page of the form, set both the Start Analysis and Start Reporting dates to **01/01/1998**, and set the End Analysis date to **01/01/2000**.

> **9.** On the **Time Steps** page of the form, set the Routing Time Step to **300** seconds.

10. Close the Simulation Options form by clicking the **OK** button and start the simulation by

> selecting **Project** \>\> **Run Simulation** (or by clicking on the Standard Toolbar).
>
> After our continuous simulation is completed we can perform a statistical frequency analysis on any of the variables produced as output. For example, to determine the distribution of rainfall volumes within each storm event over the two-year period simulated:

1.  Select **Report** \>\> **Statistics** or click the button on the Standard Toolbar.

2.  In the Statistics Selection dialog that appears, enter the values shown in Figure 2-24.

3.  Click the **OK** button to close the form.

> **43**
>
> <img src="./media/image31.jpg" style="width:3.20625in;height:4.11319in" />

**Figure 2-24 Statistics selection dialog**

> The results of this request will be a Statistics Report form (see Figure 2-25) containing four tabbed pages: a Summary page, an Events page containing a rank-ordered listing of each event, a Histogram page containing a plot of the occurrence frequency versus event magnitude, and a Frequency Plot page that plots event magnitude versus cumulative frequency.
>
> The summary page shows that there were a total of 213 rainfall events. The Events page shows that the largest rainfall event had a volume of 3.35 inches and occurred over a 24- hour period. There were no events that matched the 3-inch, 6-hour design storm event used in our previous single-event analysis that had produced some internal flooding. In fact, the Summary Report for this continuous simulation indicates that there were no flooding or surcharge occurrences over the simulation period.

**44**

> <img src="./media/image32.jpg" style="width:4.92708in;height:4.42639in" />

**Figure 2-25 Example statistics report**

> We have only touched the surface of SWMM's capabilities. Some additional features of the program that you will find useful include:

- utilizing additional types of drainage elements, such as storage units, flow dividers, pumps, and regulators, to model more complex types of systems

- using control rules to simulate real-time operation of pumps and regulators

- employing different types of externally-imposed inflows at drainage system nodes, such as direct time series inflows, dry weather inflows, and rainfall-derived infiltration/inflow

- modeling groundwater interflow between aquifers beneath subcatchment areas and drainage system nodes

- modeling snow fall accumulation and melting within subcatchments

- adding calibration data to a project so that simulated results can be compared with measured values

- utilizing a background street, site plan, or topo map to assist in laying out a system's drainage elements and to help relate simulated results to real-world locations.

> You can find more information on these and other features in the remaining chapters of this manual.

**45**

> **CHAPTER 3 – SWMM’S CONCEPTUAL MODEL**
>
> *This chapter discusses how SWMM models the objects and operational parameters that constitute a stormwater drainage system. Details about how this information is entered into the program are presented in later chapters. An overview is also given on the computational methods that SWMM uses to simulate the hydrology, hydraulics and water quality behavior of a drainage system.*
>
> **3.1 Introduction**
>
> SWMM conceptualizes a drainage system as a series of water and material flows between several major environmental compartments. These compartments and the SWMM objects they contain include:

- The Atmosphere compartment, which generates precipitation and deposits pollutants onto the land surface compartment. SWMM uses Rain Gage objects to represent rainfall inputs to the system.

- The Land Surface compartment, which is represented through one or more Subcatchment objects. It receives precipitation from the Atmospheric compartment in the form of rain or snow; it sends outflow in the form of infiltration to the Groundwater compartment and also as surface runoff and pollutant loadings to the Transport compartment.

- The Groundwater compartment receives infiltration from the Land Surface compartment and transfers a portion of this inflow to the Transport compartment. This compartment is modeled using Aquifer objects.

- The Transport compartment contains a network of conveyance elements (channels, pipes, pumps, and regulators) and storage/treatment units that transport water to outfalls or to treatment facilities. Inflows to this compartment can come from surface runoff, groundwater interflow, sanitary dry weather flow, or from user-defined hydrographs. The components of the Transport compartment are modeled with Node and Link objects

> Not all compartments need appear in a particular SWMM model. For example, one could model just the transport compartment, using pre-defined hydrographs as inputs.
>
> **3.2 Visual Objects**
>
> Figure 3-1 depicts how a collection of SWMM’s visual objects might be arranged together to represent a stormwater drainage system. These objects can be displayed on a map in the SWMM workspace. The following sections describe each of these objects.
>
> **46**
>
> <img src="./media/image33.png" style="width:3.52014in;height:2.67639in" />
>
> **Figure 3-1 Physical objects used to model a drainage system**
>
> 3.2.1 Rain Gages
>
> Rain Gages supply precipitation data for one or more subcatchment areas in a study region. The rainfall data can be either a user-defined time series or come from an external file. Several different popular rainfall file formats currently in use are supported, as well as a standard user-defined format. More details on these formats are presented in Section 11.3.
>
> The principal input properties of rain gages include:

- rainfall data type (e.g., intensity, volume, or cumulative volume)

- recording time interval (e.g., hourly, 15-minute, etc.)

- source of rainfall data (input time series or external file)

- name of rainfall data source

> 3.2.2 Subcatchments
>
> Subcatchments are hydrologic units of land whose topography and drainage system elements direct surface runoff to a single discharge point. The user is responsible for dividing a study area into an appropriate number of subcatchments, and for identifying the outlet point of each subcatchment. Discharge outlet points can be either nodes of the drainage system or other subcatchments.
>
> Subcatchments are divided into pervious and impervious subareas. Surface runoff can infiltrate into the upper soil zone of the pervious subarea, but not through the impervious subarea. Impervious areas are themselves divided into two subareas - one that contains depression storage and another that does not. Runoff flow from one subarea in a subcatchment can be routed to the other subarea, or both subareas can drain to the subcatchment outlet.
>
> **47**
>
> Infiltration of rainfall from the pervious area of a subcatchment into the unsaturated upper soil zone can be described using four different models:

- Horton infiltration

- Modified Horton infiltration

- Green-Ampt infiltration

- Modified Green-Ampt infiltration

- Curve Number infiltration

> To model the accumulation, re-distribution, and melting of precipitation that falls as snow on a subcatchment, it must be assigned a Snow Pack object. To model groundwater flow between an aquifer underneath the subcatchment and a node of the drainage system, the subcatchment must be assigned a set of Groundwater parameters. Pollutant buildup and washoff from subcatchments are associated with the Land Uses assigned to the subcatchment. Capture and retention of rainfall/runoff using different types of low impact development practices (such as bio-retention cells, infiltration trenches, porous pavement, vegetative swales, and rain barrels) can be modeled by assigning a set of pre-designed LID controls to the subcatchment.
>
> The other principal input parameters for subcatchments include:

- assigned rain gage

- outlet node or subcatchment

- assigned land uses

- tributary surface area

- imperviousness

- slope

- characteristic width of overland flow

- Manning's n for overland flow on both pervious and impervious areas

- depression storage in both pervious and impervious areas

- percent of impervious area with no depression storage.

> 3.2.3 Junction Nodes
>
> Junctions are drainage system nodes where links join together. Physically they can represent the confluence of natural surface channels, manholes in a sewer system, or pipe connection fittings. External inflows can enter the system at junctions. Excess water at a junction can become partially pressurized while connecting conduits are surcharged and can either be lost from the system or be allowed to pond atop the junction and subsequently drain back into the junction.
>
> The principal input parameters for a junction are:

- invert (channel or manhole bottom) elevation

> **48**

- height to ground surface

- ponded surface area when flooded (optional)

- external inflow data (optional).

> 3.2.4 Outfall Nodes
>
> Outfalls are terminal nodes of the drainage system used to define final downstream boundaries under Dynamic Wave flow routing. For other types of flow routing they behave as a junction. Only a single link can be connected to an outfall node, and the option exists to have the outfall discharge onto a subcatchment's surface.
>
> The boundary conditions at an outfall can be described by any one of the following stage relationships:

- the critical or normal flow depth in the connecting conduit

- a fixed stage elevation

- a tidal stage described in a table of tide height versus hour of the day

- a user-defined time series of stage versus time.

> The principal input parameters for outfalls include:

- invert elevation

- boundary condition type and stage description

- presence of a flap gate to prevent backflow through the outfall.

> 3.2.5 Flow Divider Nodes
>
> Flow Dividers are drainage system nodes that divert inflows to a specific conduit in a prescribed manner. A flow divider can have no more than two conduit links on its discharge side. Flow dividers are only active under Steady Flow and Kinematic Wave routing and are treated as simple junctions under Dynamic Wave routing.
>
> There are four types of flow dividers, defined by the manner in which inflows are diverted:
>
> *Cutoff Divider*: diverts all inflow above a defined cutoff value.
>
> *Overflow Divider*: diverts all inflow above the flow capacity of the non-diverted conduit.
>
> *Tabular Divider:* uses a table that expresses diverted flow as a function of total inflow.
>
> *Weir Divider*: uses a weir equation to compute diverted flow.
>
> The flow diverted through a weir divider is computed by the following equation *Qdiv* = *C <sub>w</sub>*( *fH<sub>w</sub>*) 1.5
>
> **49**
>
> where *Qdiv* = diverted flow, *Cw* = weir coefficient, *Hw* = weir height and *f* is computed as
>
> *Q* − *Q*
>
> *f<u>in</u>  
> *= <u>min</u>  
> *Q Q  
> *max − min
>
> where *Qin* is the inflow to the divider, *Qmin* is the flow at which diversion begins, and
>
> *Q*max = *C<sub>w</sub>H<sub>w</sub>*<sup>1.5</sup> . The user-specified parameters for the weir divider are *Qmin, Hw*, and *Cw*.
>
> The principal input parameters for a flow divider are:

- junction parameters (see above)

- name of the link receiving the diverted flow

- method used for computing the amount of diverted flow.

> 3.2.6 Storage Units
>
> Storage Units are drainage system nodes that provide storage volume. Physically they could represent storage facilities as small as a catch basin or as large as a lake. The volumetric properties of a storage unit are described by a function or table of surface area versus height. In addition to receiving inflows and discharging outflows to other nodes in the drainage network, storage nodes can also lose water from surface evaporation and from seepage into native soil. The principal input parameters for storage units include:

- invert (bottom) elevation

- maximum depth

- depth-surface area data

- evaporation potential

- seepage parameters (optional)

- external inflow data (optional).

> 3.2.7 Conduits
>
> Conduits are pipes or channels that move water from one node to another in the conveyance system. Their cross-sectional shapes can be selected from a variety of standard open and closed geometries as listed in Table 3-1.
>
> Most open channels can be represented with a rectangular, trapezoidal, or user-defined irregular cross-section shape. For the latter, a Transect object is used to define how depth varies with distance across the cross-section (see Section 3.3.5 below). Most new drainage and sewer pipes are circular while culverts typically have elliptical or arch shapes. Elliptical and Arch pipes come in standard sizes that are listed in Appendix A.12 and A.13. The Filled Circular shape allows the bottom of a circular pipe to be filled with sediment and thus limit its flow capacity. The Custom
>
> **50**
>
> Closed Shape allows any closed geometrical shape that is symmetrical about the center line to be defined by supplying a Shape Curve for the cross section (see Section3.3.11 below).
>
> SWMM uses the Manning equation to express the relationship between flow rate (*Q*), cross-sectional area (*A*), hydraulic radius (*R*), and slope (*S*) in all conduits. For standard U.S. units,

|       |        |              |
|-------|--------|--------------|
| *Q* = | *1.49* | *AR2/3 S1/2* |
|       | *n*    |              |

> where *n* is the Manning roughness coefficient. The slope *S* is interpreted as either the conduit slope or the friction slope (i.e., head loss per unit length), depending on the flow routing method used.
>
> For pipes with Circular Force Main cross-sections either the Hazen-Williams or Darcy-Weisbach formula is used in place of the Manning equation for fully pressurized flow. For U.S. units the Hazen-Williams formula is:
>
> *Q* = *1.318CAR*0*.*63 *<sub>S</sub>*0*.* 54
>
> where *C* is the Hazen-Williams C-factor which varies inversely with surface roughness and is supplied as one of the cross-section’s parameters. The Darcy-Weisbach formula is:
>
> where *g* is the acceleration of gravity and *f* is the Darcy-Weisbach friction factor. For turbulent flow, the latter is determined from the height of the roughness elements on the walls of the pipe (supplied as an input parameter) and the flow’s Reynolds Number using the Colebrook-White equation. The choice of which equation to use is a user-supplied option.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image35.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>A conduit does not have to be assigned a Force Main shape for it to pressurize. Any of the closed cross-section shapes can potentially pressurize and thus function as force mains that use the Manning equation to compute friction losses.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> A constant rate of exfiltration of water along the length of the conduit can be modeled by supplying a Seepage Rate value (in/hr or mm/hr). This only accounts for seepage losses, not infiltration of rainfall dependent groundwater. The latter can be modeled using SWMM’s RDII feature (see Section 3.3.6).
>
> **51**

**Table 3-1 Available cross section shapes for conduits**

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 16%" />
<col style="width: 2%" />
<col style="width: 13%" />
<col style="width: 18%" />
<col style="width: 16%" />
<col style="width: 14%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Name</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Parameters</strong></p>
</blockquote></td>
<td colspan="2"><strong>Shape</strong></td>
<td><blockquote>
<p><strong>Name</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Parameters</strong></p>
</blockquote></td>
<td><strong>Shape</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Circular</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td colspan="2" rowspan="3"></td>
<td><blockquote>
<p>Circular Force Main</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Roughness</p>
</blockquote></td>
<td><blockquote>
<p><img src="./media/image36.jpg" style="width:0.53333in;height:0.50972in" /></p>
</blockquote></td>
</tr>
<tr class="odd">
<td rowspan="2"><blockquote>
<p>Filled Circular</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height, Filled Depth</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Rectangular - Closed</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height, Width</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><img src="./media/image37.jpg" style="width:0.66667in;height:0.43333in" /></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rectangular – Open</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Width</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Trapezoidal</p>
</blockquote></td>
<td>Full Height,<br />
Base Width,<br />
Side Slopes</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Triangular</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Top Width</p>
</blockquote></td>
<td colspan="2" rowspan="2"></td>
<td><blockquote>
<p>Horizontal Ellipse</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Max. Width</p>
</blockquote></td>
<td rowspan="2"></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vertical<br />
Ellipse</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Max. Width</p>
</blockquote></td>
<td><blockquote>
<p>Arch</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Max. Width</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Parabolic</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Top Width</p>
</blockquote></td>
<td colspan="2"></td>
<td><blockquote>
<p>Power</p>
</blockquote></td>
<td><blockquote>
<p>Full Height, Top Width, Exponent</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="2"><blockquote>
<p>Rectangular- Triangular</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height, Top Width, Triangle Height</p>
</blockquote></td>
<td rowspan="2"></td>
<td></td>
<td rowspan="2"><blockquote>
<p>Rectangular- Round</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height, Top Width, Bottom</p>
<p>Radius</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p><img src="./media/image38.jpg" style="width:0.64028in;height:0.42639in" /></p>
</blockquote></td>
</tr>
<tr class="odd">
<td rowspan="2"><blockquote>
<p>Modified Baskethandle</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height, Bottom Width,</p>
<p>Top Radius</p>
</blockquote></td>
<td rowspan="2"></td>
<td></td>
<td rowspan="2"><blockquote>
<p>Egg</p>
</blockquote></td>
<td rowspan="2"><blockquote>
<p>Full Height</p>
</blockquote></td>
<td rowspan="2"></td>
</tr>
<tr class="even">
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Horseshoe</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td colspan="2" rowspan="2"></td>
<td><blockquote>
<p>Gothic</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td rowspan="2"></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Catenary</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Semi-Elliptical</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Baskethandle</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td colspan="2"></td>
<td><blockquote>
<p>Semi-Circular</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td>Irregular<br />
Natural<br />
Channel</td>
<td><blockquote>
<p>Transect</p>
<p>Coordinates</p>
</blockquote></td>
<td colspan="2"><blockquote>
<p><img src="./media/image39.jpg" style="width:0.69306in;height:0.50694in" /></p>
</blockquote></td>
<td><blockquote>
<p>Custom</p>
<p>Closed Shape</p>
</blockquote></td>
<td><blockquote>
<p>Full Height,</p>
<p>Shape</p>
<p>Curve</p>
<p>Coordinates</p>
</blockquote></td>
<td><blockquote>
<p><img src="./media/image40.jpg" style="width:0.47986in;height:0.53333in" /></p>
</blockquote></td>
</tr>
</tbody>
</table>

**52**

> A conduit can also be designated to act as a culvert (see Figure 3-2) if a Culvert Inlet Geometry code number is assigned to it. These code numbers are listed in Appendix A.10. Culvert conduits are checked continuously during dynamic wave flow routing to see if they operate under Inlet Control as defined in the Federal Highway Administration’s publication *Hydraulic Design of Highway Culverts Third Edition* (Publication No. FHWA-HIF-12-026, April 2012). Under inlet control a culvert obeys a particular flow versus inlet depth rating curve whose shape depends on the culvert’s shape, size, slope, and inlet geometry.
>
> <img src="./media/image41.jpg" style="width:4.02639in;height:3.03681in" />
>
> **Figure 3-2 Concrete Box Culvert**
>
> The principal input parameters for conduits are:

- names of the inlet and outlet nodes

- offset height or elevation above the inlet and outlet node inverts

- conduit length

- Manning's roughness

- cross-sectional geometry

- entrance/exit losses (optional)

- seepage rate (optional)

- presence of a flap gate to prevent reverse flow (optional)

- inlet geometry code number if the conduit acts as a culvert (optional).

**53**

> 3.2.8 Pumps
>
> Pumps are links used to lift water to higher elevations. A pump curve describes the relation between a pump's flow rate and conditions at its inlet and outlet nodes. Five different types of pump curves are supported:
>
> <u>Type1</u>
>
> An off-line pump with a wet well where flow increases incrementally with available wet well volume
>
> <u>Type2</u>
>
> An in-line pump where flow increases incrementally with inlet node depth.
>
> <u>Type3</u>
>
> An in-line pump where flow varies continuously with head difference between the inlet and outlet nodes.
>
> <u>Type4</u>
>
> A variable speed in-line pump where flow varies continuously with inlet node depth.
>
> <img src="./media/image43.png" style="width:0.25in" />
>
> <u>Ideal</u>
>
> An "ideal" transfer pump whose flow rate equals the inflow rate at its inlet node. No curve is required. The pump must be the only outflow link from its inlet node. Used mainly for preliminary design.
>
> The on/off status of pumps can be controlled dynamically by specifying startup and shutoff water depths at the inlet node or through user-defined Control Rules. Rules can also be used to simulate variable speed drives that modulate pump flow.
>
> **54**
>
> The principal input parameters for a pump include:

- names of its inlet and outlet nodes

- name of its pump curve (or \* for an Ideal pump)

- initial on/off status

- startup and shutoff depths.

> 3.2.9 Flow Regulators
>
> Flow Regulators are structures or devices used to control and divert flows within a conveyance system. They are typically used to:

- control releases from storage facilities

- prevent unacceptable surcharging

- divert flow to treatment facilities and interceptors

> SWMM can model the following types of flow regulators: Orifices, Weirs, and Outlets. <u>Orifices</u>
>
> Orifices are used to model outlet and diversion structures in drainage systems, which are typically openings in the wall of a manhole, storage facility, or control gate. They are internally represented in SWMM as a link connecting two nodes. An orifice can have either a circular or rectangular shape, be located either at the bottom or along the side of the upstream node, and have a flap gate to prevent backflow.
>
> Orifices can be used as storage unit outlets under all types of flow routing. If not attached to a storage unit node, they can only be used in drainage networks that are analyzed with Dynamic Wave flow routing.
>
> The flow through a fully submerged orifice is computed as
>
> *Q*=*CA* 2*gh*
>
> where *Q* = flow rate, *C* = discharge coefficient, *A* = area of orifice opening, *g* = acceleration of gravity, and *h* = head difference across the orifice. The height of an orifice's opening can be controlled dynamically through user-defined Control Rules. This feature can be used to model gate openings and closings. Flow through a partially full orifice is computed using an equivalent weir equation.
>
> The principal input parameters for an orifice include:

- names of its inlet and outlet nodes

- configuration (bottom or side)

- shape (circular or rectangular)

- height or elevation above the inlet node invert

**55**

- discharge coefficient

- time to open or close.

> <u>Weirs</u>
>
> Weirs, like orifices, are used to model outlet and diversion structures in a drainage system. Weirs are typically located in a manhole, along the side of a channel, or within a storage unit. They are internally represented in SWMM as a link connecting two nodes, where the weir itself is placed at the upstream node. A flap gate can be included to prevent backflow.
>
> Five varieties of weirs are available, each incorporating a different formula for computing flow across the weir as listed in Table 3-2.
>
> **Table 3-2 Available types of weirs**

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 33%" />
<col style="width: 38%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Weir Type</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Cross Section<br />
Shape</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Flow Formula</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Transverse</p>
</blockquote></td>
<td><blockquote>
<p>Rectangular</p>
</blockquote></td>
<td><blockquote>
<p><em>C<sub>w</sub>Lh</em><sup>3/2</sup></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Side flow</p>
</blockquote></td>
<td><blockquote>
<p>Rectangular</p>
</blockquote></td>
<td><blockquote>
<p><em>C<sub>w</sub>Lh</em><sup>5/3</sup></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>V-notch</p>
</blockquote></td>
<td><blockquote>
<p>Triangular</p>
</blockquote></td>
<td><blockquote>
<p><em>C<sub>w</sub>Sh</em><sup>5/2</sup></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Trapezoidal</p>
</blockquote></td>
<td><blockquote>
<p>Trapezoidal</p>
</blockquote></td>
<td><blockquote>
<p><em>C <sub>w</sub> Lh</em><sup>2/3</sup> + <em>CwsSh</em>5/2</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Roadway</p>
</blockquote></td>
<td><blockquote>
<p>Rectangular</p>
</blockquote></td>
<td><blockquote>
<p><em>C <sub>w</sub> Lh</em> 3 /2</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="3"><blockquote>
<p><em>Cw</em> = weir discharge coefficient, <em>L</em> = weir length, <em>S</em> = side slope of V-notch or trapezoidal weir, <em>h</em> = head difference across the weir, <em>Cws</em> = discharge coefficient through sides of trapezoidal weir.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The Roadway weir is a broad crested rectangular weir used model roadway crossings usually in conjunction with culvert-type conduits (see Figure 3-2). It uses curves from the Federal Highway Administration publication *Hydraulic Design of Highway Culverts Third Edition* (Publication No. FHWA-HIF-12-026, April 2012) to determine *CW* as a function of *h* and roadway width.
>
> Weirs can be used as storage unit outlets under all types of flow routing. If not attached to a storage unit, they can only be used in drainage networks that are analyzed with Dynamic Wave flow routing.
>
> The height of the weir crest above the inlet node invert can be controlled dynamically through user-defined Control Rules. This feature can be used to model inflatable dams.
>
> Weirs can either be allowed to surcharge or not. A surcharged weir will use an equivalent orifice equation to compute the flow through it. Weirs placed in open channels would normally not be allowed to surcharge while those placed in closed diversion structures or those used to represent storm drain inlet openings would be allowed to.

**56**

> The principal input parameters for a weir include:

- names of its inlet and outlet nodes

- shape and geometry

- crest height or elevation above the inlet node invert

- discharge coefficient.

> <u>Outlets</u>
>
> Outlets are flow control devices that are typically used to control outflows from storage units. They are used to model special head-discharge relationships that cannot be characterized by pumps, orifices, or weirs. Outlets are internally represented in SWMM as a link connecting two nodes. An outlet can also have a flap gate that restricts flow to only one direction.
>
> Outlets attached to storage units are active under all types of flow routing. If not attached to a storage unit, they can only be used in drainage networks analyzed with Dynamic Wave flow routing.
>
> A user-defined rating curve determines an outlet's discharge flow as a function of either the freeboard depth above the outlet's opening or the head difference across it. Control Rules can be used to dynamically adjust this flow when certain conditions exist.
>
> The principal input parameters for an outlet include:

- names of its inlet and outlet nodes

- height or elevation above the inlet node invert

- function or table containing its head (or depth) - discharge relationship.

> 3.2.10 Map Labels
>
> Map Labels are optional text labels added to SWMM's Study Area Map to help identify particular objects or regions of the map. The labels can be drawn in any Windows font, freely edited and be dragged to any position on the map.
>
> **3.3 Non-Visual Objects**
>
> In addition to physical objects that can be displayed visually on a map, SWMM utilizes several classes of non-visual data objects to describe additional characteristics and processes within a study area.

**57**

> 3.3.1 Climatology  
> <u>Temperature</u>
>
> Air temperature data are used when simulating snowfall and snowmelt processes during runoff calculations. They can also be used to compute daily evaporation rates. If these processes are not being simulated then temperature data are not required. Air temperature data can be supplied to SWMM from one of the following sources:

- a user-defined time series of point values (values at intermediate times are interpolated)

- an external climate file containing daily minimum and maximum values (SWMM fits a sinusoidal curve through these values depending on the day of the year).

> For user-defined time series, temperatures are in degrees F for US units and degrees C for metric units. The external climate file can also be used to directly supply evaporation and wind speed as well.
>
> <u>Evaporation</u>
>
> Evaporation can occur for standing water on subcatchment surfaces, for subsurface water in groundwater aquifers, for water traveling through open channels, and for water held in storage units. Evaporation rates can be stated as:

- a single constant value

- a set of monthly average values

- a user-defined time series of values

- values computed from the daily temperatures contained in an external climate file

- daily values read directly from an external climate file.

> If rates are read directly from a climate file, then a set of monthly pan coefficients should also be supplied to convert the pan evaporation data to free water-surface values. An option is also available to allow evaporation only during periods with no precipitation.
>
> Note that the evaporation rates supplied to SWMM are potential rates. The actual amount of water evaporated will depend on the amount of water available.
>
> <u>Wind Speed</u>
>
> Wind speed is an optional climatic variable that is only used for snowmelt calculations. SWMM can use either a set of monthly average speeds or wind speed data contained in the same climate file used for daily minimum/maximum temperatures.
>
> <u>Snowmelt</u>
>
> Snowmelt parameters are climatic variables that apply across the entire study area when simulating snowfall and snowmelt. They include:

**58**

- the air temperature at which precipitation falls as snow

- heat exchange properties of the snow surface

- study area elevation, latitude, and longitude correction

> <u>Areal Depletion</u>
>
> Areal depletion refers to the tendency of accumulated snow to melt non-uniformly over the surface of a subcatchment. As the melting process proceeds, the area covered by snow gets reduced. This behavior is described by an Areal Depletion Curve that plots the fraction of total area that remains snow covered against the ratio of the actual snow depth to the depth at which there is 100% snow cover. A typical ADC for a natural area is shown in Figure 3-3. Two such curves can be supplied to SWMM, one for impervious areas and another for pervious areas.
>
> <img src="./media/image45.png" style="width:3.48681in;height:2.52014in" />
>
> **Figure 3-3 Areal depletion curve for a natural area**
>
> <u>Climate Adjustments</u>
>
> Climate Adjustments are optional modifications applied to the temperature, evaporation rate, and rainfall intensity that SWMM would otherwise use at each time step of a simulation. Separate sets of adjustments that vary periodically by month of the year can be assigned to these variables. They provide a simple way to examine the effects of future climate change without having to modify the original climatic time series.
>
> In a similar manner, a set of monthly adjustments can be applied to the hydraulic conductivity used in computing rainfall infiltration on pervious land surfaces and exfiltration from storage nodes and conduits. These can reflect the increase of hydraulic conductivity with increasing temperature or the effect that seasonal changes in land surface conditions, such as frozen ground, can have on infiltration capacity.

**59**

> 3.3.2 Snow Packs
>
> Snow Pack objects contain parameters that characterize the buildup, removal, and melting of snow over three types of sub-areas within a subcatchment:

- The Plowable snow pack area consists of a user-defined fraction of the total impervious area. It is meant to represent such areas as streets and parking lots where plowing and snow removal can be done.

- The Impervious snow pack area covers the remaining impervious area of a subcatchment.

- The Pervious snow pack area encompasses the entire pervious area of a subcatchment. Each of these three areas is characterized by the following parameters:

- Minimum and maximum snow melt coefficients

- minimum air temperature for snow melt to occur

- snow depth above which 100% areal coverage occurs

- initial snow depth

- initial and maximum free water content in the pack.

> In addition, a set of snow removal parameters can be assigned to the Plowable area. These parameters consist of the depth at which snow removal begins and the fractions of snow moved onto various other areas.
>
> Subcatchments are assigned a snow pack object through their Snow Pack property. A single snow pack object can be applied to any number of subcatchments. Assigning a snow pack to a subcatchment simply establishes the melt parameters and initial snow conditions for that subcatchment. Internally, SWMM creates a "physical" snow pack for each subcatchment, which tracks snow accumulation and melting for that particular subcatchment based on its snow pack parameters, its amount of pervious and impervious area, and the precipitation history it sees.
>
> 3.3.3 Aquifers
>
> Aquifers are sub-surface groundwater zones used to model the vertical movement of water infiltrating from the subcatchments that lie above them. They also permit the infiltration of groundwater into the drainage system, or exfiltration of surface water from the drainage system, depending on the hydraulic gradient that exists. Aquifers are only required in models that need to explicitly account for the exchange of groundwater with the drainage system or to establish base flow and recession curves in natural channels and non-urban systems. The parameters of an aquifer object can be shared by several subcatchments but there is no exchange of groundwater between subcatchments. A drainage system node can exchange groundwater with more than one subcatchment.
>
> Aquifers are represented using two zones – an un-saturated zone and a saturated zone. Their behavior is characterized using such parameters as soil porosity, hydraulic conductivity,
>
> **60**
>
> evapotranspiration depth, bottom elevation, and loss rate to deep groundwater. In addition, the initial water table elevation and initial moisture content of the unsaturated zone must be supplied.
>
> Aquifers are connected to subcatchments and to drainage system nodes through a subcatchment's Groundwater Flow property. This property also contains parameters that govern the rate of groundwater flow between the aquifer's saturated zone and the drainage system node.
>
> 3.3.4 Unit Hydrographs
>
> Unit Hydrographs (UHs) estimate rainfall-dependent infiltration/inflow (RDII) into a sewer system. A UH set contains up to three such hydrographs, one for a short-term response, one for an intermediate-term response, and one for a long-term response. A UH group can have up to 12 UH sets, one for each month of the year. Each UH group is considered as a separate object by SWMM, and is assigned its own unique name along with the name of the rain gage that supplies rainfall data to it.
>
> Each unit hydrograph, as shown in Figure 3-4, is defined by three parameters:

- R: the fraction of rainfall volume that enters the sewer system

- T: the time from the onset of rainfall to the peak of the UH in hours

- K: the ratio of time to recession of the UH to the time to peak

<img src="./media/image48.png" style="width:2.61667in;height:0.14653in" />

> <img src="./media/image49.png" style="width:0.34653in;height:0.10347in" />

**Figure 3-4 An RDII unit hydrograph**

Each unit hydrograph can also have a set of Initial Abstraction (IA) parameters associated with it. These determine how much rainfall is lost to interception and depression storage before any excess rainfall is generated and transformed into RDII flow by the hydrograph. The IA parameters consist of:

**61**

- a maximum possible depth of IA (inches or mm),

- a recovery rate (inches/day or mm/day) at which stored IA is depleted during dry periods,

- an initial depth of stored IA (inches or mm).

To generate RDII into a drainage system node, the node must identify (through its Inflows property) the UH group and the area of the surrounding sewershed that contributes RDII flow.

<table>
<colgroup>
<col style="width: 4%" />
<col style="width: 95%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image50.jpg" style="width:0.17708in;height:0.94306in" /></p>
</blockquote></td>
<td><blockquote>
<p>An alternative to using unit hydrographs to define RDII flow is to create an external RDII interface file, which contains RDII time series data. See Section 11.7 Interface Files.</p>
<p>Unit hydrographs could also be used to replace SWMM's main rainfall-runoff process that uses Subcatchment objects, provided that properly calibrated UHs are utilized. In this case what SWMM calls RDII inflow to a node would actually represent overland runoff.</p>
</blockquote></td>
</tr>
</tbody>
</table>

3.3.5 Transects

Transects refer to the geometric data that describe how bottom elevation varies with horizontal distance over the cross section of a natural channel or irregular-shaped conduit. Figure 3-5 displays an example transect for a natural channel.

> <img src="./media/image51.jpg" style="width:6.08333in;height:2.86667in" />

**Figure 3-5 Example of a natural channel transect**

Each transect must be given a unique name. Conduits refer to that name to represent their shape. A special Transect Editor is available for editing the station-elevation data of a transect. SWMM internally converts these data into tables of area, top width, and hydraulic radius versus channel depth. In addition, as shown in Figure 3-5, each transect can have a left and right overbank section whose Manning's roughness can be different from that of the main channel. This feature can provide more realistic estimates of channel conveyance under high flow conditions.

**62**

> 3.3.6 External Inflows
>
> In addition to inflows originating from subcatchment runoff and groundwater, drainage system nodes can receive three other types of external inflows:

- **Direct Inflows** - These are user-defined time series of inflows added directly into a node. They can be used to perform flow and water quality routing in the absence of any runoff computations (as in a study area where no subcatchments are defined).

- **Dry Weather Inflows** - These are continuous inflows that typically reflect the contribution from sanitary sewage in sewer systems or base flows in pipes and stream channels. They are represented by an average inflow rate that can be periodically adjusted on a monthly, daily, and hourly basis by applying Time Pattern multipliers to this average value.

- **Rainfall-Dependent Infiltration/Inflow (RDII)** - These are stormwater flows that enter sanitary or combined sewers due to "inflow" from direct connections of downspouts, sump pumps, foundation drains, etc. as well as "infiltration" of subsurface water through cracked pipes, leaky joints, poor manhole connections, etc. RDII can be computed for a given rainfall record based on set of triangular unit hydrographs (UH) that determine a short-term, intermediate-term, and long-term inflow response for each time period of rainfall. Any number of UH sets can be supplied for different sewershed areas and different months of the year. RDII flows can also be specified in an external RDII interface file.

> Direct, Dry Weather, and RDII inflows are properties associated with each type of drainage system node (junctions, outfalls, flow dividers, and storage units) and can be specified when nodes are edited. They can be used to perform flow and water quality routing in the absence of any runoff computations (as in a study area where no subcatchments are defined). It is also possible to make the outflows generated from an upstream drainage system be the inflows to a downstream system by using interface files. See Section 11.7 for further details.
>
> 3.3.7 Control Rules
>
> Control Rules determine how pumps and regulators in the drainage system will be adjusted over the course of a simulation. Some examples of these rules are:
>
> <u>Simple time-based pump control:  
> </u>RULE R1
>
> IF SIMULATION TIME \> 8
>
> THEN PUMP 12 STATUS = ON  
> ELSE PUMP 12 STATUS = OFF
>
> <u>Multiple-condition orifice gate control:</u>
>
> RULE R2A
>
> IF NODE 23 DEPTH \> 12
>
> AND LINK 165 FLOW \> 100
>
> THEN ORIFICE R55 SETTING = 0.5
>
> **63**
>
> RULE R2B
>
> IF NODE 23 DEPTH \> 12
>
> AND LINK 165 FLOW \> 200
>
> THEN ORIFICE R55 SETTING = 1.0
>
> RULE R2C
>
> IF NODE 23 DEPTH \<= 12
>
> OR LINK 165 FLOW \<= 100
>
> THEN ORIFICE R55 SETTING = 0
>
> <u>Pump station operation:</u>
>
> RULE R3A
>
> IF NODE N1 DEPTH \> 5
>
> THEN PUMP N1A STATUS = ON
>
> RULE R3B
>
> IF NODE N1 DEPTH \> 7
>
> THEN PUMP N1B STATUS = ON
>
> RULE R3C
>
> IF NODE N1 DEPTH \<= 3
>
> THEN PUMP N1A STATUS = OFF
>
> AND PUMP N1B STATUS = OFF
>
> <u>Modulated weir height control:</u>
>
> RULE R4
>
> IF NODE N2 DEPTH \>= 0
>
> THEN WEIR W25 SETTING = CURVE C25
>
> Appendix C.3 describes the control rule format in more detail and the special Editor used to edit them.
>
> 3.3.8 Pollutants
>
> SWMM can simulate the generation, inflow and transport of any number of user-defined pollutants. Required information for each pollutant includes:

- pollutant name

- concentration units (i.e., milligrams/liter, micrograms/liter, or counts/liter)

- concentration in rainfall

- concentration in groundwater

- concentration in inflow/infiltration

- concentration in dry weather flow

- initial concentration throughout the conveyance system

- first-order decay coefficient.

**64**

> Co-pollutants can also be defined in SWMM. For example, pollutant X can have a co-pollutant Y, meaning that the runoff concentration of X will have some fixed fraction of the runoff concentration of Y added to it.
>
> Pollutant buildup and washoff from subcatchment areas are determined by the land uses assigned to those areas. Input loadings of pollutants to the drainage system can also originate from external time series inflows as well as from dry weather inflows.
>
> 3.3.9 Land Uses
>
> Land Uses are categories of development activities or land surface characteristics assigned to subcatchments. Examples of land use activities are residential, commercial, industrial, and undeveloped. Land surface characteristics might include rooftops, lawns, paved roads, undisturbed soils, etc. Land uses are used solely to account for spatial variation in pollutant buildup and washoff rates within subcatchments.
>
> The SWMM user has many options for defining land uses and assigning them to subcatchment areas. One approach is to assign a mix of land uses for each subcatchment, which results in all land uses within the subcatchment having the same pervious and impervious characteristics. Another approach is to create subcatchments that have a single land use classification along with a distinct set of pervious and impervious characteristics that reflects the classification.
>
> The following processes can be defined for each land use category:

- pollutant buildup

- pollutant washoff

- street cleaning.

> <u>Pollutant Buildup</u>
>
> Pollutant buildup that accumulates within a land use category is described (or “normalized”) by either a mass per unit of subcatchment area or per unit of curb length. Mass is expressed in pounds for US units and kilograms for metric units. The amount of buildup is a function of the number of preceding dry weather days and can be computed using one of the following functions:
>
> **Power Function**: Pollutant buildup (B) accumulates proportionally to time (t) raised to some power, until a maximum limit is achieved,

<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 90%" />
</colgroup>
<tbody>
<tr class="odd">
<td><em>B</em>=</td>
<td><p><em>Min C <sub>1</sub> ,C <sub>2</sub> t</em></p>
<p>( <em>C 3</em>)</p></td>
</tr>
</tbody>
</table>

> where *C1* = maximum buildup possible (mass per unit of area or curb length), *C2* = buildup rate constant, and *C3* = time exponent.
>
> **Exponential Function**: Buildup follows an exponential growth curve that approaches a maximum limit asymptotically,

**65**

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 89%" />
</colgroup>
<tbody>
<tr class="odd">
<td><em>B</em>=</td>
<td><p><em>C e</em> −</p>
<p>( 1<sup>2</sup> )</p>
<blockquote>
<p>− <em>C t</em></p>
<p>1</p>
</blockquote></td>
</tr>
</tbody>
</table>

> where *C1* = maximum buildup possible (mass per unit of area or curb length) and *C2* = buildup rate constant (1/days).
>
> **Saturation Function**: Buildup begins at a linear rate that continuously declines with time until a saturation value is reached,

<table>
<colgroup>
<col style="width: 59%" />
<col style="width: 40%" />
</colgroup>
<tbody>
<tr class="odd">
<td rowspan="2"><em>B</em>=</td>
<td><p><em>C t</em></p>
<p>1</p></td>
</tr>
<tr class="even">
<td></td>
</tr>
</tbody>
</table>

> *C* + *t*
>
> 2
>
> where *C1* = maximum buildup possible (mass per unit area or curb length) and *C2* = half-saturation constant (days to reach half of the maximum buildup).
>
> **External Time Series:** This option allows one to use a Time Series to describe the rate of buildup per day as a function of time. The values placed in the time series would have units of mass per unit area (or curb length) per day. One can also provide a maximum possible buildup (mass per unit area or curb length) with this option and a scaling factor that multiplies the time series values.
>
> <u>Pollutant Washoff</u>
>
> Pollutant washoff from a given land use category occurs during wet weather periods and can be described in one of the following ways:
>
> **Exponential Washoff:** The washoff load (*W*) in units of mass per hour is proportional to the product of runoff raised to some power and to the amount of buildup remaining,
>
> *W Cq<sup>C</sup>*<sup>2</sup> *B*
>
> = 1
>
> where *C1* = washoff coefficient, *C2* = washoff exponent, *q* = runoff rate per unit area (inches/hour or mm/hour), and *B* = pollutant buildup in mass units. The buildup here is the total mass (not per area or curb length) and both buildup and washoff mass units are the same as used to express the pollutant's concentration (milligrams, micrograms, or counts).
>
> **Rating Curve Washoff**: The rate of washoff *W* in mass per second is proportional to the runoff rate raised to some power,

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 84%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>W</em> = <em>CQ</em></p>
<blockquote>
<p>1</p>
</blockquote></td>
<td><em>C</em>2</td>
</tr>
</tbody>
</table>

> where *C1* = washoff coefficient, *C2* = washoff exponent, and *Q* = runoff rate in user-defined flow units.
>
> **66**
>
> **Event Mean Concentration**: This is a special case of Rating Curve Washoff where the exponent is 1.0 and the coefficient *C1* represents the washoff pollutant concentration in mass per liter (Note: the conversion between user-defined flow units used for runoff and liters is handled internally by SW MM).
>
> Note that in each case buildup is continuously depleted as washoff proceeds, and washoff ceases when there is no more buildup available.
>
> Washoff loads for a given pollutant and land use category can be reduced by a fixed percentage by specifying a BMP Removal Efficiency that reflects the effectiveness of any BMP controls associated with the land use. It is also possible to use the Event Mean Concentration option by itself, without having to model any pollutant buildup at all.
>
> <u>Street Sweeping</u>
>
> Street sweeping can be used on each land use category to periodically reduce the accumulated buildup of specific pollutants. The parameters that describe street sweeping include:

- days between sweeping

- days since the last sweeping at the start of the simulation

- the fraction of buildup of all pollutants that is available for removal by sweeping

- the fraction of available buildup for each pollutant removed by sweeping

> Note that these parameters can be different for each land use, and the last parameter can vary also with pollutant.
>
> 3.3.10 Treatment
>
> Removal of pollutants from the flow streams entering any drainage system node is modeled by assigning a set of treatment functions to the node. A treatment function can be any well-formed mathematical expression involving:

- the pollutant concentration

- the removals of other pollutants

- any of several process variables, such as flow rate, depth, hydraulic residence time, etc.

> The result of the treatment function can be either a concentration (denoted by the letter **C**) or a fractional removal (denoted by **R**). For example, a first-order decay expression for BOD exiting from a storage node might be expressed as:
>
> *C = BOD \* exp(-0.05 \* HRT)*
>
> where HRT is the reserved variable name for hydraulic residence time. The removal of some trace pollutant that is proportional to the removal of total suspended solids (TSS) could be expressed as:
>
> *R = 0.75 \* R_TSS*
>
> **67**
>
> Section C.22 provides more details on how user-defined treatment equations are supplied to the program.
>
> 3.3.11 Curves
>
> Curve objects are used to describe a functional relationship between two quantities. The following types of curves are used in SWMM:

- **Storage** - describes how the surface area of a Storage Unit node varies with water depth.

- **Shape** - describes how the width of a customized cross-sectional shape varies with height for a Conduit link.

- **Diversion** - relates diverted outflow to total inflow for a Flow Divider node.

- **Tidal** - describes how the stage at an Outfall node changes by hour of the day.

- **Pump** - relates flow through a Pump link to the depth or volume at the upstream node or to the head delivered by the pump.

- **Rating** - relates flow through an Outlet link to the freeboard depth or head difference across the outlet.

- **Control** - determines how the control setting of a pump or flow regulator varies as a function of some control variable (such as water level at a particular node) as specified in a Modulated Control rule.

> Each curve must be given a unique name and can be assigned any number of data pairs.
>
> 3.3.12 Time Series
>
> Time Series objects are used to describe how certain object properties vary with time. Time series can be used to describe:

- temperature data

- evaporation data

- rainfall data

- water stage at outfall nodes

- external inflow hydrographs at drainage system nodes

- external inflow pollutographs at drainage system nodes

- control settings for pumps and flow regulators..

> Each time series must be given a unique name and can be assigned any number of time-value data pairs. Time can be specified either as hours from the start of a simulation or as an absolute date and time-of-day. Time series data can either be entered directly into the program or be accessed from a user-supplied Time Series file.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image52.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>For rainfall time series, it is only necessary to enter periods with non-zero rainfall amounts. SWMM interprets the rainfall value as a constant value lasting over the</p>
</blockquote></td>
</tr>
</tbody>
</table>

**68**

> recording interval specified for the rain gage that utilizes the time series. For all other types of time series, SWMM uses interpolation to estimate values at times that fall in between the recorded values.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image53.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>For times that fall outside the range of the time series, SWMM will use a value of 0 for rainfall and external inflow time series, and either the first or last series value for temperature, evaporation, and water stage time series.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> 3.3.13 Time Patterns
>
> Time Patterns allow external Dry Weather Flow (DWF) to vary in a periodic fashion. They consist of a set of adjustment factors applied as multipliers to a baseline DWF flow rate or pollutant concentration. The different types of time patterns include:
>
> **Monthly** - one multiplier for each month of the year
>
> **Daily** - one multiplier for each day of the week
>
> **Hourly** - one multiplier for each hour from 12 AM to 11 PM  
> **Weekend** - hourly multipliers for weekend days
>
> Each Time Pattern must have a unique name and there is no limit on the number of patterns that can be created. Each dry weather inflow (either flow or quality) can have up to four patterns associated with it, one for each type listed above.
>
> 3.3.14 LID Controls
>
> LID Controls are low impact development practices designed to capture surface runoff and provide some combination of detention, infiltration, and evapotranspiration to it. They are considered as properties of a given subcatchment, similar to how Aquifers and Snow Packs are treated. SWMM can explicitly model eight different generic types of LID controls:

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image54.jpg" style="width:1.36319in;height:2.05347in" /></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>Bio-retention Cells</strong></em> are depressions that contain vegetation grown in an engineered soil mixture placed above a gravel drainage bed. They provide storage, infiltration and evaporation of both direct rainfall and runoff captured from surrounding areas.</p>
<p><em><strong>Rain Gardens</strong></em> are a type of bio-retention cell consisting of just the engineered soil layer with no gravel bed below it.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **69**

***Green Roofs*** are another variation of a bio-retention cell that have a soil layer laying atop a special drainage mat material that conveys excess percolated rainfall off of the roof.

***Infiltration Trenches*** are narrow ditches filled with gravel that intercept runoff from upslope impervious areas. They provide storage volume and additional time for captured runoff to infiltrate the native soil below.

***Continuous Permeable Pavement*** systems are excavated areas filled with gravel and paved over with a porous concrete or asphalt mix. Normally all rainfall will immediately pass through the pavement into the gravel storage layer below it where it can infiltrate at natural rates into the site's native soil. ***Block Paver*** systems consist of impervious paver blocks placed on a sand or pea gravel bed with a gravel storage layer below. Rainfall is captured in the open spaces between the blocks and conveyed to the storage zone and native soil below.

***Rain Barrels*** (or ***Cisterns***) are containers that collect roof runoff during storm events and can either release or re-use the rainwater during dry periods.

***Rooftop Disconnection*** has downspouts discharge to pervious landscaped areas and lawns instead of directly into storm drains. It can also model roofs with directly connected drains that overflow onto pervious areas.

***Vegetative Swales*** are channels or depressed areas with sloping sides covered with grass and other vegetation. They slow down the conveyance of collected runoff and allow it more time to infiltrate the native soil beneath it.

> Bio-retention cells, infiltration trenches, and permeable pavement systems can contain optional drain systems in their gravel storage beds to convey excess captured runoff off of the site and prevent the unit from flooding. They can also have an impermeable floor or liner that prevents any infiltration into the native soil from occurring. Infiltration trenches and permeable pavement systems can also be subjected to a decrease in hydraulic conductivity over time due to clogging.
>
> Although some LID practices can also provide significant pollutant reduction benefits, at this time SWMM only models the reduction in runoff mass load resulting from the reduction in runoff flow volume.
>
> **70**
>
> There are two different approaches for placing LID controls within a subcatchment:

- place one or more controls in an existing subcatchment that will displace an equal amount of non-LID area from the subcatchment

- create a new subcatchment devoted entirely to just a single LID practice.

> The first approach allows a mix of LIDs to be placed into a subcatchment, each treating a different portion of the runoff generated from the non-LID fraction of the subcatchment. Note that under this option the subcatchment's LIDs act in parallel -- it is not possible to make them act in series (i.e., have the outflow from one LID control become the inflow to another LID). Also, after LID placement the subcatchment's Percent Impervious and Width properties may require adjustment to compensate for the amount of original subcatchment area that has now been replaced by LIDs (see Figure 3-6 below). For example, suppose that a subcatchment which is 40% impervious has 75% of that area converted to a permeable pavement LID. After the LID is added the subcatchment's percent imperviousness should be changed to the percent of impervious area remaining divided by the percent of non-LID area remaining. This works out to (1 - 0.75)\*40 / (100 - 0.75\*40) or 14.3 %.
>
> <img src="./media/image57.png" style="width:5.57361in;height:3.78333in" />
>
> **Figure 3-6 Adjustment of subcatchment parameters after LID placement**
>
> Under this first approach the runoff available for capture by the subcatchment's LIDs is the runoff generated from its impervious area. If the option to re-route some fraction of this runoff to the pervious area is exercised, then only the remaining impervious runoff (if any) will be available for LID treatment. Also note that green roofs and roof disconnection only treat the precipitation that

**71**

> falls directly on them and do not capture runoff from other impervious areas in their subcatchment.
>
> The second approach allows LID controls to be strung along in series and also allows runoff from several different upstream subcatchments to be routed onto the LID subcatchment. If these single-LID subcatchments are carved out of existing subcatchments, then once again some adjustment of the Percent Impervious, Width and also the Area properties of the latter may be necessary. In addition, whenever an LID occupies the entire subcatchment the values assigned to the subcatchment's standard surface properties (such as imperviousness, slope, roughness, etc.) are overridden by those that pertain to the LID unit.
>
> Normally both surface and drain outflows from LID units are routed to the same outlet location assigned to the parent subcatchment. However one can choose to return all LID outflow to the pervious area of the parent subcatchment and/or route the drain outflow to a separate designated outlet. (When both of these options are chosen, only the surface outflow is returned to the pervious sub-area.)
>
> **3.4 Computational Methods**
>
> SWMM is a physically based, discrete-time simulation model. It employs principles of conservation of mass, energy, and momentum wherever appropriate. This section briefly describes the methods SWMM uses to model stormwater runoff quantity and quality through the following physical processes:

- Surface Runoff • Infiltration

- Groundwater • Snowmelt

- Flow Routing • Surface Ponding

- Water Quality Routing

> 3.4.1 Surface Runoff
>
> The conceptual view of surface runoff used by SWMM is illustrated in Figure 3-7 below. Each subcatchment surface is treated as a nonlinear reservoir. Inflow comes from precipitation and any designated upstream subcatchments. There are several outflows, including infiltration, evaporation, and surface runoff. The capacity of this "reservoir" is the maximum depression storage, which is the maximum surface storage provided by ponding, surface wetting, and interception. Surface runoff per unit area, Q, occurs only when the depth of water in the "reservoir" exceeds the maximum depression storage, ds, in which case the outflow is given by Manning's equation. Depth of water over the subcatchment (d) is continuously updated with time by solving numerically a water balance equation over the subcatchment.
>
> **72**
>
> <img src="./media/image58.jpg" style="width:4.71319in;height:2.14653in" />
>
> **Figure 3-7 Conceptual view of surface runoff**
>
> 3.4.2 Infiltration
>
> Infiltration is the process of rainfall penetrating the ground surface into the unsaturated soil zone of pervious subcatchments areas. SWMM offers four choices for modeling infiltration:
>
> **<u>Horton's Method</u>**
>
> This method is based on empirical observations showing that infiltration decreases exponentially from an initial maximum rate to some minimum rate over the course of a long rainfall event. Input parameters required by this method include the maximum and minimum infiltration rates, a decay coefficient that describes how fast the rate decreases over time, and a time it takes a fully saturated soil to completely dry.
>
> **<u>Modified Horton Method</u>**
>
> This is a modified version of the classical Horton Method that uses the cumulative infiltration in excess of the minimum rate as its state variable (instead of time along the Horton curve), providing a more accurate infiltration estimate when low rainfall intensities occur. It uses the same input parameters as does the traditional Horton Method.
>
> **<u>Green-Ampt Method</u>**
>
> This method for modeling infiltration assumes that a sharp wetting front exists in the soil column, separating soil with some initial moisture content below from saturated soil above. The input parameters required are the initial moisture deficit of the soil, the soil's hydraulic conductivity, and the suction head at the wetting front. The recovery rate of moisture deficit during dry periods is empirically related to the hydraulic conductivity.
>
> **<u>Modified Green-Ampt Method</u>**
>
> This method modifies the original Green-Ampt procedure by not depleting moisture deficit in the top surface layer of soil during initial periods of low rainfall as was done in the original method. This change can produce more realistic infiltration behavior for storms with long initial periods where the rainfall intensity is below the soil’s saturated hydraulic conductivity.
>
> **73**
>
> **<u>Curve Number Method</u>**
>
> This approach is adopted from the NRCS (SCS) Curve Number method for estimating runoff. It assumes that the total infiltration capacity of a soil can be found from the soil's tabulated Curve Number. During a rain event this capacity is depleted as a function of cumulative rainfall and remaining capacity. The input parameters for this method are the curve number and the time it takes a fully saturated soil to completely dry.
>
> SWMM also allows the infiltration recovery rate to be adjusted by a fixed amount on a monthly basis to account for seasonal variation in such factors as evaporation rates and groundwater levels. This optional monthly soil recovery pattern is specified as part of a project's Evaporation data.
>
> 3.4.3 Groundwater
>
> Figure 3-8 is a definitional sketch of the two-zone groundwater model that is used in SWMM. The upper zone is unsaturated with a variable moisture content of 0. The lower zone is fully saturated and therefore its moisture content is fixed at the soil porosity φ. The fluxes shown in the figure, expressed as volume per unit area per unit time, consist of the following:
>
> **Figure 3-8 Two-zone groundwater model**
>
> **fI** infiltration from the surface
>
> **fEU** evapotranspiration from the upper zone which is a fixed fraction of the un-used surface evaporation
>
> **fU** percolation from the upper to lower zone which depends on the upper zone moisture content 0 and depth **dU**
>
> **fEL** evapotranspiration from the lower zone, which is a function of the depth of the upper zone **dU**
>
> **fL** seepage from the lower zone to deep groundwater which depends on the lower zone depth **dL**
>
> **fG** lateral groundwater interflow to the drainage system, which depends on the lower zone depth **dL** as well as the depth in the receiving channel or node.
>
> **74**
>
> After computing the water fluxes that exist during a given time step, a mass balance is written for the change in water volume stored in each zone so that a new water table depth and unsaturated zone moisture content can be computed for the next time step.
>
> 3.4.4 Snowmelt
>
> The snowmelt routine in SWMM is a part of the runoff modeling process. It updates the state of the snow packs associated with each subcatchment by accounting for snow accumulation, snow redistribution by areal depletion and removal operations, and snow melt via heat budget accounting. Any snowmelt coming off the pack is treated as an additional rainfall input onto the subcatchment.
>
> At each runoff time step the following computations are made:
>
> **1.** Air temperature and melt coefficients are updated according to the calendar date.
>
> **2.** Any precipitation that falls as snow is added to the snow pack.
>
> **3.** Any excess snow depth on the plowable area of the pack is redistributed according to the removal parameters established for the pack.
>
> **4.** Areal coverage of snow on the impervious and pervious areas of the pack is reduced according to the Areal Depletion Curves defined for the study area.
>
> **5.** The amount of snow in the pack that melts to liquid water is found using:

1.  a heat budget equation for periods with rainfall, where melt rate increases with increasing air temperature, wind speed, and rainfall intensity

2.  a degree-day equation for periods with no rainfall, where melt rate equals the product of a melt coefficient and the difference between the air temperature and the pack's base melt temperature.

> **6.** If no melting occurs, the pack temperature is adjusted up or down based on the product of the difference between current and past air temperatures and an adjusted melt coefficient. If melting occurs, the temperature of the pack is increased by the equivalent heat content of the melted snow, up to the base melt temperature. Any remaining melt liquid beyond this is available to runoff from the pack.
>
> **7.** The available snowmelt is then reduced by the amount of free water holding capacity remaining in the pack. The remaining melt is treated the same as an additional rainfall input onto the subcatchment.
>
> 3.4.5 Flow Routing
>
> Flow routing within a conduit link in SWMM is governed by the conservation of mass and momentum equations for gradually varied, unsteady flow (i.e., the Saint Venant flow equations). The SWMM user has a choice on the level of sophistication used to solve these equations:

- Steady Flow Routing

- Kinematic Wave Routing

> **75**
>
>  Dynamic Wave Routing
>
> Each of these routing methods employs the Manning equation to relate flow rate to flow depth and bed (or friction) slope. For user-designated Force Main conduits, either the Hazen-Williams or Darcy-Weisbach equation can be used when pressurized flow occurs.
>
> <u>Steady Flow Routing</u>
>
> Steady Flow routing represents the simplest type of routing possible (actually no routing) by assuming that within each computational time step flow is uniform and steady. Thus it simply translates inflow hydrographs at the upstream end of the conduit to the downstream end, with no delay or change in shape. The normal flow equation is used to relate flow rate to flow area (or depth).
>
> This type of routing cannot account for channel storage, backwater effects, entrance/exit losses, flow reversal or pressurized flow. It can only be used with dendritic conveyance networks, where each node has only a single outflow link (unless the node is a divider in which case two outflow links are required). This form of routing is insensitive to the time step employed and is really only appropriate for preliminary analysis using long-term continuous simulations.
>
> <u>Kinematic Wave Routing</u>
>
> This routing method solves the continuity equation along with a simplified form of the momentum equation in each conduit. The latter assumes that the slope of the water surface equal the slope of the conduit.
>
> The maximum flow that can be conveyed through a conduit is the full normal flow value. Any flow in excess of this entering the inlet node is either lost from the system or can pond atop the inlet node and be re-introduced into the conduit as capacity becomes available.
>
> Kinematic wave routing allows flow and area to vary both spatially and temporally within a conduit. This can result in attenuated and delayed outflow hydrographs as inflow is routed through the channel. However this form of routing cannot account for backwater effects, entrance/exit losses, flow reversal, or pressurized flow, and is also restricted to dendritic network layouts. It can usually maintain numerical stability with moderately large time steps, on the order of 1 to 5 minutes. If the aforementioned effects are not expected to be significant then this alternative can be an accurate and efficient routing method, especially for long-term simulations.
>
> <u>Dynamic Wave Routing</u>
>
> Dynamic Wave routing solves the complete one-dimensional Saint Venant flow equations and therefore produces the most theoretically accurate results. These equations consist of the continuity and momentum equations for conduits and a volume continuity equation at nodes.
>
> With this form of routing it is possible to represent pressurized flow when a closed conduit becomes full, such that flows can exceed the full normal flow value. Flooding occurs when the
>
> **76**
>
> water depth at a node exceeds the maximum available depth, and the excess flow is either lost from the system or can pond atop the node and re-enter the drainage system.
>
> Dynamic wave routing can account for channel storage, backwater, entrance/exit losses, flow reversal, and pressurized flow. Because it couples together the solution for both water levels at nodes and flow in conduits it can be applied to any general network layout, even those containing multiple downstream diversions and loops. It is the method of choice for systems subjected to significant backwater effects due to downstream flow restrictions and with flow regulation via weirs and orifices. This generality comes at a price of having to use much smaller time steps, on the order of a thirty seconds or less (SWMM can automatically reduce the user-defined maximum time step as needed to maintain numerical stability).
>
> 3.4.6 Ponding and Pressurization
>
> Normally in flow routing, when the flow into a junction exceeds the capacity of the system to transport it further downstream, the excess volume overflows the system and is lost. An option exists to have instead the excess volume be stored atop the junction, in a ponded fashion, and be reintroduced into the system as capacity permits. Under Steady and Kinematic Wave flow routing, the ponded water is stored simply as an excess volume. For Dynamic Wave routing, which is influenced by the water depths maintained at nodes, the excess volume is assumed to pond over the node with a constant surface area. This amount of surface area is an input parameter supplied for the junction.
>
> Alternatively, the user may wish to represent the surface overflow system explicitly. In open channel systems this can include road overflows at bridges or culvert crossings as well as additional floodplain storage areas. In closed conduit systems, surface overflows may be conveyed down streets, alleys, or other surface routes to the next available stormwater inlet or open channel. Overflows may also be impounded in surface depressions such as parking lots, back yards or other areas.
>
> In sewer systems with pressurized pipes and force mains the hydraulic head at junction nodes can at times exceed the ground elevation under Dynamic Wave routing. This would normally result in an overflow which, as described above, can either be lost or ponded. SWMM allows the user to specify an additional "surcharge" depth for junction nodes that lets them pressurize and prevents any outflow until this additional depth is exceeded. If both ponding and pressurization are specified for a node ponding takes precedence and the surcharge depth is ignored. Neither ponding nor pressurization applies to storage nodes.
>
> 3.4.7 Water Quality Routing
>
> Water quality routing within conduit links assumes that the conduit behaves as a continuously stirred tank reactor (CSTR). Although a plug flow reactor assumption might be more realistic, the differences will be small if the travel time through the conduit is on the same order as the routing time step. The concentration of a constituent exiting the conduit at the end of a time step is found by integrating the conservation of mass equation, using average values for quantities that might change over the time step such as flow rate and conduit volume.

**77**

> Water quality modeling within storage unit nodes follows the same approach used for conduits. For other types of nodes that have no volume, the quality of water exiting the node is simply the mixture concentration of all water entering the node.
>
> The pollutant concentration in both a conduit and a storage node will be reduced by a first-order decay reaction if the pollutant’s first-order decay coefficient is not zero.
>
> 3.4.8 LID Representation
>
> LID controls are represented by a combination of vertical layers whose properties are defined on a per-unit-area basis. This allows LIDs of the same design but differing area coverage to easily be placed within different subcatchments of a study area. During a simulation SWMM performs a moisture balance that keeps track of how much water moves between and is stored within each LID layer. As an example, the layers used to model a bio-retention cell and the flow pathways between them are shown in Figure 3-9. The various possible layers consist of the following:
>
> <img src="./media/image60.png" style="width:2.73958in;height:2.36667in" />
>
> **Figure 3-9 Conceptual diagram of a bio-retention cell LID**

- The *Surface Layer* corresponds to the ground (or pavement) surface that receives direct rainfall and runon from upstream land areas, stores excess inflow in depression storage, and generates surface outflow that either enters the drainage system or flows onto downstream land areas.

- The *Pavement Layer* is the layer of porous concrete or asphalt used in continuous permeable pavement systems, or is the paver blocks and filler material used in modular systems.

- The *Soil Layer* is the engineered soil mixture used in bio-retention cells to support vegetative growth. It can also be a sand layer placed beneath a pavement layer to provide bedding and filtration.

- The *Storage Layer* is a bed of crushed rock or gravel that provides storage in bio-retention cells, porous pavement, and infiltration trench systems. For a rain barrel it is simply the barrel itself.

> **78**

- The D*rain System* conveys water out of the gravel storage layer of bio-retention cells, permeable pavement systems, and infiltration trenches (typically with slotted pipes) into a common outlet pipe or chamber. For rain barrels it is simply the drain valve at the bottom of the barrel while for rooftop disconnection it is the roof gutter and downspout system.

- The *Drainage Mat Layer* is a mat or plate placed between the soil media and the roof in a green roof whose purpose is to convey any water that drains through the soil layer off of the roof.

> Table 3-3 indicates which combination of layers applies to each type of LID (**x** means required, **o** means optional).
>
> **Table 3-3 Layers used to model different types of LID units**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 11%" />
<col style="width: 14%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 9%" />
<col style="width: 19%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>LID Type</strong></p>
</blockquote></td>
<td><strong>Surface</strong></td>
<td><strong>Pavement</strong></td>
<td><strong>Soil</strong></td>
<td><strong>Storage</strong></td>
<td><strong>Drain</strong></td>
<td><strong>Drainage Mat</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bio-Retention Cell</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td>o</td>
<td>o</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rain Garden</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Green Roof</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td></td>
<td></td>
<td><strong>x</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Permeable Pavement</p>
</blockquote></td>
<td>x</td>
<td>x</td>
<td>o</td>
<td>x</td>
<td>o</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Infiltration Trench</p>
</blockquote></td>
<td>x</td>
<td></td>
<td></td>
<td>x</td>
<td>o</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rain Barrel</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td>x</td>
<td>x</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Roof Disconnection</p>
</blockquote></td>
<td>x</td>
<td></td>
<td></td>
<td></td>
<td>x</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vegetative Swale</p>
</blockquote></td>
<td><strong>x</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

> All of the LID controls provide some amount of rainfall/runoff storage and evaporation of stored water (except for rain barrels). Infiltration into native soil occurs in vegetative swales and can also occur in bio-retention cells, rain gardens, permeable pavement systems, and infiltration trenches if those systems do not employ an optional impermeable bottom liner. Infiltration trenches and permeable pavement systems can also be subjected to clogging. This reduces their hydraulic conductivity over time proportional to the cumulative hydraulic loading they receive.
>
> The performance of the LID controls placed in a subcatchment is reflected in the overall runoff, infiltration, and evaporation rates computed for the subcatchment as normally reported by SWMM. SWMM's Status Report also contains a section entitled LID Performance Summary that provides an overall water balance for each LID control placed in each subcatchment. The components of this water balance include total inflow, infiltration, evaporation, surface runoff, drain flow and initial and final stored volumes, all expressed as inches (or mm) over the LID's area. Optionally, the entire time series of flux rates and moisture levels for a selected LID control in a given subcatchment can be written to a tab delimited text file for easy viewing and graphing in a spreadsheet program (such as Microsoft Excel).

**79**

**CHAPTER 4 – SWMM’S MAIN WINDOW**

*This chapter discusses the essential features of SWMM’s workspace. It describes the main menu bar, the tool and status bars, and the three windows used most often – the Study Area Map, the Browser, and the Property Editor. It also shows how to set program preferences.*

**4.1 Overview**

The EPA SWMM main window is pictured below. It consists of the following user interface elements: a Main Menu, several Toolbars, a Status Bar, the Study Area Map window, a Browser panel, and a Property Editor window. A description of each of these elements is provided in the sections that follow.

> <img src="./media/image61.jpg" style="width:6.08681in;height:4.55972in" />

**80**

> **4.2 Main Menu**
>
> The Main Menu located across the top of the EPA SWMM main window contains a collection of
>
> menus used to control the program. These include:

- File Menu

- Edit Menu

- View Menu

- Project Menu

- Report Menu

- Tools Menu

- Window Menu

- Help Menu

> File Menu
>
> The File Menu contains commands for opening and saving data files and for printing:
>
> *Command Description*
>
> New Creates a new SWMM project
>
> Open Opens an existing project
>
> Reopen Reopens a recently used project
>
> Save Saves the current project
>
> Save As Saves the current project under a different name
>
> Export Exports study area map to a file in a variety of formats; Exports current results to a Hot Start file;
>
> Exports the current result’s Status/Summary reports
>
> Combine Combines two Routing Interface files together
>
> Page Setup Sets page margins and orientation for printing
>
> Print Preview Previews a printout of the currently active view (map, report, graph, or table)
>
> Print Prints the current view
>
> Exit Exits EPA SWMM

**81**

Edit Menu

The Edit Menu contains commands for editing and copying:

> *Command Description*
>
> Copy To Copies the currently active view (map, report, graph or table) to the clipboard or to a file
>
> Select Object Enables the user to select an object on the map
>
> Select Vertex Enables the user to select the vertex of a subcatchment or link
>
> Select Region Enables the user to delineate a region on the map for selecting multiple objects
>
> Select All Selects all objects when the map is the active window or all cells of a table when a tabular report is the active window
>
> Find Object Locates a specific object by name on the map
>
> Edit Object Edits the properties of the currently selected object
>
> Delete Object Deletes the currently selected object
>
> Group Edit Edits a property for the group of objects that fall within the outlined region of the map
>
> Group Delete Deletes a group of objects that fall within the outlined region of the map

View Menu

The View Menu contains commands for viewing the Study Area Map:

> *Command Description*
>
> Dimensions Sets reference coordinates and distance units for the study area map
>
> Backdrop Allows a backdrop image to be added, positioned, and viewed behind the map
>
> Pan Pans across the map
>
> Zoom In Zooms in on the map
>
> Zoom Out Zooms out on the map
>
> Full Extent Redraws the map at full extent
>
> Query Highlights objects on the map that meet specific criteria
>
> Overview Toggles the display of the Overview Map
>
> Objects Toggles display of classes of objects on the map
>
> Legends Controls display of the map legends
>
> Toolbars Toggles display of toolbars

**82**

> Project Menu
>
> The Project menu contains commands related to the current project being analyzed:
>
> *Command Description*
>
> Summary Lists the number of each type of object in the project
>
> Details Shows a detailed listing of all project data
>
> Defaults Edits a project’s default properties
>
> Calibration Data Registers files containing calibration data with the project Add a New Object Adds a new object to the project
>
> Run Simulation Runs a simulation
>
> Report Menu
>
> The Report menu contains commands used to report analysis results in different formats:
>
> *Command Description*
>
> Status Displays a status report for the most recent simulation run
>
> Summary Displays summary results in tabular form
>
> Graph Displays simulation results in graphical form
>
> Table Displays simulation results in tabular form
>
> Statistics Displays a statistical analysis of simulation results
>
> Customize Customizes the display style of the currently active graph
>
> Tools Menu
>
> The Tools menu contains commands used to configure program preferences, study area map display options, and external add-in tools:
>
> *Command Description*
>
> Program Sets program preferences, such as font size, confirm
>
> Preferences deletions, number of decimal places displayed, etc.
>
> Map Display Sets appearance options for the Map, such as object size,
>
> Options annotation, flow direction arrows, and back-ground color
>
> Configure Tools Adds, deletes, or modifies external add-in tools

**83**

> Window Menu
>
> The Window Menu contains commands for arranging and selecting windows within the SWMM workspace:
>
> *Command Description*
>
> Cascade Arranges windows in cascaded style, with the study area map filling the entire display area
>
> Tile Minimizes the study area map and tiles the remaining windows vertically in the display area
>
> Close All Closes all open windows except for the study area map
>
> Window List Lists all open windows; the currently selected window has the focus and is denoted with a check mark
>
> Help Menu
>
> The Help Menu contains commands for getting help in using EPA SWMM:
>
> *Command Description*
>
> Help Topics Displays the Help system's Table of Contents
>
> How Do I Displays a list of topics covering the most common operations
>
> Measurement Units Shows measurement units for all of SWMM’s parameters
>
> Error Messages Lists the meaning of all error messages
>
> Tutorial Presents a short tutorial introducing the user to EPA SWMM
>
> About Lists information about the version of EPA SWMM being used
>
> **4.3 Toolbars**
>
> Toolbars provide shortcuts to commonly used operations. There are three such toolbars:

- Standard Toolbar

- Map Toolbar

- Object Toolbar

> Individual toolbars can be made visible or invisible by selecting **View \>\> Toolbars** from the Main Menu.

**84**

The **Standard Toolbar** contains buttons for the following commonly used commands:

Creates a new project (**File \>\> New**)

Opens an existing project (**File \>\> Open**)

Saves the current project (**File \>\> Save**)

Prints the currently active window (**File \>\> Print**)

Copies selection to the clipboard or to a file (**Edit \>\> Copy To**)

Finds a specific object on the Study Area Map (**Edit \>\> Find Object**)

Makes a visual query of the study area map (**View \>\> Query**)

Toggles the display of the Overview Map (**View \>\> Overview**)

Runs a simulation (**Project \>\> Run Simulation**)

Displays a run’s Status or Summary reports (**Report \>\> Status** and **Report \>\> Summary** appear in a dropdown menu)

Creates a profile plot of simulation results (**Report \>\> Graph \>\> Profile**)

Creates a time series plot of simulation results (**Report \>\> Graph \>\> Time Series**)

Creates a time series table of simulation results (**Report \>\> Table**)

Creates a scatter plot of simulation results (**Report \>\> Graph \>\> Scatter**) Performs a statistical analysis of simulation results (**Report \>\> Statistics**)

Modifies display options for the currently active view (**Tools \>\> Map Display Options** or **Report \>\> Customize**)

Arranges windows in cascaded style, with the study area map filling the entire display area (**Window \>\> Cascade**)

The **Map Toolbar** contains the following buttons for viewing the study area map:

Selects an object on the map (**Edit \>\> Select Object**)

Selects link or subcatchment vertex points (**Edit \>\> Select Vertex**)

Selects a region on the map (**Edit \>\> Select Region**)

Pans across the map (**View \>\> Pan**)

Zooms in on the map (**View \>\> Zoom In**)

Zooms out on the map (**View \>\> Zoom Out**)

Draws map at full extent (**View \>\> Full Extent**)

Measures a length or area on the map

**85**

> The **Object Toolbar** contains buttons for adding visual objects to a project via the study area
>
> map.
>
> Adds a rain gage to the map.  
> Adds a subcatchment to the map  
> Adds a junction node to the map  
> Adds an outfall node to the map  
> Adds a flow divider node to the map
>
> Adds a storage unit node to the map
>
> Adds a conduit link to the map  
> Adds a pump link to the map  
> Adds an orifice link to the map  
> Adds a weir link to the map  
> Adds an outlet link to the map  
> Adds a text label to the map
>
> **4.4 Status Bar**
>
> The Status Bar appears at the bottom of SWMM's Main Window and is divided into six sections:
>
> <img src="./media/image65.png" style="width:6in;height:0.27292in" />
>
> **<u>Auto-Length</u>**
>
> Indicates whether the automatic computation of conduit lengths and subcatchment areas is
>
> turned on or off. The setting can be changed by clicking the drop down arrow.
>
> **<u>Offsets</u>**
>
> Indicates whether the positions of links above the invert of their connecting nodes are expressed as a Depth above the node invert or as the Elevation of the offset. Click the drop down arrow to change this option. If changed, a dialog box will appear asking if all existing offsets in the current project should be changed or not (i.e., convert Depth offsets to Elevation offsets or Elevation offsets to Depth offsets, depending on the option selected)
>
> **<u>Flow Units</u>**
>
> Displays the current flow units that are in effect. Click the drop down arrow to change the choice of flow units. Selecting a US flow unit means that all other quantities will be expressed in US units, while choosing a metric flow unit will force all quantities to be expressed in metric units. The units of previously entered data are not automatically adjusted if the unit system is changed.

**86**

> **<u>Run Status</u>**

<table>
<colgroup>
<col style="width: 4%" />
<col style="width: 95%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image66.jpg" style="width:0.18681in;height:0.77361in" /></p>
</blockquote></td>
<td><blockquote>
<p>results are not available because no simulation has been run yet.<br />
results are up to date.</p>
<p>results are out of date because project data have changed.<br />
results are not available because the last simulation had errors.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **<u>Zoom Level</u>**
>
> Displays the current zoom level for the map (100% is full-scale).
>
> **<u>XY Location</u>**
>
> Displays the map coordinates of the current position of the mouse pointer.
>
> **4.5 Study Area Map**
>
> The Study Area Map (shown below) provides a planar schematic diagram of the objects comprising a drainage system. Its pertinent features are as follows:
>
> <img src="./media/image67.jpg" style="width:3.45694in;height:3.66667in" />

- The location of objects and the distances between them do not necessarily have to conform to their actual physical scale.

- Selected properties of these objects, such as water quality at nodes or flow velocity in links, can be displayed by using different colors. The color-coding is described in a Legend, which can be edited.

**87**

- New objects can be directly added to the map and existing objects can be selected for editing, deleting, and repositioning.

- A backdrop drawing (such as a street or topographic map) can be placed behind the network map for reference.

- The map can be zoomed to any scale and panned from one position to another.

- Nodes and links can be drawn at different sizes, flow direction arrows added, and object symbols, ID labels and numerical property values displayed.

- The map can be printed, copied onto the Windows clipboard, or exported as a DXF file or Windows metafile.

> **4.6 Project Browser**
>
> The Project Browser panel (shown below) appears when the Project tab on the left panel of SWMM’s main window is selected. It provides access to all of the data objects in a project. The vertical sizes of the list boxes in the browser can be adjusted by using the splitter bar located just below the upper list box. The width of the Browser panel can be adjusted by using the splitter bar located along its right edge.

The upper list box displays the various categories of data objects available to a SWMM project. The lower list box lists the name of each individual object of the currently selected data category.

The buttons between the two list boxes are used as follows:

adds a new object

deletes the selected object

edits the selected object

moves the selected object up one position

moves the selected object down one position

sorts the objects in ascending order

Selections made in the Project Browser are coordinated with objects highlighted on the Study Area Map, and vice versa. For example, selecting a conduit in the Browser will cause that conduit to be highlighted on the map, while selecting it on the map will cause it to become the selected object in the Browser.

**88**

> **4.7 Map Browser**
>
> The Map Browser panel (shown below) appears when the Map tab on the left panel of the SWMM’s main window is selected. It controls the mapping themes and time periods viewed on the Study Area Map. The width of the Map Browser panel can be adjusted by using the splitter bar located along its right edge. The Map Browser consists of the following three panels that control what results are displayed on the map:

**89**

> The Themes panel of the Map Browser is used to select a thematic variable to view in color-coded fashion on the Study Area Map.

<table>
<colgroup>
<col style="width: 21%" />
<col style="width: 78%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image71.jpg" style="width:1.24306in;height:1.76389in" /></p>
</blockquote></td>
<td><blockquote>
<p><strong>Subcatchments</strong> - selects the theme to display for the subcatchment areas shown on the Map.</p>
<p><strong>Nodes</strong> - selects the theme to display for the drainage system nodes shown on the Map.</p>
<p><strong>Links</strong> - selects the theme to display for the drainage system links shown on the Map.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The Time Period panel of the Map Browser allows is used to select a time period in which to view computed results in thematic fashion on the Study Area Map.

<table>
<colgroup>
<col style="width: 24%" />
<col style="width: 75%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image72.jpg" style="width:1.45347in;height:2.11667in" /></p>
</blockquote></td>
<td><blockquote>
<p><strong>Date</strong> - selects the day for which simulation results will be viewed.</p>
<p><strong>Time of Day</strong> - selects the time of the current day (in hours:minutes:seconds) for which simulation results will be viewed.</p>
<p><strong>Elapsed Time</strong> - selects the elapsed time from the start of the simulation (in days.hours:minutes:seconds) for which results will be viewed.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The Animator panel of the Map Browser contains controls for animating the Study Area Map and all Profile Plots through time i.e., updating map color-coding and hydraulic grade line profile depths as the simulation time clock is automatically moved forward or back. The meaning of the control buttons are as follows:

Returns to the starting period.

Starts animating backwards in time  
Stops the animation

Starts animating forwards in time

The slider bar is used to adjust the animation speed.

**90**

> **4.8 Property Editor**
>
> The Property Editor (shown to the right) is used to edit the properties of data objects that can appear on the Study Area Map. It is invoked when one of these objects is selected (either on the Map or in the Project Browser) and double-clicked or when the Project Browser's Edit
>
> button is clicked.
>
> Key features of the Property Editor include:

- The Editor is a grid with two columns - one for the property's name and the other for its value.

- The columns can be re-sized by re-sizing the header at the top of the Editor with the mouse.

- A hint area is displayed at the bottom of the Editor with an expanded description of the property being edited. The size of this area can be adjusted by dragging the splitter bar located just above it.

- The Editor window can be moved and re-sized via the normal Windows operations.

- Depending on the property, the value field can be one of the following:

<!-- -->

- a text box in which you enter a value

- a dropdown combo box from which you select a value from a list of choices

- a dropdown combo box in which you can enter a value or select from a list of choices

- an ellipsis button which you click to bring up a specialized editor.

<!-- -->

- The field in the Editor that currently has the focus will have a focus rectangle drawn around it.

- Both the mouse and the Up and Down arrow keys on the keyboard can be used to move between property fields.

- The Page Up key can be used to select the previous object of the same type (as listed in the Project Browser) into the Editor, while the Page Down key will select the next object of the same type into the Editor.

- To begin editing the property with the focus, either begin typing a value or hit the Enter key.

- To have the program accept edits made in a property field, either press the Enter key or move to another property. To cancel the edits, press the Esc key.

- The Property Editor can be hidden by clicking the button in the upper right corner of its title bar.

**91**

**4.9 Setting Program Preferences**

Program preferences allow one to customize certain program features. To set program preferences, select Program Preferences from the Tools menu. A Preferences dialog form will appear containing two tabbed pages – one for General Preferences and one for Numerical Precision.

> Report Elapsed Time by Check to use elapsed time (rather than date/time) as the
>
> Default default for time series graphs and tables.
>
> Prompt to Save Results If left unchecked then simulation results are automatically saved to disk when the current project is closed. Otherwise the user will be asked if results should be saved.
>
> Clear File List Check to clear the list of most recently used files that appears when File \>\> Reopen is selected from the Main Menu
>
> Style Theme Selects a color theme to use for SWMM’s user interface (see below for some examples)
>
> <img src="./media/image77.jpg" style="width:6.10625in;height:2.91319in" />

The Numerical Precision page of the Preferences dialog controls the number of decimal places displayed when simulation results are reported. Use the dropdown list boxes to select a specific Subcatchment, Node or Link parameter, and then use the edit boxes next to them to select the number of decimal places to use when displaying computed results for the parameter. Note that the number of decimal places displayed for any particular input design parameter, such as slope, diameter, length, etc. is whatever the user enters.

**93**

> **CHAPTER 5 – WORKING WITH PROJECTS**
>
> *Project files contain all of the information used to model a study area. They are usually named with a .INP extension. This section describes how to create, open, and save EPA SWMM projects as well as setting their default properties.*
>
> **5.1 Creating a New Project**
>
> To create a new project:

1.  Select **File** \>\> **New** from the Main Menu or click on the Standard Toolbar.

2.  You will be prompted to save the existing project (if changes were made to it) before the new project is created.

3.  A new, unnamed project is created with all options set to their default values. A new project is automatically created whenever EPA SWMM first begins.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image78.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>If you are going to use a backdrop image with automatic area and length calculation, then it is recommended that you set the map dimensions immediately after creating the new project (see Section 7.2 Setting the Map's Dimensions).</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **5.2 Opening an Existing Project**
>
> To open an existing project stored on disk:

1.  Either select **File** \>\> **Open** from the Main Menu or click on the Standard Toolbar.

2.  You will be prompted to save the current project (if changes were made to it).

3.  Select the file to open from the Open File dialog form that will appear.

4.  Click **Open** to open the selected file.

> To open a project that was worked on recently:

1.  Select **File** \>\> **Reopen** from the Main Menu.

2.  Select a file from the list of recently used files to open.

> **5.3 Saving a Project**
>
> To save a project under its current name either select **File \>\> Save** from the Main Menu or click on the Standard Toolbar.
>
> To save a project using a different name:
>
> **94**

1.  Select **File** \>\> **Save As** from the Main Menu.

2.  A standard File Save dialog form will appear from which you can select the folder and name that the project should be saved under.

> **5.4 Setting Project Defaults**
>
> Each project has a set of default values that are used unless overridden by the SWMM user. These values fall into three categories:

1.  Default ID labels (labels used to identify nodes and links when they are first created)

2.  Default subcatchment properties (e.g., area, width, slope, etc.)

3.  Default node/link properties (e.g., node invert, conduit length, routing method).

> To set default values for a project:

1.  Select **Project** \>\> **Defaults** from the Main Menu.

2.  A Project Defaults dialog will appear with three pages, one for each category listed above.

> <img src="./media/image80.jpg" style="width:2.94653in;height:4.52292in" />

**95**

3.  Check the box in the lower left of the dialog form if you want to save your choices for use in all new future projects as well.

4.  Click OK to accept your choice of defaults.

> The specific items for each category of defaults will be discussed next.
>
> <u>Default ID Labels</u>
>
> The ID Labels page of the Project Defaults dialog form is used to determine how SWMM will assign default ID labels for the visual project components when they are first created. For each type of object you can enter a label prefix in the corresponding entry field or leave the field blank if an object's default name will simply be a number. In the last field you can enter an increment to be used when adding a numerical suffix to the default label. As an example, if C were used as a prefix for Conduits along with an increment of 5, then as conduits are created they receive default names of C5, C10, C15, and so on. An object’s default name can be changed by using the Property Editor for visual objects or the object-specific editor for non-visual objects.
>
> <u>Default Subcatchment Properties</u>
>
> The Subcatchment page of the Project Defaults dialog sets default property values for newly created subcatchments. These properties include:

- Subcatchment Area

- Characteristic Width

- Slope

- % Impervious

- Impervious Area Roughness

- Pervious Area Roughness

- Impervious Area Depression Storage

- Pervious Area Depression Storage

- % of Impervious Area with No Depression Storage

- Infiltration Method

> The default properties of a subcatchment can be modified later by using the Property Editor.
>
> <u>Default Node/Link Properties</u>
>
> The Nodes/Links page of the Project Defaults dialog sets default property values for newly created nodes and links. These properties include:

- Node Invert Elevation

- Node Maximum Depth

> **96**

- Node Ponded Area

- Conduit Length

- Conduit Shape and Size

- Conduit Roughness

- Flow Units

- Link Offsets Convention

- Routing Method

- Force Main Equation

> The defaults automatically assigned to individual objects can be changed by using the object’s Property Editor. The choice of Flow Units and Link Offsets Convention can be changed directly on the main window’s Status Bar.
>
> **5.5 Measurement Units**
>
> SWMM can use either US units or SI metric units. The choice of flow units determines what unit system is used for all other quantities:

- selecting CFS (cubic feet per second), GPM (gallons per minutes), or MGD (million gallons per day) for flow units implies that US units will be used throughout

- selecting CMS (cubic meters per second), LPS (liters per second), or MLD (million liters per day) as flow units implies that SI units will be used throughout.

> Flow units can be selected directly on the main window's Status Bar or by setting a project's default values. In the latter case the selection can be saved so that all new future projects will automatically use those units.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image81.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>The units of previously entered data are not automatically adjusted if the unit system is changed.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **5.6 Link Offset Conventions**
>
> Conduits and flow regulators (orifices, weirs, and outlets) can be offset some distance above the invert of their connecting end nodes as depicted below:

**97**

> <img src="./media/image82.png" style="width:2.16319in;height:2.15694in" />
>
> There are two different conventions available for specifying the location of these offsets. The
>
> Depth convention uses the offset distance from the node's invert (distance between D and ©‚ in the figure above). The Elevation convention uses the absolute elevation of the offset location (the
>
> elevation of point D in the figure). The choice of convention can be made on the Status Bar of SWMM's main window or on the Node/Link Properties page of the Project Defaults dialog. When this convention is changed, a dialog will appear giving one the option to automatically re-calculate all existing link offsets in the current project using the newly selected convention
>
> **5.7 Calibration Data**
>
> SWMM can compare the results of a simulation with measured field data in its Time Series Plots, which are discussed in section 9.4. Before SWMM can use such calibration data they must be entered into a specially formatted text file and registered with the project.
>
> <u>Calibration Files</u>
>
> Calibration Files contain measurements of a single parameter at one or more locations that can be compared with simulated values in Time Series Plots. Separate files can be used for each of the following parameters:

- Subcatchment Runoff

- Subcatchment Pollutant Washoff

- Groundwater Flow

- Groundwater Elevation

- Snow Pack Depth

- Node Depth

- Node Lateral Inflow

- Node Flooding

- Node Water Quality

> **98**

- Link Flow Rate

- Link Flow Depth

- Link Flow Velocity

> The format of the file is described in Section 11.5.
>
> <u>Registering Calibration Data</u>
>
> To register calibration data residing in a Calibration File:

1.  Select **Project** \>\> **Calibration Data** from the Main Menu.

2.  In the Calibration Data dialog form shown below, click in the box next to the parameter (e.g., node depth, link flow, etc.) whose calibration data will be registered.

3.  Either type in the name of a Calibration File for this parameter or click the **Browse** button to search for it.

4.  Click the **Edit** button if you want to open the Calibration File in Windows NotePad for editing.

5.  Repeat steps 2 - 4 for any other parameters that have calibration data.

6.  Click **OK** to accept your selections.

> <img src="./media/image83.jpg" style="width:6.48958in;height:4.52014in" />

**99**

> **5.8 Viewing All Project Data**
>
> A listing of all project data (with the exception of map coordinates) can be viewed in a non-editable window, formatted for input to SWMM's computational engine (see below). This can be useful for checking data consistency and to make sure that no key components are missing. To view such a listing select **Project** \>\> **Details** from the Main Menu. The format of the data in this listing is the same as that used when the file is saved to disk. It is described in detail in Appendix D.2.
>
> <img src="./media/image84.jpg" style="width:5.80625in;height:3.32014in" />

**100**

> **CHAPTER 6 – WORKING WITH OBJECTS**
>
> *SWMM uses various types of objects to model a drainage area and its conveyance system. This section describes how these objects can be created, selected, edited, deleted, and repositioned.*
>
> **6.1 Types of Objects**
>
> SWMM contains both physical objects that can appear on its Study Area Map, and non-physical objects that encompass design, loading, and operational information. These objects, which are listed in the Project Browser and were described in Chapter 3, consist of the following:
>
> Project Title/Notes Nodes
>
> Simulation Options Links
>
> Climatology Transects
>
> Rain Gages Control Rules
>
> Subcatchments Pollutants
>
> Aquifers Land Uses
>
> Snow Packs Curves
>
> Unit Hydrographs Time Series
>
> LID Controls Time Patterns
>
> Map Labels
>
> **6.2 Adding Objects**
>
> To add a new object to a project, select the type of object from the upper pane of the Project Browser and either select **Project \>\> Add a New ...** from the Main Menu or click the Browser's
>
> button. If the object has a button on the Object Toolbar you can simply click the toolbar button instead.
>
> If the object is a visual object that appears on the Study Area Map (a Rain Gage, Subcatchment, Node, Link, or Map Label) it will automatically receive a default ID name and a prompt will appear in the Status Bar telling you how to proceed. The steps used to draw each of these objects on the map are detailed below:
>
> <u>Rain Gages</u>
>
> Move the mouse to the desired location on the Map and left-click.
>
> <u>Subcatchments</u>
>
> Use the mouse to draw a polygon outline of the subcatchment on the Map:

- left-click at each vertex

- right-click or press \<**Enter**\> to close the polygon

> **101**

- press the \<**Esc**\> key if you wish to cancel the action.

> <u>Nodes (Junctions, Outfalls, Flow Dividers, and Storage Units)</u>
>
> Move the mouse to the desired location on the Study Area Map and left-click.
>
> <u>Links (Conduits, Pumps, Orifices, Weirs, and Outlets)</u>

- Left-click the mouse on the link's inlet (upstream) node.

- Move the mouse (without pressing any button) in the direction of the link's outlet (downstream) node, clicking at all intermediate points necessary to define the link's alignment.

- Left-click the mouse a final time over the link's outlet (downstream) node. (Pressing the right mouse button or the \<**Esc**\> key while drawing a link will cancel the operation.)

> <u>Map Labels</u>

- Left-click the mouse on the map location where the top left corner of the label should appear.

- Enter the text for the label.

- Press \<**Enter**\> to accept the label or \<**Esc**\> to cancel.

> For all other non-visual types of objects, an object-specific dialog form will appear that allows you to name the object and edit its properties.
>
> **6.3 Selecting and Moving Objects  
> **To select an object on the map:

1.  Make sure that the map is in Selection mode (the mouse cursor has the shape of an arrow pointing up to the left). To switch to this mode, either click the Select Object button on the Map Toolbar or choose **Edit** \>\> **Select Object** from the Main Menu.

2.  Click the mouse over the desired object on the map.

> To select an object using the Project Browser:

1.  Select the object’s category from the upper list in the Browser.

2.  Select the object from the lower list in the Browser.

> Rain gages, subcatchments, nodes, and map labels can be moved to another location on the Study Area Map. To move an object to another location:

1.  Select the object on the map.

2.  With the left mouse button held down over the object, drag it to its new location.

3.  Release the mouse button.

> The following alternative method can also be used:

**102**

1.  Select the object to be moved from the Project Browser (it must either be a rain gage, subcatchment, node, or map label).

2.  With the left mouse button held down, drag the item from the Items list box of the Data Browser to its new location on the map.

3.  Release the mouse button.

> Note that the second method can be used to place objects on the map that were imported from a project file that had no coordinate information included in it.
>
> **6.4 Editing Objects**
>
> To edit an object appearing on the Study Area Map:

1.  Select the object on the map.

2.  If the Property Editor is not visible either:

- double click on the object

- or right-click on the object and select Properties from the pop-up menu that appears

- or click on in the Project Browser

- or select **Edit \>\> Edit Object** from the Main Menu.

> **3.** Edit the object’s properties in the Property Editor.
>
> Appendix B lists the properties associated with each of SWMM’s visual objects.
>
> To edit an object listed in the Project Browser:

1.  Select the object in the Project Browser.

2.  Either:

- click on in the Project Browser,

- or select **Edit \>\> Edit Object** from the Main Menu,

- or double-click the item in the Objects list,

- or press the \<**Enter**\> key.

> Depending on the class of object selected, a special property editor will appear in which the object’s properties can be modified. Appendix C describes all of the special property editors used with SWMM’s non-visual objects.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image87.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>The unit system in which object properties are expressed depends on the choice of units for flow rate. Using a flow rate expressed in cubic feet, gallons or acre-feet implies that US units will be used for all quantities. Using a flow rate expressed in liters or cubic meters means that SI metric units will be used. Flow units are selected either from the project’s default Node/Link properties (see Section5.4) or directly from the main window’s Status Bar (see Section 4.4). The units used for all properties are listed in Appendix A.1.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**103**

> **6.5 Converting an Object**
>
> It is possible to convert a node or link from one type to another without having to first delete the object and add a new one in its place. An example would be converting a Junction node into an Outfall node, or converting an Orifice link into a Weir link. To convert a node or link to another type:

1.  Right-click the object on the map.

2.  Select **Convert To** from the popup menu that appears.

3.  Select the new type of node or link to convert to from the sub-menu that appears.

4.  Edit the object to provide any data that was not included with the previous type of object.

> Only data that is common to both types of objects will be preserved after an object is converted to a different type. For nodes this includes its name, position, description, tag, external inflows, treatment functions, and invert elevation. For links it includes just its name, end nodes, description, and tag.
>
> **6.6 Copying and Pasting Objects**
>
> The properties of an object displayed on the Study Area Map can be copied and pasted into another object from the same category.
>
> To copy the properties of an object to SWMM's internal clipboard:

1.  Right-click the object on the map.

2.  Select **Copy** from the pop-up menu that appears.

> To paste copied properties into an object:

1.  Right-click the object on the map.

2.  Select **Paste** from the pop-up menu that appears.

> Only data that can be shared between objects of the same type can be copied and pasted. Properties not copied include the object's name, coordinates, end nodes (for links), tag property and any descriptive comment associated with the object. For Map Labels, only font properties are copied and pasted.
>
> **6.7 Shaping and Reversing Links**
>
> Links can be drawn as polylines containing any number of straight-line segments that define the alignment or curvature of the link. Once a link has been drawn on the map, interior points that define these line segments can be added, deleted, and moved. To edit the interior points of a link:
>
> **1.** Select the link to edit on the map and put the map in Vertex Selection mode either by
>
> clicking on the Map Toolbar, selecting **Edit** \>\> **Select Vertex** from the Main Menu, or right clicking on the link and selecting **Vertices** from the popup menu.

**104**

2.  The mouse pointer will change shape to an arrow tip, and any existing vertex points on the link will be displayed as small open squares. The currently selected vertex will be displayed as a filled square. To select a particular vertex, click the mouse over it.

3.  To add a new vertex to the link, right-click the mouse and select **Add Vertex** from the popup menu (or simply press the \<**Insert**\> key on the keyboard).

4.  To delete the currently selected vertex, right-click the mouse and select **Delete Vertex** from the popup menu (or simply press the \<**Delete**\> key on the keyboard).

5.  To move a vertex to another location, drag it to its new position with the left mouse button held down.

> While in Vertex Selection mode you can begin editing the vertices for another link by simply clicking on the link. To leave Vertex Selection mode, right-click on the map and select **Quit Editing** from the popup menu, or simply select one of the other buttons on the Map Toolbar.
>
> A link can also have its direction reversed (i.e., its end nodes switched) by right clicking on it and selecting **Reverse** from the pop-up menu that appears. Normally, links should be oriented so that the upstream end is at a higher elevation than the downstream end.
>
> **6.8 Shaping a Subcatchment**
>
> Subcatchments are drawn on the Study Area Map as closed polygons. To edit or add vertices to the polygon, follow the same procedures used for links. If the subcatchment is originally drawn or is edited to have two or less vertices, then only its centroid symbol will be displayed on the Study Area Map.
>
> **6.9 Deleting an Object**
>
> To delete an object:

1.  Select the object on the map or from the Project Browser.

2.  Either click the button on the Project Browser or press the \<**Delete**\> key on the keyboard, or select **Edit \>\> Delete Object** from the Main Menu, or right-click the object on the map and select **Delete** from the pop-up menu that appears.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image88.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>You can require that all deletions be confirmed before they take effect. See the General Preferences page of the Program Preferences dialog box described in Section 4.9.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **6.10 Editing or Deleting a Group of Objects**
>
> A group of objects located within an irregular region of the Study Area Map can have a common property edited or be deleted all together. To select such a group of objects:
>
> **1.** Choose **Edit** \>\> **Select Region** from the Main Menu or click on the Map Toolbar.

**105**

2.  Draw a polygon around the region of interest on the map by clicking the left mouse button at each successive vertex of the polygon.

3.  Close the polygon by clicking the right button or by pressing the \<**Enter**\> key; cancel the selection by pressing the \<**Esc**\> key.

> To select all objects in the project, whether in view or not, select **Edit** \>\> **Select All** from the Main Menu.
>
> Once a group of objects has been selected, you can edit a common property shared among them:

1.  Select **Edit** \>\> **Group Edit** from the Main Menu.

2.  Use the Group Editor dialog that appears to select a property and specify its new value.

> The Group Editor dialog, shown below, is used to modify a property for a selected group of objects. To use the dialog:
>
> <img src="./media/image89.jpg" style="width:3.40625in;height:2.78681in" />

1.  Select a type of object (Subcatchments, Infiltration, Junctions, Storage Units, or Conduits) to edit.

2.  Check the "with Tag equal to" box if you want to add a filter that will limit the objects selected for editing to those with a specific Tag value. (For Infiltration, the Tag will be that of the subcatchment to which the infiltration parameters belong.)

3.  Enter a Tag value to filter on if you have selected that option.

4.  Select the property to edit.

5.  Select whether to replace, multiply, or add to the existing value of the property. Note that for some non-numerical properties the only available choice is to replace the value.

6.  In the lower-right edit box, enter the value that should replace, multiply, or be added to the existing value for all selected objects. Some properties will have an ellipsis button

**106**

> displayed in the edit box which should be clicked to bring up a specialized editor for the property.
>
> **7.** Click **OK** to execute the group edit.
>
> After the group edit is executed a confirmation dialog box will appear informing you of how many items were modified. It will ask if you wish to continue editing or not. Select **Yes** to return to the Group Edit dialog box to edit another parameter or **No** to dismiss the Group Edit dialog.
>
> To delete the objects located within a selected area of the map, select **Edit** \>\> **Group Delete** from the Main Menu. Then select the categories of objects you wish to delete from the dialog box that appears. As an option, you can specify that only objects within the selected area that have a specific Tag property should be deleted. Keep in mind that deleting a node will also delete any links connected to the node.

**107**

> **CHAPTER 7 – WORKING WITH THE MAP**
>
> *EPA SWMM can display a map of the study area being modeled. This section describes how you can manipulate this map to enhance your visualization of the system.*
>
> **7.1 Selecting a Map Theme**
>
> A map theme displays object properties in color-coded fashion on the Study Area Map. The dropdown list boxes on the Map Browser are used for selecting a theme to display for Subcatchments, Nodes and Links.
>
> <img src="./media/image90.jpg" style="width:4.44653in;height:3.55347in" />
>
> Methods for changing the color-coding associated with a theme are discussed in Section 7.10 below.
>
> **7.2 Setting the Map’s Dimensions**
>
> The physical dimensions of the map can be defined so that map coordinates can be properly scaled to the computer’s video display. To set the map's dimensions:

1.  Select **View** \>\> **Dimensions** from the Main Menu.

2.  Enter coordinates for the lower-left and upper-right corners of the map into the Map Dimensions dialog (see below) that appears or click the Auto-Size button to automatically set the dimensions based on the coordinates of the objects currently included in the map.

> **108**
>
> <img src="./media/image91.jpg" style="width:4.33333in;height:3.04028in" />

3.  Select the distance units to use for these coordinates.

4.  If the **Auto-Length** option is in effect, check the “Re-compute all lengths and areas” box if you would like SWMM to re-calculate all conduit lengths and subcatchment areas under the new set of map dimensions.

5.  Click the **OK** button to resize the map.

If you are going to use a backdrop image with the automatic distance and area calculation feature, then it is recommended that you set the map dimensions immediately after creating a new project. Map distance units can be different from conduit length units. The latter (feet or meters) depend on whether flow rates are expressed in US or metric units. SWMM will automatically convert units if necessary.

If you just want to re-compute conduit lengths and subcatchment areas without changing the map's dimensions, then just check the Re-compute Lengths and Areas box and leave the coordinate boxes as they are.

**7.3 Utilizing a Backdrop Image**

SWMM can display a backdrop image behind the Study Area Map. The backdrop image might be a street map, utility map, topographic map, site development plan, or any other relevant picture or drawing. For example, using a street map would simplify the process of adding sewer lines to the project since one could essentially digitize the drainage system's nodes and links directly on top of it.

**109**

> <img src="./media/image94.jpg" style="width:4.55972in;height:4.67986in" />
>
> The backdrop image must be a Windows metafile, bitmap, or JPEG image created outside of SWMM. Once imported, its features cannot be edited, although its scale and viewing area will change as the map window is zoomed and panned. For this reason metafiles work better than bitmaps or JPEGs since they will not lose resolution when re-scaled. Most CAD and GIS programs have the ability to save their drawings and maps as metafiles.
>
> Selecting **View** \>\> **Backdrop** from the Main Menu will display a sub-menu with the following commands:

- **Load** (loads a backdrop image file into the project)

- **Unload** (unloads the backdrop image from the project)

- **Align** (aligns the drainage system schematic with the backdrop)

- **Resize** (resizes the map dimensions of the backdrop)

- **Watermark** (toggles the backdrop image appearance between normal and lightened)

> To load a backdrop image select **View** \>\> **Backdrop** \>\> **Load** from the Main Menu. A Backdrop Image Selector dialog form will be displayed. The entries on this form are as follows:
>
> **110**
>
> <img src="./media/image95.jpg" style="width:3.06319in;height:2.47014in" />
>
> <u>Backdrop Image File</u>
>
> Enter the name of the file that contains the image. You can click the button to bring up a
>
> standard Windows file selection dialog from which you can search for the image file.
>
> <u>World Coordinates File</u>
>
> If a “world” file exists for the image, enter its name here, or click the button to search for it. A
>
> world file contains geo-referencing information for the image and can be created from the software that produced the image file or by using a text editor. It contains six lines with the following information:
>
> Line 1: real world width of a pixel in the horizontal direction.
>
> Line 2: X rotation parameter (not used).
>
> Line 3: Y rotation parameter (not used).
>
> Line 4: negative of the real world height of a pixel in the vertical direction.
>
> Line 5: real world X coordinate of the upper left corner of the image.
>
> Line 6: real world Y coordinate of the upper left corner of the image.
>
> If no world file is specified, then the backdrop will be scaled to fit into the center of the map display window.
>
> <u>Scale Map to Backdrop Image</u>
>
> This option is only available when a world file has been specified. Selecting it forces the dimensions of the Study Area Map to coincide with those of the backdrop image. In addition, all existing objects on the map will have their coordinates adjusted so that they appear within the new map dimensions yet maintain their relative positions to one another. Selecting this option may then require that the backdrop be re-aligned so that its position relative to the drainage area objects is correct. How to do this is described below.

**111**

> The backdrop image can be re-positioned relative to the drainage system by selecting **View** \>\> **Backdrop** \>\> **Align**. This allows the backdrop image to be moved across the drainage system (by moving the mouse with the left button held down) until one decides that it lines up properly.
>
> The backdrop image can also be resized by selecting **View** \>\> **Backdrop** \>\> **Resize**. In this case the following Backdrop Dimensions dialog will appear.
>
> <img src="./media/image98.jpg" style="width:3.65625in;height:4.21667in" />
>
> The dialog lets you manually enter the X,Y coordinates of the backdrop’s lower left and upper right corners. The Study Area Map’s dimensions are also displayed for reference. While the dialog is visible you can view map coordinates by moving the mouse over the map window and noting the X,Y values displayed in SWMM’s Status Panel (at the bottom of the main window).
>
> Selecting the **Resize Backdrop Image Only** button will resize only the backdrop, and not the Study Area Map, according to the coordinates specified. Selecting the **Scale Backdrop Image to Map** button will position the backdrop image in the center of the Study Area Map and have it resized to fill the display window without changing its aspect ratio. The map's lower left and upper right coordinates will be placed in the data entry fields for the backdrop coordinates, and these fields will become disabled. Selecting **Scale Map to Backdrop Image** makes the dimensions of the map coincide with the dimensions being set for the backdrop image. Note that this option will change the coordinates of all objects currently on the map so that their positions relative to one another remain unchanged. Selecting this option may then require that the backdrop be re­aligned so that its position relative to the drainage area objects is correct.
>
> **112**

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image99.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>Exercise caution when selecting the <strong>Scale Map to Backdrop Image</strong> option in either the Backdrop Image Selector dialog or the Backdrop Dimensions dialog as it will modify the coordinates of all existing objects currently on the Study Area Map. You might want to save your project before carrying out this step in case the results are not what you expected.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The name of the backdrop image file and its map dimensions are saved along with the rest of a project’s data whenever the project is saved to file.
>
> For best results in using a backdrop image:

- Use a metafile, not a bitmap.

- If the image is loaded before any objects are added to the project then scale the map to it.

> **7.4 Measuring Distances**
>
> To measure a distance or area on the Study Area Map:

1.  Click on the Map Toolbar.

2.  Left-click on the map where you wish to begin measuring from.

3.  Move the mouse over the distance being measured, left-clicking at each intermediate location where the measured path changes direction.

4.  Right-click the mouse or press \<**Enter**\> to complete the measurement.

5.  The distance measured in project units (feet or meters) will be displayed in a dialog box. If the last point on the measured path coincides with the first point then the area of the enclosed polygon will also be displayed.

> **7.5 Zooming the Map**
>
> To Zoom In on the Study Area Map:

1.  Select **View** \>\> **Zoom In** from the Main Menu or click on the Map Toolbar.

2.  To zoom in 100% (i.e., 2X), move the mouse to the center of the zoom area and click the left button.

3.  To perform a custom zoom, move the mouse to the upper left corner of the zoom area and with the left button pressed down, draw a rectangular outline around the zoom area. Then release the left button.

**113**

> To Zoom Out on the Study Area Map:

1.  Select **View** \>\> **Zoom Out** from the Main Menu or click on the Map Toolbar.

2.  The map will be returned to the view in effect at the previous zoom level.

> **7.6 Panning the Map**
>
> To pan across the Study Area Map window:

1.  Select **View** \>\> **Pan** from the Main Menu or click on the Map Toolbar.

2.  With the left button held down over any point on the map, drag the mouse in the direction you wish to pan in.

3.  Release the mouse button to complete the pan.

> To pan using the Overview Map (which is described in Section 7.11 below):
>
> **1.** If not already visible, bring up the Overview Map by selecting **View** \>\> **Overview Map**
>
> from the Main Menu or click the button on the Standard Toolbar.

2.  If the Study Area Map has been zoomed in, an outline of the current viewing area will appear on the Overview Map. Position the mouse within this outline on the Overview Map.

3.  With the left button held down, drag the outline to a new position.

4.  Release the mouse button and the Study Area Map will be panned to an area corresponding to the outline on the Overview Map.

> **7.7 Viewing at Full Extent**
>
> To view the Study Area Map at full extent, either:

- select **View** \>\> **Full Extent** from the Main Menu, or

- press on the Map Toolbar.

> **7.8 Finding an Object**
>
> To find an object on the Study Area Map whose name is known:

1.  Select **View \>\> Find Object** from the Main Menu or click on the Standard Toolbar.

2.  In the Map Finder dialog that appears, select the type of object to find and enter its name.

3.  Click the **Go** button.

**114**

> <img src="./media/image101.jpg" style="width:2.10625in;height:1.97986in" />
>
> If the object exists, it will be highlighted on the map and in the Data Browser. If the map is currently zoomed in and the object falls outside the current map boundaries, the map will be panned so that the object comes into view.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image102.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned object names in SWMM are not case sensitive. E.g., <em>NODE123</em> is equivalent to <em>Node123</em>.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> After an object is found, the Map Finder dialog will also list:

- the outlet connections for a subcatchment

- the connecting links for a node

- the connecting nodes for a link.

> **7.9 Submitting a Map Query**
>
> A Map Query identifies objects on the study area map that meet a specific criterion (e.g., nodes which flood, links with velocity below 2 ft/sec, etc.). It can also identify which subcatchments have LID controls and which nodes have external inflows. To submit a map query:

1.  Select a time period in which to query the map from the Map Browser.

2.  Select **View** \>\> **Query** or click on the Standard Toolbar.

3.  Fill in the following information in the Query dialog that appears:

- Select whether to search for Subcatchments, Nodes, Links, LID Subcatchments or Inflow Nodes.

- Select a parameter to query or the type of LID or inflow to locate.

- Select the appropriate operator: Above, Below, or Equals.

- Enter a value to compare against.

4.  Click the **Go** button. The number of objects that meet the criterion will be displayed in the Query dialog and each such object will be highlighted on the Study Area Map.

5.  As a new time period is selected in the Browser, the query results are automatically updated.

**115**

> **6.** You can submit another query using the dialog box or close it by clicking the button in the upper right corner.
>
> After the Query box is closed the map will revert back to its original display.
>
> **7.10 Using the Map Legends**

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image104.jpg" style="width:1.05972in;height:1.34028in" /></p>
</blockquote></td>
<td><blockquote>
<p>Map Legends associate a color with a range of values for the current theme being viewed. Separate legends exist for Subcatchments, Nodes, and Links. A Date/Time Legend is also available for displaying the date and clock time of the simulation period being viewed on the map.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **116**
>
> To display or hide a map legend:

1.  Select **View** \>\> **Legends** from the Main Menu or right-click on the map and select Legends from the pop-up menu that appears

2.  Click on the type of legend whose display should be toggled on or off. A visible legend can also be hidden by double clicking on it.

> To move a legend to another location press the left mouse button over the legend, drag the legend to its new location with the button held down, and then release the button.
>
> To edit a legend, either select **View** \>\> **Legends** \>\> **Modify** from the Main Menu or right-click on the legend if it is visible. Then use the Legend Editor dialog that appears to modify the legend's colors and intervals.
>
> <img src="./media/image105.jpg" style="width:3.58333in;height:2.36389in" />
>
> The Legend Editor is used to set numerical ranges to which different colors are assigned for viewing a particular parameter on the network map. It works as follows:

- Numerical values, in increasing order, are entered in the edit boxes to define the ranges. Not all four boxes need to have values.

- To change a color, click on its color band in the Editor and then select a new color from the Color Dialog that will appear.

- Click the **Auto-Scale** button to automatically assign ranges based on the minimum and maximum values attained by the parameter in question at the current time period.

- The **Color Ramp** button is used to select from a list of built-in color schemes.

- The **Reverse Colors** button reverses the ordering of the current set of colors (the color in the lowest range becomes that of the highest range and so on).

- Check **Framed** if you want a frame drawn around the legend.

> Changes made to a legend are saved with the project's settings and remain in effect when the project is re-opened in a subsequent session.

**117**

> **7.11 Using the Overview Map**
>
> The Overview Map, as pictured below, allows one to see where in terms of the overall system the main Study Area Map is currently focused. This zoom area is depicted by the rectangular outline displayed on the Overview Map. As you drag this rectangle to another position the view within the main map will be redrawn accordingly. The Overview Map can be toggled on and off by selecting
>
> **View** \>\> **Overview Map** from the Main Menu or by clicking on the Standard Toolbar. The
>
> Overview Map window can also be dragged to any position as well as be re-sized.
>
> <img src="./media/image106.jpg" style="width:4.66667in;height:4.24028in" />
>
> **7.12 Setting Map Display Options**
>
> The Map Options dialog (shown below) is used to change the appearance of the Study Area Map. There are several ways to invoke it:

- select **Tools** \>\> **Map Display Options** from the Main Menu or,

- click the **Options** button on the Standard Toolbar when the Study Area Map window  
  > has the focus or,

- right-click on any empty portion of the map and select **Options** from the popup menu that appears.

**118**

> <img src="./media/image107.jpg" style="width:3.48958in;height:3.84306in" />
>
> The dialog contains a separate page, selected from the panel on the left side of the form, for each of the following display option categories:

- Subcatchments (controls fill style, symbol size, and outline thickness of subcatchment areas)

- Nodes (controls size of nodes and making size be proportional to value)

- Links (controls thickness of links and making thickness be proportional to value)

- Labels (turns display of map labels on/off)

- Annotation (displays or hides node/link ID labels and parameter values)

- Symbols (turns display of storage unit, pump, and regulator symbols on/off)

- Flow Arrows (selects visibility and style of flow direction arrows)

- Background (changes color of map's background).

> <u>Subcatchment Options</u>
>
> The Subcatchments page of the Map Options dialog controls how subcatchment areas are displayed on the study area map.

**119**

> *Option Description*
>
> Fill Style Selects style used to fill interior of subcatchment area
>
> Symbol Size Sets the size of the symbol (in pixels) placed at the centroid of a subcatchment area
>
> Border Size Sets the thickness of the line used to draw a subcatchment's border; if set to zero then only the subcatchment centroid will be displayed
>
> Display Link to If checked then a dashed line is drawn between the subcatchment
>
> Outlet centroid and the subcatchment's outlet node (or outlet subcatchment)
>
> <u>Node Options</u>
>
> The Nodes page of the Map Options dialog controls how nodes are displayed on the study area map.
>
> *Option Description*
>
> Node Size Selects node diameter in pixels
>
> Proportional to Select if node size should increase as the viewed parameter
>
> Value increases in value
>
> Display Border Select if a border should be drawn around each node
>
> (recommended for light-colored backgrounds)
>
> <u>Link Options</u>
>
> The Links page of the Map Options dialog controls how links are displayed on the map.
>
> *Option Description*
>
> Link Size Sets thickness of links displayed on map (in pixels)
>
> Proportional to Select if link thickness should increase as the viewed parameter
>
> Value increases in value
>
> Display Border Check if a black border should be drawn around each link
>
> <u>Label Options</u>
>
> The Labels page of the Map Options dialog controls how user-created map labels are displayed on the study area map.
>
> **120**
>
> *Option Description*
>
> Use Transparent Check to display label with a transparent background (otherwise
>
> Text an opaque background is used)
>
> At Zoom Of Selects minimum zoom at which labels should be displayed; labels will be hidden at zooms smaller than this
>
> <u>Annotation Options</u>
>
> The Annotation page of the Map Options dialog form determines what kind of annotation is provided alongside of the objects on the study area map.
>
> *Option Description*
>
> Rain Gage IDs Check to display rain gage ID names
>
> Subcatch IDs Check to display subcatchment ID names
>
> Node IDs Check to display node ID names
>
> Link IDs Check to display link ID names
>
> Subcatch Values Check to display value of current subcatchment variable
>
> Node Values Check to display value of current node variable
>
> Link Values Check to display value of current link variable
>
> Use Transparent Text Check to display text with a transparent background (otherwise an opaque background is used)
>
> Font Size Adjusts the size of the font used to display annotation
>
> At Zoom Of Selects minimum zoom at which annotation should be displayed; all annotation will be hidden at zooms smaller than this
>
> <u>Symbol Options</u>
>
> The Symbols page of the Map Options dialog determines which types of objects are represented with special symbols on the map.
>
> *Option Description*
>
> Display Node Symbols If checked then special node symbols will be used
>
> Display Link Symbols If checked then special link symbols will be used
>
> At Zoom Of Selects minimum zoom at which symbols should be displayed; symbols will be hidden at zooms smaller than this
>
> **121**
>
> <u>Flow Arrow Options</u>
>
> The Flow Arrows page of the Map Options dialog controls how flow-direction arrows are displayed on the map.
>
> *Option Description*
>
> Arrow Style Selects style (shape) of arrow to display (select None to hide arrows)
>
> Arrow Size Sets arrow size
>
> At Zoom Of Selects minimum zoom at which arrows should be displayed; arrows will be hidden at zooms smaller than this

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image108.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>Flow direction arrows will only be displayed after a successful simulation has been made and a computed parameter has been selected for viewing. Otherwise the direction arrow will point from the user-designated start node to end node.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> <u>Background Options</u>
>
> The Background page of the Map Options dialog offers a selection of colors used to paint the map’s background with.
>
> **7.13 Exporting the Map**
>
> The full extent view of the study area map can be saved to file using either:

- Autodesk's DXF (Drawing Exchange Format) format,

- the Windows enhanced metafile (EMF) format,

- EPA SWMM's own ASCII text (.map) format.

> The DXF format is readable by many Computer Aided Design (CAD) programs. Metafiles can be inserted into word processing documents and loaded into drawing programs for re-scaling and editing. Both formats are vector-based and will not lose resolution when they are displayed at different scales.
>
> To export the map to a DXF, metafile, or text file:

1.  Select **File** \>\> **Export** \>\> **Map**.

2.  In the Map Export dialog that appears select the format that you want the map saved in.

**122**

> <img src="./media/image109.jpg" style="width:3.59306in;height:3.05in" />
>
> If you select DXF format, you have a choice of how nodes will be represented in the DXF file. They can be drawn as filled circles, as open circles, or as filled squares. Not all DXF readers can recognize the format used in the DXF file to draw a filled circle. Also note that map annotation, such as node and link ID labels will not be exported, but map label objects will be.
>
> After choosing a format, click **OK** and enter a name for the file in the Save As dialog that appears.

**123**

> **CHAPTER 8 – RUNNING A SIMULATION**
>
> *After a study area has been suitably described, its runoff response, flow routing and water quality behavior can be simulated. This section describes how to specify options to be used in the analysis, how to run the simulation and how to troubleshoot common problems that might occur.*
>
> **8.1 Setting Simulation Options**
>
> SWMM has a number of options that control how the simulation of a stormwater drainage system is carried out. To set these options:
>
> **1.** Select the Options category from the Project Browser.
>
> **2.** Select one of the following categories of options to edit:

1.  General Options

2.  Date Options

3.  Time Step Options

4.  Dynamic Wave Routing Options

5.  Interface File Options

6.  Reporting Options

> **3.** Click the button on the Browser panel or select **Edit \>\> Edit Object** to invoke the appropriate editor for the chosen option category (the Simulation Options dialog is used for the first five categories while the Reporting Options dialog is used for the last one).
>
> The Simulations Options dialog contains a separate tabbed page for each of the first five option categories listed above. Each page is described in more detail below.
>
> 8.1.1 General Options
>
> The General page of the Simulation Options dialog sets values for the following options: **<u>Process Models</u>**
>
> This section allows you to select which of SWMM’s process models will be applied to the current project. For example, a model that contained Aquifer and Groundwater elements could be run first with the groundwater computations turned on and then again with them turned off to see what effect this process had on the site’s hydrology. Note that if there are no elements in the project needed to model a given process then that process option is disabled (e.g., if there were no Aquifers defined for the project then the Groundwater check box will appear disabled in an unchecked state).
>
> **124**
>
> <img src="./media/image110.jpg" style="width:4.46667in;height:5.12639in" />
>
> **<u>Infiltration Model</u>**
>
> This option controls how infiltration of rainfall into the upper soil zone of subcatchments is modeled. The choices are:

- Horton

- Modified Horton

- Green-Ampt

- Modified Green-Ampt

- Curve Number

> Each of these models is briefly described in section 3.4.2. Changing this option will require re­entering values for the infiltration parameters in each subcatchment, unless the change is between the two Horton options or the two Green-Ampt options.

**125**

> **<u>Routing Model</u>**
>
> This option determines which method is used to route flows through the conveyance system. The choices are:

- Steady Flow

- Kinematic Wave

- Dynamic Wave

> Review section 3.4.5 for a brief description of each of these alternatives. **<u>Allow Ponding</u>**
>
> Checking this option will allow excess water to collect atop nodes and be re-introduced into the system as conditions permit. In order for ponding to actually occur at a particular node, a non­zero value for its Ponded Area attribute must be used.
>
> **<u>Report Control Actions</u>**
>
> Check this option if you want the simulation’s Status Report to list all discrete control actions taken by the Control Rules associated with a project (continuous modulated control actions are not listed). This option should only be used for short-term simulation.
>
> **<u>Report Input Summary</u>**
>
> Check this option if you want the simulation's Status Report to list a summary of the project's input data.
>
> **<u>Minimum Conduit Slope</u>**
>
> The minimum value allowed for a conduit's slope (%). If blank or zero (the default) then no minimum is imposed (although SWMM uses a lower limit on elevation drop of 0.001 ft (0.00035 m) when computing a conduit slope).
>
> 8.1.2 Date Options
>
> The Dates page of the Simulation Options dialog determines the starting and ending dates/times of a simulation.
>
> **<u>Start Analysis On</u>**
>
> Enter the date (month/day/year) and time of day when the simulation begins. **<u>Start Reporting On</u>**
>
> Enter the date and time of day when reporting of simulation results is to begin. Using a date prior to the start date is the same as using the start date.
>
> **<u>End Analysis On</u>**
>
> Enter the date and time when the simulation is to end.

**126**

> **<u>Start Sweeping On</u>**
>
> Enter the day of the year (month/day) when street sweeping operations begin. The default is
>
> January 1.
>
> **<u>End Sweeping On</u>**
>
> Enter the day of the year (month/day) when street sweeping operations end. The default is December 31.
>
> **<u>Antecedent Dry Days</u>**
>
> Enter the number of days with no rainfall prior to the start of the simulation. This value is used to compute an initial buildup of pollutant load on the surface of subcatchments.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image111.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>If rainfall or climate data are read from external files, then the simulation dates should be set to coincide with the dates recorded in these files.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> 8.1.3 Time Step Options
>
> The Time Steps page of the Simulation Options dialog establishes the length of the time steps used for runoff computation, routing computation and results reporting. Time steps are specified in days and hours:minutes:seconds except for flow routing which is entered as decimal seconds.
>
> **<u>Reporting Time Step</u>**
>
> Enter the time interval for reporting of computed results. **<u>Runoff - Wet Weather Time Step</u>**
>
> Enter the time step length used to compute runoff from subcatchments during periods of rainfall, or when ponded water still remains on the surface, or when LID controls are still infiltrating or evaporating runoff.
>
> **<u>Runoff - Dry Weather Time Step</u>**
>
> Enter the time step length used for runoff computations (consisting essentially of pollutant buildup) during periods when there is no rainfall, no ponded water, and LID controls are dry. This must be greater or equal to the Wet Weather time step.
>
> **<u>Routing Time Step</u>**
>
> Enter the time step length in decimal seconds used for routing flows and water quality constituents through the conveyance system. Note that Dynamic Wave routing requires a much smaller time step than the other methods of flow routing.
>
> **<u>Steady Flow Periods</u>**
>
> This set of options tells SWMM how to identify and treat periods of time when system hydraulics is not changing. The system is considered to be in a steady flow period if:

**127**

- The percent difference between total system inflow and total system outflow is below the **System Flow Tolerance**,

- The percent differences between the current lateral inflow and that from the previous time step for all points in the conveyance system are below the **Lateral Flow Tolerance**.

> Checking the **Skip Steady Flow Periods** box will make SWMM keep using the most recently computed conveyance system flows (instead of computing a new flow solution) whenever the above criteria are met. Using this feature can help speed up simulation run times at the expense of reduced accuracy.
>
> 8.1.4 Dynamic Wave Options
>
> The Dynamic Wave page of the Simulation Options dialog sets several parameters that control how the dynamic wave flow routing computations are made. These parameters have no effect for the other flow routing methods.
>
> **<u>Inertial Terms</u>**
>
> Indicates how the inertial terms in the St. Venant momentum equation will be handled.

- **KEEP** maintains these terms at their full value under all conditions.

- **DAMPEN** reduces the terms as flow comes closer to being critical and ignores them when flow is supercritical.

- **IGNORE** drops the terms altogether from the momentum equation, producing what is essentially a Diffusion Wave solution.

> **<u>Define Supercritical Flow By</u>**
>
> Selects the basis used to determine when supercritical flow occurs in a conduit. The choices are:

- water surface slope only (i.e., water surface slope \> conduit slope)

- Froude number only (i.e., Froude number \> 1.0)

- both water surface slope and Froude number.

> The first two choices were used in earlier versions of SWMM while the third choice, which checks for either condition, is now the recommended one.
>
> **<u>Force Main Equation</u>**
>
> Selects which equation will be used to compute friction losses during pressurized flow for conduits that have been assigned a Circular Force Main cross-section. The choices are either the Hazen-Williams equation or the Darcy-Weisbach equation.
>
> **<u>Use Variable Time Steps</u>**
>
> Check the box if an internally computed variable time step should be used at each routing time period and select an adjustment (or safety) factor to apply to this time step. The variable time step is computed so as to satisfy the Courant condition within each conduit. A typical adjustment factor would be 75% to provide some margin of conservatism. The computed variable time step will not

**128**

> be less than the minimum variable step discussed below nor be greater than the fixed time step specified on the Time Steps page of the dialog.
>
> **<u>Minimum Variable Time Step</u>**
>
> This is the smallest time step allowed when variable time steps are used. The default value is 0.5 seconds. Smaller steps may be warranted, but they can lead to longer simulations runs without much improvement in solution quality.
>
> **<u>Time Step for Conduit Lengthening</u>**
>
> This is a time step, in seconds, used to artificially lengthen conduits so that they meet the Courant stability criterion under full-flow conditions (i.e., the travel time of a wave will not be smaller than the specified conduit lengthening time step). As this value is decreased, fewer conduits will require lengthening. A value of zero means that no conduits will be lengthened. The ratio of the artificial length to the original length for each conduit is listed in the Flow Classification table that appears in the simulation’s Summary Report (see Section 9.2).
>
> **<u>Minimum Nodal Surface Area</u>**
>
> This is a minimum surface area used at nodes when computing changes in water depth. If 0 is entered, then the default value of 12.566 ft<sup>2</sup> (1.167 m<sup>2</sup>) is used. This is the area of a 4-ft diameter manhole. The value entered should be in square feet for US units or square meters for SI units.
>
> **<u>Maximum Trials per Time Step</u>**
>
> This is the maximum number of trials that SWMM uses at each time step to reach convergence when updating hydraulic heads at the conveyance system’s nodes. The default value is 8.
>
> **<u>Head Convergence Tolerance</u>**
>
> When the difference in computed head at each node between successive trials is below this value the flow solution for the current time step is assumed to have converged. The default tolerance is 0.005 ft (0.0015 m).
>
> **<u>Number of Threads</u>**
>
> This selects the number of parallel computing threads to use on machines equipped with multi-core processors. The default is 1.
>
> Clicking the **Apply Defaults** label will set all the Dynamic Wave options to their default values.
>
> 8.1.5 File Options
>
> The Files page of the Simulation Options dialog is used to specify which interface files will be used or saved during the simulation. (Interface files are described in Chapter 11.) The page contains a list box with three buttons underneath it. The list box lists the currently selected files, while the buttons are used as follows:

**129**

> **Add** adds a new interface file specification to the list.
>
> **Edit** edits the properties of the currently selected interface file.
>
> **Delete** deletes the currently selected interface from the project (but not from your hard drive).
>
> <img src="./media/image112.jpg" style="width:3.04306in;height:0.24028in" />
>
> <img src="./media/image113.jpg" style="width:3.91667in;height:2.47708in" />
>
> When the **Add** or **Edit** buttons are clicked, an Interface File Selector dialog appears where you can specify the type of interface file, whether it should be used or saved, and its name. The entries on this dialog are as follows:
>
> <img src="./media/image114.jpg" style="width:3.90278in;height:2.23681in" />

**130**

> **<u>File Type</u>**
>
> Select the type of interface file to be specified.  
> **<u>Use / Save Buttons</u>**
>
> Select whether the named interface file will be used to supply input to a simulation run or whether simulation results will be saved to it.
>
> **<u>File Name</u>**
>
> Enter the name of the interface file or click the Browse button to select from a standard
>
> Windows file selection dialog box.
>
> **8.2 Setting Reporting Options**
>
> The Reporting Options dialog is used to select individual subcatchments, nodes, and links that will have detailed time series results saved for viewing after a simulation has been run. The default for new projects is that all objects will have detailed results saved for them. The dialog is invoked by selecting the Reporting category of Options from the Project Browser and clicking the
>
> button (or by selecting **Edit \>\> Edit Object** from the main menu).
>
> The dialog contains three tabbed pages - one each for subcatchments, nodes, and links. It is a stay-on-top form which means that you can select items directly from the Study Area Map or Project Browser while the dialog remains visible.
>
> <img src="./media/image117.jpg" style="width:3.00972in;height:3.52014in" />
>
> To include an object in the set that is reported on:

**131**

1.  Select the tab to which the object belongs (**Subcatchments, Nodes** or **Links**).

2.  Unselect the "**All**" check box if it is currently checked.

3.  Select the specific object either from the **Study Area Map** or from the listing in the Project Browser.

4.  Click the **Add** button on the dialog.

5.  Repeat the above steps for any additional objects.

> To remove an item from the set selected for reporting:

1.  Select the desired item in the dialog's list box.

2.  Click the **Remove** button to remove the item.

> To remove all items from the reporting set of a given object category, select the object category's page and click the **Clear** button.
>
> To include all objects of a given category in the reporting set, check the "**All**" box on the page for that category (i.e., subcatchments, nodes, or links). This will override any individual items that may be currently listed on the page.
>
> To dismiss the dialog click the **Close** button.
>
> **8.3 Starting a Simulation**
>
> To start a simulation either select **Project** \>\> **Run Simulation** from the Main Menu or click on
>
> the Standard Toolbar. A Run Status window will appear which displays the progress of the simulation.
>
> <img src="./media/image118.jpg" style="width:2.69653in;height:2.41667in" />
>
> To stop a run before its normal termination, click the **Stop** button on the Run Status window or press the \<**Esc**\> key. Simulation results up until the time when the run was stopped will be available for viewing. To minimize the SWMM program while a simulation is running, click the **Minimize** button on the Run Status window.
>
> **132**
>
> If the analysis runs successfully the icon will appear in the Run Status section of the Status
>
> Bar at the bottom of SWMM’s main window. Any error or warning messages will appear in a Status Report window. If you modify the project after a successful run has been made, the status
>
> flag changes to indicating that the current computed results no longer apply to the modified
>
> project.
>
> **8.4 Troubleshooting Results**
>
> When a run ends prematurely, the Run Status dialog will indicate the run was unsuccessful and direct the user to the Status Report for details. The Status Report will include an error statement, code, and description of the problem (e.g., ERROR 138: Node TG040 has initial depth greater than maximum depth). Consult Appendix E for a description of SWMM’s error messages. Even if a run completes successfully, one should check to insure that the results are reasonable. The following are the most common reasons for a run to end prematurely or to contain questionable results.
>
> <u>Unknown ID Error Message</u>
>
> This message typically appears when an object references another object that was never defined. An example would be a subcatchment whose outlet was designated as *N29*, but no such subcatchment or node with that name exists. Similar situations can exist for incorrect references made to Curves, Time Series, Time Patterns, Aquifers, Snow Packs, Transects, Pollutants, and Land Uses.
>
> <u>File Errors</u>
>
> File errors can occur when:

- a file cannot be located on the user's computer

- a file being used has the wrong format

- a file being written cannot be opened because the user does not have write privileges for the directory (folder) where the file is to be stored.

> <u>Drainage System Layout Errors</u>
>
> A valid drainage system layout must obey the following conditions:

- An outfall node can have only one conduit link connected to it.

- A flow divider node must have exactly two outflow links.

- A node cannot have more than one dummy link connected to it.

- Under Kinematic Wave routing, a junction node can only have one outflow link and a regulator link cannot be the outflow link of a non-storage node.

- Under Dynamic Wave routing there must be at least one outfall node in the network. An error message will be generated if any of these conditions are violated.

**133**

> <u>Excessive Continuity Errors</u>
>
> When a run completes successfully, the mass continuity errors for runoff, flow routing, and pollutant routing will be displayed in the Run Status window. These errors represent the percent difference between initial storage + total inflow and final storage + total outflow for the entire drainage system. If they exceed some reasonable level, such as 10 percent, then the validity of the analysis results must be questioned. The most common reasons for an excessive continuity error are computational time steps that are too long or conduits that are too short.
>
> <img src="./media/image119.jpg" style="width:2.69653in;height:2.41389in" />
>
> In addition to the system continuity error, the Status Report produced by a run (see Section 9.1) will list those nodes of the drainage network that have the largest flow continuity errors. If the error for a node is excessive, then one should first consider if the node in question is of importance to the purpose of the simulation. If it is, then further study is warranted to determine how the error might be reduced.
>
> <u>Unstable Flow Routing Results</u>
>
> Due to the explicit nature of the numerical methods used for Dynamic Wave routing (and to a lesser extent, Kinematic Wave routing), the flows in some links or water depths at some nodes may fluctuate or oscillate significantly at certain periods of time as a result of numerical instabilities in the solution method. SWMM does not automatically identify when such conditions exist, so it is up to the user to verify the numerical stability of the model and to determine if the simulation results are valid for the modeling objectives. Time series plots at key locations in the network can help identify such situations as can a scatter plot between a link’s flow and the corresponding water depth at its upstream node (see Section 9.5, Viewing Results with a Graph).
>
> Numerical instabilities can occur over short durations and may not be apparent when time series are plotted with a long time interval. When detecting such instabilities, it is recommended that a reporting time step of 1 minute or less be used, at least for an initial screening of results.
>
> The run’s Status Report lists the links having the five highest values of a Flow Instability Index (FII). This index counts the number of times that the flow value in a link is higher (or lower) than the flow in both the previous and subsequent time periods. The index is normalized with respect

**134**

> to the expected number of such ‘turns’ that would occur for a purely random series of values and can range from 0 to 150.
>
> As an example of how the Flow Instability Index can be used, consider Figure 8-1 shown below. The solid line plots the flow hydrograph for the link identified as having the highest FII value (100) in a dynamic wave flow routing run that used a fixed time step of 30 seconds. The dashed line shows the hydrograph that results when a variable time step was used instead, which is now completely stable.
>
> 0 2 4 6 8 10 12
>
> Time (hours)
>
> **Figure 8-1 Flow Instability Index for a flow hydrograph**
>
> Flow time series plots for the links having the highest FII’s should be inspected to insure that flow routing results are acceptably stable.
>
> Numerical instabilities under Dynamic Wave flow routing can be reduced by:

- reducing the routing time step

- utilizing the variable time step option with a smaller time step factor

- selecting to ignore the inertial terms of the momentum equation

- selecting the option to lengthen short conduits.

**135**

> **CHAPTER 9 – VIEWING RESULTS**
>
> *This chapter describes the different ways in which the results of a simulation can be viewed. These include a status report, a summary report, various map views, graphs, tables, and a statistical frequency report.*
>
> **9.1 Viewing a Status Report**
>
> A Status Report is available for viewing after each simulation. It contains:

- a summary of the main Simulation Options that are in effect

- a list of any error conditions encountered during the run

- a summary listing of the project’s input data (if requested in the Simulation Options)

- a summary of the data read from each rainfall file used in the simulation

- a description of each control rule action taken during the simulation (if requested in the Simulation Options)

- the system-wide mass continuity errors for:

<!-- -->

- runoff quantity and quality

- groundwater flow

- conveyance system flow and water quality

<!-- -->

- the names of the nodes with the highest individual flow continuity errors

- the names of the conduits that most often determined the size of the time step used for flow routing (only when the Variable Time Step option is used)

- the names of the links with the highest Flow Instability Index values

- information on the range of routing time steps taken and the percentage of these that were considered steady state.

> To view the Status Report select **Report \>\> Status** from the Main Menu or click the button
>
> and select **Status Report** from the drop-down menu that appears.
>
> To copy selected text from the Status Report to a file or to the Windows Clipboard, first select the text to copy with the mouse and then choose **Edit \>\> Copy To** from the Main Menu (or press the
>
> button on the Standard Toolbar).
>
> To save both the entire Status Report and Summary Report (discussed next) to file, select **File \>\> Export \>\> Status/Summary Report** from the Main Menu.
>
> **9.2 Viewing Summary Results**
>
> SWMM's Summary Results report lists summary results for each subcatchment, node, and link in the project through a selectable list of tables. To view the various summary results tables, select
>
> **136**
>
> **Report \>\> Summary** from the Main Menu or click the button and select **Summary Results** from the drop-down menu that appears. The Summary Results window looks as follows:
>
> <img src="./media/image122.jpg" style="width:6.23681in;height:3.69028in" />
>
> The drop-down box at the upper left allows you to choose the type of results to view. The selection of tables and the results they display are as follows:

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Table</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Columns</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Subcatchment Runoff</p>
</blockquote></td>
<td><blockquote>
<p>Total precipitation (in or mm);</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Total run-on from other subcatchments (in or mm);</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Total evaporation (in or mm);</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Total infiltration (in or mm);</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Total runoff depth (in or mm);</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Total runoff volume (million gallons or million liters);</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Peak runoff (flow units);</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Runoff coefficient (ratio of total runoff to total precipitation).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>LID Performance</p>
</blockquote></td>
<td><blockquote>
<p>Total inflow volume</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Total evaporation loss</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Total infiltration loss</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Total surface outflow</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Total underdrain outflow</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Initial storage volume</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>Final storage volume</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>Flow continuity error (%)</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p><em>Note: all quantities are expressed as depths (in or mm) over the LID unit’s surface area.</em></p>
</blockquote></td>
</tr>
</tbody>
</table>

**137**

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Groundwater Summary</p>
</blockquote></td>
<td><blockquote>
<p>Total surface infiltration (in or mm)</p>
<p>Total evaporation (in or mm)</p>
<p>Total lower seepage (in or mm)</p>
<p>Total lateral outflow (in or mm)</p>
<p>Maximum lateral outflow (flow units)</p>
<p>Average upper zone moisture content (volume fraction)</p>
<p>Average water table elevation (ft or m)</p>
<p>Final upper zone moisture content (volume fraction)</p>
<p>Final water table elevation (ft or m)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Subcatchment Washoff</p>
</blockquote></td>
<td><blockquote>
<p>Total mass of each pollutant washed off the subcatchment (lbs or kg).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Node Depth</p>
</blockquote></td>
<td><blockquote>
<p>Average water depth (ft or m);</p>
<p>Maximum water depth (ft or m);</p>
<p>Maximum hydraulic head (HGL) elevation (ft or m);</p>
<p>Time of maximum depth;</p>
<p>Maximum water depth at reporting times (ft or m).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Node Inflow</p>
</blockquote></td>
<td><blockquote>
<p>Maximum lateral inflow (flow units);</p>
<p>Maximum total inflow (flow units);</p>
<p>Time of maximum total inflow;</p>
<p>Total lateral inflow volume (million gallons or million liters);</p>
<p>Total inflow volume (million gallons or million liters);</p>
<p>Flow balance error (%).</p>
<p><em>Note: Total inflow consists of lateral inflow plus inflow from</em></p>
<p><em>connecting links.</em></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Node Surcharge</p>
</blockquote></td>
<td><blockquote>
<p>Hours surcharged;</p>
<p>Maximum height of surcharge above node’s crown (ft or m);</p>
<p>Minimum depth of surcharge below node’s top rim (ft or m).</p>
<p><em>Note: surcharging occurs when water rises above the crown of the highest conduit and only those conduits that surcharge are listed.</em></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Node Flooding</p>
</blockquote></td>
<td><blockquote>
<p>Hours flooded;</p>
<p>Maximum flooding rate (flow units);</p>
<p>Time of maximum flooding;</p>
<p>Total flood volume (million gallons or million liters);</p>
<p>Peak depth (for dynamic wave routing in ft or m) or peak volume</p>
<p>(1000 ft<sup>3</sup> or 1000 m<sup>3</sup>) of ponded surface water.</p>
<p><em>Note: flooding refers to all water that overflows a node, whether it ponds or not, and only those nodes that flood are listed.</em></p>
</blockquote></td>
</tr>
</tbody>
</table>

**138**

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Storage Volume</p>
</blockquote></td>
<td><blockquote>
<p>Average volume of water in the facility (1000 ft<sup>3</sup> or 1000 m<sup>3</sup>);</p>
<p>Average percent of full storage capacity utilized;</p>
<p>Percent of total stored volume lost to evaporation;</p>
<p>Percent of total stored volume lost to seepage;</p>
<p>Maximum volume of water in the facility (1000 ft<sup>3</sup> or 1000 m<sup>3</sup>);</p>
<p>Maximum percent of full storage capacity utilized;</p>
<p>Time of maximum water stored;</p>
<p>Maximum outflow rate from the facility (flow units).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Outfall Loading</p>
</blockquote></td>
<td><blockquote>
<p>Percent of time that outfall discharges;</p>
<p>Average discharge flow (flow units);</p>
<p>Maximum discharge flow (flow units);</p>
<p>Total volume of flow discharged (million gallons or million liters);</p>
<p>Total mass discharged of each pollutant (lbs or kg).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Link Flow</p>
</blockquote></td>
<td><blockquote>
<p>Maximum flow (flow units);</p>
<p>Time of maximum flow;</p>
<p>Maximum velocity (ft/sec or m/sec)</p>
<p>Ratio of maximum flow to full normal flow;</p>
<p>Ratio of maximum flow depth to full depth.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Flow Classification</p>
</blockquote></td>
<td><blockquote>
<p>Ratio of adjusted conduit length to actual length;</p>
<p>Fraction of all time steps spent in the following flow categories:</p>
</blockquote>
<ul>
<li><blockquote>
<p>dry on both ends</p>
</blockquote></li>
<li><blockquote>
<p>dry on the upstream end</p>
</blockquote></li>
<li><blockquote>
<p>dry on the downstream end</p>
</blockquote></li>
<li><blockquote>
<p>subcritical flow</p>
</blockquote></li>
<li><blockquote>
<p>supercritical flow</p>
</blockquote></li>
<li><blockquote>
<p>critical flow at the upstream end</p>
</blockquote></li>
<li><blockquote>
<p>critical flow at the downstream end</p>
</blockquote></li>
</ul>
<blockquote>
<p>Fraction of all time steps flow is limited to normal flow;</p>
<p>Fraction of all time steps flow is inlet controlled (for culverts only).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Conduit Surcharge</p>
</blockquote></td>
<td><blockquote>
<p>Hours that conduit is full at:</p>
</blockquote>
<ul>
<li><blockquote>
<p>both ends</p>
</blockquote></li>
<li><blockquote>
<p>upstream end</p>
</blockquote></li>
<li><blockquote>
<p>downstream end</p>
</blockquote></li>
</ul>
<blockquote>
<p>Hours that conduit flows above full normal flow;</p>
<p>Hours that conduit is capacity limited</p>
<p><em>Note: only conduits with one or more non-zero entries are listed and a conduit is considered capacity limited if its upstream end is full and the HGL slope is greater than the conduit slope.</em></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Link Pollutant Loads</p>
</blockquote></td>
<td><blockquote>
<p>Total mass load (in lbs or kg) of each pollutant carried by the link over the entire simulation period.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**139**

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Pumping</td>
<td><blockquote>
<p>Percent of time that the pump is on line;</p>
<p>Number of pump start-ups;</p>
<p>Minimum flow pumped (flow units)</p>
<p>Average flow pumped (flow units)</p>
<p>Maximum flow pumped (flow units);</p>
<p>Total volume pumped (million gallons or million liters);</p>
<p>Total energy consumed assuming 100% efficiency (Kw-hrs);</p>
<p>Percent of time that the pump operates below its pump curve;</p>
<p>Percent of time that the pump operates above its pump curve.</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image123.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>The summary results displayed in these tables are based on results found at every computational time step and not just on the results from each reporting time step.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> Clicking on the name of an object in the first column of the table will locate that object both in the Project Browser and on the Study Area Map. Clicking on a column heading will sort the entries in the table by the values in that column (alternating between ascending and descending order with each click.
>
> Selecting **Edit \>\> Copy To** from the Main Menu or clicking on the Standard Toolbar will allow
>
> you to copy the contents of the table to either the Windows Clipboard or to a file. To save both the entire Status Report and all tables of the Summary Report to a file select **File \>\> Export \>\> Status/Summary Report** from the Main Menu.
>
> **9.3 Time Series Results**
>
> Computed results at each reporting time step for the variables listed in Table 9-1 are available for viewing on the map and can be plotted, tabulated, and statistically analyzed. These variables can be viewed only for those subcatchments, nodes, and links that were selected to have detailed time series results saved for them. This normally includes all such objects in the project unless the Reporting option (under the Options category in the Project Browser) was used to select specific objects to report on.

**140**

**Table 9-1 Time series variables available for viewing**

**<u>Subcatchment Variables Link Variables</u>**

- rainfall rate (in/hr or mm/hr)

- snow depth (in or mm)

- evaporation loss ( in/day or mm/day)

- infiltration loss (in/hr or mm/hr)

- runoff flow (flow units)

- groundwater flow into the drainage network (flow units)

- groundwater elevation (ft or m)

- soil moisture in the unsaturated groundwater zone (volume fraction)

- washoff concentration of each pollutant (mass/liter)

**<u>Node Variables</u>**

- water depth (ft or m above the node invert elevation)

- hydraulic head (ft or m, absolute elevation per vertical datum)

- stored water volume (including ponded water, ft<sup>3</sup> or m<sup>3</sup>)

- lateral inflow (runoff + all other external inflows, in flow units)

- total inflow (lateral inflow + upstream inflows, in flow units)

- surface flooding (excess overflow when the node is at full depth, in flow units)

- concentration of each pollutant after any treatment applied at the node (mass/liter)

- flow rate (flow units)

- average water depth (ft or m)

- flow velocity (ft/sec or m/sec)

- volume of water (ft<sup>3</sup> or m<sup>3</sup>)

- capacity (fraction of full area filled by flow for conduits; control setting for pumps and regulators)

- concentration of each pollutant (mass/liter)

**<u>System-Wide Variables</u>**

- air temperature (degrees F or C)

- potential evaporation (in/day or mm/day)

- actual evaporation (in/day or mm/day)

- total rainfall (in/hr or mm/hr)

- total snow depth (in or mm)

- average losses (in/hr or mm/hr)

- total runoff flow (flow units)

- total dry weather inflow (flow units)

- total groundwater inflow (flow units)

- total RDII inflow (flow units)

- total direct inflow (flow units)

- total external inflow (flow units)

- total external flooding (flow units)

- total outflow from outfalls (flow units)

- total nodal storage volume ( ft<sup>3</sup> or m<sup>3</sup>)

> **9.4 Viewing Results on the Map**
>
> There are several ways to view the values of certain input parameters and simulation results directly on the Study Area Map:
>
> **** For the current settings on the Map Browser, the subcatchments, nodes and links of the map will be colored according to their respective Map Legends. The map's color coding will be updated as a new time period is selected in the Map Browser.
>
> **141**

- When the Flyover Map Labeling program preference is selected (see Section 4.9), moving the mouse over any map object will display its ID name and the value of its current theme parameter in a hint-style box.

- ID names and parameter values can be displayed next to all subcatchments, nodes and/or links by selecting the appropriate options on the Annotation page of the Map Options dialog (see Section 7.12).

- Subcatchments, nodes or links meeting a specific criterion can be identified by submitting a Map Query (see Section 7.9).

- You can animate the display of results on the network map either forward or backward in time by using the controls on the Animator panel of the Map Browser (see Section 4.7).

- The map can be printed, copied to the Windows clipboard, or saved as a DXF file or Windows metafile (see Section 7.13).

> **9.5 Viewing Results with a Graph**
>
> Analysis results can be viewed using several different types of graphs. Graphs can be printed, copied to the Windows clipboard, or saved to a text file or to a Windows metafile. The following types of graphs can be created from available simulation results:
>
> <img src="./media/image124.png" style="width:2.50972in;height:0.26319in" />

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<tbody>
<tr class="odd">
<td><ul>
<li><p>Time Series Plot:</p></li>
</ul></td>
<td><img src="./media/image125.png" style="width:3.49028in;height:2.21667in" /></td>
</tr>
</tbody>
</table>

**142**

<table>
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody>
<tr class="odd">
<td><ul>
<li><p>Profile Plot:</p></li>
<li><p>Scatter Plot:</p></li>
</ul></td>
<td><img src="./media/image126.jpg" style="width:3.57292in;height:5.41042in" /></td>
</tr>
</tbody>
</table>

> You can zoom in or out of any graph by holding down the \<**Shift**\> key while drawing a zoom rectangle with the mouse's left button held down. Drawing the rectangle from left to right zooms in, drawing it from right to left zooms out. The plot can also be panned in any direction by moving the mouse across the plot with the left button held down
>
> An opened graph will normally be redrawn when a new simulation is run. To prevent the automatic updating of a graph once a new set of results is computed you can lock the current
>
> graph by clicking the icon in the upper left corner of the graph. To unlock the graph, click the
>
> icon again.
>
> <u>Time Series Plots</u>
>
> A Time Series Plot graphs the values over time of specific combinations of objects and variables. Up to six time series can be plotted on the same graph. When only a single time series is plotted, and that item has calibration data registered for the plotted variable, then the calibration data will
>
> **143**
>
> be plotted along with the simulated results (see Section 5.5 for instructions on how to register calibration data with a project).
>
> To create a Time Series Plot:

1.  Select **Report** \>\> **Graph** \>\> **Time Series** from the Main Menu or click on the  
    > Standard Toolbar.

2.  A Time Series Plot Selection dialog will appear. Use it to describe what objects and quantities should be plotted.

> <img src="./media/image127.jpg" style="width:3.15625in;height:3.83333in" />
>
> The Time Series Plot Selection dialog specifies a set of objects and their variables whose computed time series will be graphed in a Time Series Plot. The dialog is used as follows:

1.  Select a Start Date and End Date for the plot (the default is the entire simulation period).

2.  Choose whether to show time as Elapsed Time or as Date/Time values.

3.  Add up to six different data series to the plot by clicking the **Add** button above the data series list box.

4.  Use the **Edit** button to make changes to a selected data series or the **Delete** button to delete a data series.

5.  Use the **Up** and **Down** buttons to change the order in which the data series will be plotted.

6.  Click the **OK** button to create the plot.

> When you click the **Add** or **Edit** buttons a Data Series Selection dialog will be displayed for selecting a particular object and variable to plot. It contains the following data fields:
>
> <img src="./media/image128.jpg" style="width:3.15625in;height:3.83056in" />
>
> **Object Type**: The type of object to plot (Subcatchment, Node, Link or System).
>
> **Object Name**: The ID name of the object to be plotted. (This field is disabled for System variables).
>
> **Variable:** The variable whose time series will be plotted (choices vary by object type).
>
> **Legend Label**: The text to use in the legend for the data series. If left blank, a default label made up of the object type, name, variable and units will be used (e.g. Link C16 Flow (CFS)).
>
> **Axis**: Whether to use the left or right vertical axis to plot the data series.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image129.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>As you select objects on the Study Area Map or in the Project Browser their types and ID names will automatically appear in this dialog.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> Click the **Accept** button to add/update the data series into the plot or click the **Cancel** button to disregard your edits. You will then be returned to the Time Series Plot Selection dialog where you can add or edit another data series.

**145**

> To make a precipitation time series display in inverted fashion on a plot, assign it to the right axis and after the plot is displayed, use the Graph Options Dialog (see Section 9.6) to invert the right axis and expand the scales of both the left and right axes (so it doesn't overlap another data series).
>
> <u>Profile Plots</u>
>
> A Profile Plot displays the variation in simulated water depth with distance over a connected path of drainage system links and nodes at a particular point in time. Once the plot has been created it will be automatically updated as a new time period is selected using the Map Browser.
>
> To create a Profile Plot:

1.  Select **Report** \>\> **Graph** \>\> **Profile** from the main menu or press on the Standard  
    > Toolbar

2.  A Profile Plot Selection dialog will appear (see below). Use it to identify the path along which the profile plot is to be drawn.

> <img src="./media/image131.jpg" style="width:3.48958in;height:3.48681in" />
>
> The Profile Plot Selection dialog is used to specify a path of connected conveyance system links along which a water depth profile versus distance should be drawn. To define a path using the dialog:
>
> **1.** Enter the ID of the upstream node of the first link in the path in the Start Node edit field
>
> (or click on the node on the Study Area Map and then on the button next to the edit
>
> field).

**146**

> **2.** Enter the ID of the downstream node of the last link in the path in the End Node edit field
>
> (or click the node on the map and then click the button next to the edit field).

3.  Click the **Find Path** button to have the program automatically identify the path with the smallest number of links between the start and end nodes. These will be listed in the Links in Profile box.

4.  You can insert a new link into the Links in Profile list by selecting the new link either on

> the Study Area Map or in the Project Browser and then clicking the button
>
> underneath the Links in Profile list box.

5.  Entries in the Links in Profile list can be deleted or rearranged by using the , ,

> and buttons underneath the list box.

6.  Click the **OK** button to view the profile plot.

> To save the current set of links listed in the dialog for future use:

1.  Click the **Save Current Profile** button.

2.  Supply a name for the profile when prompted.

> To use a previously saved profile:

1.  Click the **Use Saved Profile** button.

2.  Select the profile to use from the Profile Selection dialog that appears.

> Profile plots can also be created before any simulation results are available, to help visualize and verify the vertical layout of a drainage system. Plots created in this manner will contain a refresh
>
> button in the upper left corner that can be used to redraw the plot after edits are made to any
>
> elevation data appearing in the plot.
>
> <u>Scatter Plots</u>
>
> A Scatter Plot displays the relationship between a pair of variables, such as flow rate in a pipe versus water depth at a node. To create a Scatter Plot:

1.  Select **Report** \>\> **Graph** \>\> **Scatter** from the main menu or press on the Standard  
    > Toolbar

2.  Specify what time interval and what pair of objects and their variables to plot using the Scatter Plot Selection dialog that appears.

> The Scatter Plot Selection dialog is used to select the objects and variables to be graphed against one another in a scatter plot. Use the dialog as follows:

**147**

> <img src="./media/image138.jpg" style="width:3.48958in;height:3.45972in" />

1.  Select a Start Date and End Date for the plot (the default is the entire simulation period).

2.  Select the following choices for the X-variable (the quantity plotted along the horizontal axis):

<!-- -->

1.  Object Category (Subcatchment, Node or Link)

2.  Object ID (enter a value or click on the object either on the Study Area Map or in

> the Project Browser and then click the button on the dialog)

3.  Variable to plot (choices depend on the category of object selected).

<!-- -->

3.  Do the same for the Y-variable (the quantity plotted along the vertical axis).

4.  Click the **OK** button to create the plot.

> **9.6 Customizing a Graph’s Appearance**
>
> To customize the appearance of a graph:

1.  Make the graph the active window (click on its title bar).

2.  Select **Report** \>\> **Customize** from the Main Menu, or click on the Standard Toolbar,  
    > or right-click on the graph.

3.  Use the Graph Options dialog that appears to customize the appearance of a Time Series or Scatter Plot, or use the Profile Plot Options dialog for a Profile Plot.

**148**

> <u>Graph Options Dialog</u>
>
> The Graph Options dialog is used to customize the appearance of a time series plot, a scatter plot, or a frequency plot (described in Section9.8). To use the dialog:

1.  Select from among the four tabbed pages that cover the following categories of options: General, Axes, Legend, and Styles.

2.  Check the **Default** box if you wish to use the current settings as defaults for all new graphs as well.

3.  Select **OK** to accept your selections.

> <img src="./media/image140.jpg" style="width:3.89653in;height:4.55347in" />
>
> <u>Graph Options - General</u>
>
> The following options can be set on the General page of the Graph Options dialog box:
>
> *Panel Color* Color of the panel that contains the graph
>
> *Start Background* Starting gradient color of graph's plotting area *Color*
>
> *End Background* Ending gradient color of graph’s plotting area
>
> **149**
>
> *Color*
>
> *View in 3D* Check if graph should be drawn in 3D
>
> *3D Effect Percent* Degree to which 3D effect is drawn
>
> *Main Title* Text of graph's main title
>
> *Font* Click to set the font used for the main title
>
> The figure below shows a 3D graph with White as the *Start Background Color* and Sky Blue as the *End Background Color*.
>
> <img src="./media/image141.jpg" style="width:4.5in;height:3.10347in" />
>
> <u>Graph Options - Axes</u>
>
> The Axes page of the Graph Options dialog box adjust the way that the axes are drawn on a graph. One first selects an axis (Bottom, Left or Right (if present)) to work with and then selects from the following options:
>
> *Gridlines* Displays grid lines on the graph.
>
> *Inverted* Inverts the scale of the right vertical axis.
>
> *Auto Scale* Fills in the Minimum, Maximum and Increment boxes with an automatic axis scaling.
>
> *Minimum* Sets the minimum axis value (the minimum data value is shown
>
> in parentheses). Can be left blank.
>
> **150**
>
> *Maximum* Sets the maximum axis value (the maximum data value is shown in parentheses). Can be left blank.
>
> *Increment* Sets increment between axis labels. Can be left blank or set to zero for the program to automatically select an increment.
>
> *Axis Title* Text of axis title.
>
> *Font* Click to select a font for the axis title.
>
> <u>Graph Options - Legend</u>
>
> The Legend page of the Graph Options dialog box controls how the legend is displayed on the graph.
>
> *Position* Selects where to place the legend.
>
> *Color* Selects color to use for legend background.
>
> *Check Boxes* If selected, check boxes will appear next to each legend entry, allowing one to make the data series visible or invisible on the graph.
>
> *Framed* Places a frame around the legend.
>
> *Shadowed* Places a shadow behind the legend’s text.
>
> *Transparent* Makes the legend background transparent.
>
> *Visible* Makes the legend visible.
>
> *Symbol Width* Selects the width used to draw the symbol portion of a legend item, as a percentage of the length of the longest legend label.
>
> <u>Graph Options - Styles</u>
>
> The Styles page of the Graph Options dialog box controls how individual data series (or curves) are displayed on a graph. To use this page:

1.  Select a data series to work with from the **Series** combo box.

2.  Edit the title used to identify this series in the legend.

3.  Click the **Font** button to change the font used for the legend. (Other legend properties are selected on the **Legend** page of the dialog.)

**151**

> **4.** Select a property of the data series you would like to modify (not all properties are available for some types of graphs). The choices are:

- Lines

- Markers

- Patterns

- Labels

> <u>Profile Plot Options Dialog</u>
>
> The Profile Plot Options dialog is used to customize the appearance of a Profile Plot. The dialog contains four pages:
>
> <img src="./media/image142.jpg" style="width:3.88333in;height:3.78333in" />
>
> *Colors:*

- Selects the color to use for the plot window panel, the plot background, a conduit’s interior, and the depth of filled water.

- Includes a "Display Conduits Only" check box that provides a closer look at the water levels within conduits by removing all other details from the plot.

> *Axes:*

- Edits the main and axis titles, including their fonts.

- Selects to display horizontal and vertical axis grid lines.

> **152**
>
> *Node Labels:*

- Selects to display node ID labels either along the plot’s top axis, directly on the plot above the node’s crown height, or both.

- Selects the length of arrow to draw between the node label and the node’s crown on the plot (use 0 for no arrows).

- Selects the font size of the node ID labels.  
  > *Vertical Scale:*

- Lets one choose the minimum, maximum, and increment values for the vertical axis scale, or have SWMM set the scale automatically. If the increment field contains 0 or is left blank the program will automatically select an increment to use.

> Check the **Default** box if you want these options (except the Vertical Scale) to apply to all new profile plots when they are first created.
>
> **9.7 Viewing Results with a Table**
>
> Time series results for selected variables and objects can also be viewed in a tabular format. There are two types of formats available:

- Table by Object - tabulates the time series of several variables for a single object (e.g., flow and water depth for a conduit).

> <img src="./media/image143.jpg" style="width:4.23611in;height:2.24028in" />

- Table by Variable - tabulates the time series of a single variable for several objects of the same type (e.g., runoff for a group of subcatchments).

**153**

> <img src="./media/image144.jpg" style="width:4.22986in;height:2.25in" />
>
> To create a tabular report:

1.  Select **Report** \>\> **Table** from the Main Menu or click on the Standard Toolbar.

2.  Choose the table format (either **By Object** or **By Variable**) from the sub-menu that appears.

3.  Fill in the Table by Object or Table by Variable dialogs to specify what information the table should contain.

> The Table by Object dialog is used when creating a time series table of several variables for a single object. Use the dialog as follows:
>
> <img src="./media/image145.jpg" style="width:3.48958in;height:3.45694in" />
>
> Select a Start Date and End Date for the table (the default is the entire simulation period). **1.** Choose whether to show time as Elapsed Time or as Date/Time values.

**154**

> Objects already selected can be deleted, moved up in the order or moved down in the order by
>
> clicking the , , and buttons, respectively.
>
> **9.8 Viewing a Statistics Report**
>
> A Statistics Report can be generated from the time series of simulation results. For a given object and variable this report will do the following:

- segregate the simulation period into a sequence of non-overlapping events, either by day, month, or by flow (or volume) above some minimum threshold value,

- compute a statistical value that characterizes each event, such as the mean, maximum, or total sum of the variable over the event's time period,

- compute summary statistics for the entire set of event values (mean, standard deviation and skewness),

- perform a frequency analysis on the set of event values.

> The frequency analysis of event values will determine the frequency at which a particular event value has occurred and will also estimate a return period for each event value. Statistical analyses of this nature are most suitable for long-term continuous simulation runs.
>
> To generate a Statistics Report:

1.  Select **Report** \>\> **Statistics** from the Main Menu or click on the Standard Toolbar.

2.  Fill in the Statistics Report Selection dialog that appears, specifying the object, variable, and event definition to be analyzed.

**156**

> <img src="./media/image150.jpg" style="width:3.20625in;height:4.11319in" />
>
> **<u>Object Category</u>**
>
> Select the category of object to analyze (Subcatchment, Node, Link or System).
>
> **<u>Object Name</u>**
>
> Enter the ID name of the object to analyze. Instead of typing in an ID name, you can select the
>
> object on the Study Area Map or in the Project Browser and then click the button to select it
>
> into the Object Name field.
>
> **<u>Variable Analyzed</u>**
>
> Select the variable to be analyzed. The available choices depend on the object category selected (e.g., rainfall, losses, or runoff for subcatchments; depth, inflow, or flooding for nodes; depth, flow, velocity, or capacity for links; water quality for all categories).
>
> **<u>Event Time Period</u>**
>
> Select the length of the time period that defines an event. The choices are daily, monthly, or event-dependent. In the latter case, the event period depends on the number of consecutive reporting periods where simulation results are above the threshold values defined below.

**157**

> **<u>Statistic</u>**
>
> Choose an event statistic to be analyzed. The available choices depend on the choice of variable to be analyzed and include such quantities as mean value, peak value, event total, event duration, and inter-event time (i.e., the time interval between the midpoints of successive events). For water quality variables the choices include mean concentration, peak concentration, mean loading, peak loading, and event total load.
>
> **<u>Event Thresholds</u>**
>
> These define minimum values that must be exceeded for an event to occur:

- The Analysis Variable threshold specifies the minimum value of the variable being analyzed that must be exceeded for a time period to be included in an event.

- The Event Volume threshold specifies a minimum flow volume (or rainfall volume) that must be exceeded for a result to be counted as part of an event.

- Separation Time sets the minimum number of hours that must occur between the end of one event and the start of the next event. Events with fewer hours are combined together. This value applies only to event-dependent time periods (not to daily or monthly event periods).

> If a particular type of threshold does not apply, then leave the field blank.
>
> After the choices made on the Statistics Selection dialog form are processed, a Statistics Report is produced as shown below. It consists of four tabbed pages that contain:

- a table of event summary statistics

- a table of rank-ordered event periods, including their date, duration, and magnitude

- a histogram plot of the chosen event statistic

- an exceedance frequency plot of the event values.

> The exceedance frequencies included in the Statistics Report are computed with respect to the number of events that occur, not the total number of reporting periods.

**158**

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 9%" />
<col style="width: 14%" />
<col style="width: 18%" />
<col style="width: 42%" />
</colgroup>
<tbody>
<tr class="odd">
<td colspan="5"></td>
</tr>
<tr class="even">
<td colspan="5"><blockquote>
<p><strong>Statistics -</strong> Subcatch 1 Precipitation =1=1<sup>21</sup>4</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="5"></td>
</tr>
<tr class="even">
<td><strong><u>Summary</u></strong></td>
<td><strong>Events</strong></td>
<td><strong>Histogram</strong></td>
<td>Frequency Plot</td>
<td></td>
</tr>
<tr class="odd">
<td colspan="5"><blockquote>
<p>SUMMARY STATISTICS</p>
</blockquote></td>
</tr>
<tr class="even">
<td colspan="5"><blockquote>
<p>Object Subcatch 1</p>
<p>Variable Precipitation (in/hr)</p>
<p>Event Period Variable</p>
<p>Event Statistic Mean (in/hr)</p>
<p>Event Threshold Precipitation &gt; 0.0000 (in/hr)</p>
<p>Event Threshold Event Volume &gt; 0.0000 (in)</p>
<p><strong>Evcnt Thrcohold Scparation Timc &gt;— 6.0 (hr)</strong></p>
<p><strong>Period of</strong> Record 01/01/1998 to 05/12/2000</p>
<p>Number of Events 226</p>
<p>Event Frequency* 0.067</p>
<p>Minimum Value 0.010</p>
<p>Maximum Value 0.500</p>
<p>Mean Value 0.058</p>
<p>Std. Deviation 0.058</p>
<p>Skewness Coeff. 3.001</p>
<p>*Fraction of all reporting periods belonging to an event.</p>
<p><strong>4 t</strong></p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="5"><strong>dm</strong></td>
</tr>
</tbody>
</table>

**159**

> **CHAPTER 10 – PRINTING AND COPYING**
>
> *This chapter describes how to print, copy to the Windows clipboard, or copy to file the contents of the currently active window in the SWMM workspace. This can include the study area map, a graph, a table, or a report.*
>
> **10.1 Selecting a Printer**
>
> To select a printer from among your installed Windows printers and set its properties:

1.  Select **File** \>\> **Page Setup** from the Main Menu.

2.  Click the **Printer** button on the Page Setup dialog that appears (see below).

3.  Select a printer from the choices available in the combo box in the Print Setup dialog that appears.

4.  Click the **Properties** button to select the appropriate printer properties (which vary with choice of printer).

5.  Click **OK** on each dialog to accept your selections.

> <img src="./media/image151.jpg" style="width:4.16667in;height:3.84375in" />
>
> **160**
>
> **10.2 Setting the Page Format**
>
> To format the printed page:

1.  Select **File** \>\> **Page Setup** from the main menu.

2.  Use the Margins page of the Page Setup dialog form that appears (see above) to:

- Select a printer.

- Select the paper orientation (Portrait or Landscape).

- Set left, right, top, and bottom margins.

> **3.** Use the Headers/Footers page of the dialog box (see below) to:

- Supply the text for a header that will appear on each page.

- Indicate whether the header should be printed or not and how its text should be

> aligned.

- Supply the text for a footer that will appear on each page.

- Indicate whether the footer should be printed or not and how its text should be

> aligned.

- Indicate whether pages should be numbered.

> **4.** Click **OK** to accept your choices.

**161**

> **10.3 Print Preview**
>
> To preview a printout select **File** \>\> **Print Preview** from the Main Menu. A Preview form will appear which shows how each page being printed will appear. While in preview mode, the left mouse button will re-center and zoom in on the image and the right mouse button will re-center and zoom out.
>
> **10.4 Printing the Current View**
>
> To print the contents of the current window being viewed in the SWMM workspace, either select
>
> **File \>\> Print** from the Main Menu or click on the Standard Toolbar. The following views can
>
> be printed:

- Study Area Map (at the current zoom level)

- Status Report.

- Summary report (for the current table being viewed)

- Graphs (Time Series, Profile, and Scatter plots)

- Tabular Reports

- Statistical Reports.

> **10.5 Copying to the Clipboard or to a File**
>
> SWMM can copy the text and graphics of the current window being viewed to the Windows clipboard or to a file. Views that can be copied in this fashion include the Study Area Map, summary report tables, graphs, time series tables, and statistical reports. To copy the current view to the clipboard or to file:

1.  If the current view is a time series table, select the cells of the table to copy by dragging the mouse over them or copy the entire table by selecting **Edit** \>\> **Select All** from the Main Menu.

2.  Select **Edit** \>\> **Copy To** from the Main Menu or click the button on the Standard  
    > Toolbar.

3.  Select choices from the Copy dialog that appears (see below) and click the **OK** button.

4.  If copying to file, enter the name of the file in the **Save As** dialog that appears and click **OK**.

> **162**
>
> <img src="./media/image153.jpg" style="width:3.07292in;height:2.19653in" />
>
> Use the Copy dialog as follows to define how you want your data copied and to where:

1.  Select a destination for the material being copied (**Clipboard** or **File**)

2.  Select a format to copy in:

- **Bitmap** (graphics only)

- **Metafile** (graphics only)

- **Data** (text, selected cells in a table, or data used to construct a graph)

> **3.** Click **OK** to accept your selections or **Cancel** to cancel the copy request.
>
> The bitmap format copies the individual pixels of a graphic. The metafile format copies the instructions used to create the graphic and is more suitable for pasting into word processing documents where the graphic can be re-scaled without losing resolution. When data is copied, it can be pasted directly into a spreadsheet program to create customized tables or charts.

**163**

> **CHAPTER 11 – FILES USED BY SWMM**
>
> *This section describes the various files that SWMM can utilize. They include: the project file, the report and output files, rainfall files, the climate file, calibration data files, time series files, and interface files. The only file required to run SWMM is the project file; the others are optional.*
>
> **11.1 Project Files**
>
> A SWMM project file is a plain text file that contains all of the data used to describe a study area and the options used to analyze it. The file is organized into sections, where each section generally corresponds to a particular category of object used by SWMM. The contents of the file can be viewed from within SWMM while it is open by selecting **Project** \>\> **Details** from the Main Menu. An existing project file can be opened by selecting **File** \>\> **Open** from the Main Menu and be saved by selecting **File** \>\> **Save** (or **File** \>\> **Save As**).
>
> Normally a SWMM user would not edit the project file directly, since SWMM's graphical user interface can add, delete, or modify a project's data and control settings. However, for large projects where data currently reside in other electronic formats, such as CAD or GIS files, it may be more expeditious to extract data from these sources and save it to a formatted project file before running SWMM. The format of the project file is described in detail in Appendix D of this manual.
>
> After a project file is saved to disk, a settings file will automatically be saved with it. This file has the same name as the project file except that its extension is **.ini** (e.g., if the project file were named project1.inp then its settings file would have the name project1.ini). It contains various settings used by SWMM’s graphical user interface, such as map display options, legend colors and intervals, object default values, and calibration file information. Users should not edit this file. A SWMM project will still load and run even if the settings file is missing.
>
> **11.2 Report and Output Files**
>
> The report file is a plain text file created after every SWMM run that contains the contents of both the **Status Report** and all of the tables included in the **Summary Results** report. Refer to Sections 9.1 and 9.2 to review their contents.
>
> The output file is a binary file that contains the numerical results from a successful SWMM run. This file is used by SWMM’s user interface to interactively create time series plots and tables, profile plots, and statistical analyses of a simulation's results.
>
> Whenever a successfully run project is either saved or closed, the report and output files are saved with the same name as the project file, but with extensions of **.*rpt ***and **.*out***. This will happen automatically if the program preference *Prompt to Save Results* is turned off (see Section 4.9). Otherwise the user is asked if the current results should be saved or not. If results are saved
>
> **164**
>
> then the next time the project is opened, the results from these files will automatically be available for viewing.
>
> **11.3 Rainfall Files**
>
> SWMM’s rain gage objects can utilize rainfall data stored in external rainfall files. The program currently recognizes the following formats for storing such data:

- Hourly and fifteen minute precipitation data from over 5,500 reporting stations retrieved using NOAA’s National Climatic Data Center (NCDC) Climate Data Online service [<u>(www.ncdc.noaa.gov/cdo-web)</u>](http://www.ncdc.noaa.gov/cdo-web) (space-delimited text format only).

- The older **DS-3240** and related formats used for hourly precipitation by NCDC.

- The older **DS-3260** and related formats used for fifteen minute precipitation by NCDC.

- **HLY03** and **HLY21** formats for hourly rainfall at Canadian stations, available from Environment Canada at [<u>www.climate.weather.gc.ca.</u>](http://www.climate.weather.gc.ca/)

- **FIF21** format for fifteen minute rainfall at Canadian stations, also available online from Environment Canada.

- a standard user-prepared format where each line of the file contains the station ID, year, month, day, hour, minute, and non-zero precipitation reading, all separated by one or more spaces.

> When requesting data from NCDC’s online service, be sure to specify the TEXT format option, make sure that the data flags are included, and, for 15-minute data, select the QPCP option and not the QGAG one.
>
> An excerpt from a sample user-prepared Rainfall file is as follows:

|       |      |     |     |     |     |      |
|-------|------|-----|-----|-----|-----|------|
| STA01 | 2004 | 6   | 12  | 00  | 00  | 0.12 |
| STA01 | 2004 | 6   | 12  | 01  | 00  | 0.04 |
| STA01 | 2004 | 6   | 22  | 16  | 00  | 0.07 |

> This format can also accept multiple stations within the same file.
>
> When a rain gage is designated as receiving its rainfall data from a file, the user must supply the name of the file and the name of the recording station referenced in the file. For the standard user-prepared format, the rainfall type (e.g., intensity or volume), recording time interval, and depth units must also be supplied as rain gage properties. For the other file types these properties are defined by their respective file format and are automatically recognized by SWMM.
>
> **11.4 Climate Files**
>
> SWMM can use an external climate file that contains daily air temperature, evaporation, and wind speed data. The program currently recognizes the following formats:

**165**

- Global Historical Climatology Network - Daily (GHCN-D) files (TEXT output format) available from NOAA's National Climatic Data Center (NCDC) Climate Data Online service at [<u>www.ncdc.noaa.gov/cdo-web.</u>](C:/Projects/Swmm5.1/Users Manual/www.ncdc.noaa.gov/cdo-web)

- Older NCDC **DS-3200** or **DS-3210** files.

- Canadian climate files available from Environment Canada at [<u>www.climate.weather.gc.ca.</u>](C:/Projects/Swmm5.1/Users Manual/www.climate.weather.gc.ca)

- A user-prepared climate file where each line contains a recording station name, the year, month, day, maximum temperature, minimum temperature, and optionally, evaporation rate, and wind speed. If no data are available for any of these items on a given date, then an asterisk should be entered as its value.

> When a climate file has days with missing values, SWMM will use the value from the most recent previous day with a recorded value.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image154.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>For a user-prepared climate file, the data must be in the same units as the project being analyzed. For US units, temperature is in degrees F, evaporation is in inches/day, and wind speed is in miles/hour. For metric units, temperature is in degrees C, evaporation is in mm/day, and wind speed is in km/hour.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **11.5 Calibration Files**
>
> Calibration files contain measurements of variables at one or more locations that can be compared with simulated values in Time Series Plots. Separate files can be used for each of the following:

- Subcatchment Runoff

- Subcatchment Groundwater Flow

- Subcatchment Groundwater Elevation

- Subcatchment Snow Pack Depth

- Subcatchment Pollutant Washoff

- Node Depth

- Node Lateral Inflow

- Node Flooding

- Node Water Quality

- Link Flow

- Link Velocity

- Link Depth

> Calibration files are registered to a project by selecting **Project** \>\> **Calibration Data** from the main menu (see Section 5.7).

**166**

> The format of the file is as follows:

1.  The name of the first object with calibration data is entered on a single line.

2.  Subsequent lines contain the following recorded measurements for the object:

- measurement date (month/day/year, e.g., 6/21/2004) or number of whole days since the start of the simulation

- measurement time (hours:minutes) on the measurement date or relative to the number of elapsed days

- measurement value (for pollutants, a value is required for each pollutant).

> **3.** Follow the same sequence for any additional objects.
>
> An excerpt from an example calibration file is shown below. It contains flow values for two conduits: 1030 and 1602. Note that a semicolon can be used to begin a comment. In this example, elapsed time rather than the actual measurement date was used.

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 12%" />
<col style="width: 24%" />
<col style="width: 31%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>;Flows for ;Conduit</p>
<p>;<br />
1030</p>
</blockquote></td>
<td colspan="3"><p>Selected Conduits</p>
<p>Days Time Flow</p></td>
</tr>
<tr class="even">
<td></td>
<td>0</td>
<td>0:15</td>
<td><blockquote>
<p>0</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td>0</td>
<td>0:30</td>
<td><blockquote>
<p>0</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td>0</td>
<td>0:45</td>
<td><blockquote>
<p>23.88</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td>0</td>
<td>1:00</td>
<td><blockquote>
<p>94.58</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td>0</td>
<td>1:15</td>
<td><blockquote>
<p>115.37</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1602</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>0</td>
<td>0:15</td>
<td><blockquote>
<p>5.76</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td>0</td>
<td>0:30</td>
<td><blockquote>
<p>38.51</p>
</blockquote></td>
</tr>
<tr class="even">
<td></td>
<td>0</td>
<td>1:00</td>
<td><blockquote>
<p>67.93</p>
</blockquote></td>
</tr>
<tr class="odd">
<td></td>
<td>0</td>
<td>1:15</td>
<td><blockquote>
<p>68.01</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **11.6 Time Series Files**
>
> Time series files are external text files that contain data for SWMM's time series objects. Examples of time series data include rainfall, evaporation, inflows to nodes of the drainage system, and water stage at outfall boundary nodes. The file must be created and edited outside of SWMM, using a text editor or spreadsheet program. A time series file can be linked to a specific time series object using SWMM's Time Series Editor (see Section C.19).
>
> The format of a time series file consists of one time series value per line. Comment lines can be inserted anywhere in the file as long as they begin with a semicolon. Time series values can either be in date / time / value format or in time / value format, where each entry is separated by one or more spaces or tab characters. For the date / time / value format, dates are entered as

**167**

> month/day/year (e.g., 7/21/2004) and times as 24-hour military time (e.g., 8:30 pm is 20:30). After the first date, additional dates need only be entered whenever a new day occurs. For the time / value format, time can either be decimal hours or military time since the start of a simulation (e.g., 2 days, 4 hours and 20 minutes can be entered as either 52.333 or 52:20). An example of a time series file is shown below:
>
> ;Rainfall Data for Gage G1
>
> 07/01/2003 00:00 0.00000 00:15 0.03200 00:30 0.04800 00:45 0.02400 01:00 0.0100
>
> 07/06/2003 14:30 0.05100 14:45 0.04800 15:00 0.03000 18:15 0.01000 18:30 0.00800

In earlier releases of SWMM 5, a time series file was required to have two header lines of descriptive text at the start of the file that did not have to begin with the semicolon comment character. These files can still be used as long as they are modified by inserting a semicolon at the front of the first two lines.

When preparing rainfall time series files, it is only necessary to enter periods with non­zero rainfall amounts. SWMM interprets the rainfall value as a constant value lasting over the recording interval specified for the rain gage which utilizes the time series. For all other types of time series, SWMM uses interpolation to estimate values at times that fall in between the recorded values.

> **11.7 Interface Files**
>
> SWMM can use several different kinds of interface files that contain either externally imposed inputs (e.g., rainfall or infiltration/inflow hydrographs) or the results of previously run analyses (e.g., runoff or routing results). These files can help speed up simulations, simplify comparisons of different loading scenarios, and allow large study areas to be broken up into smaller areas that can be analyzed individually. The different types of interface files that are currently available include:

- rainfall interface file

- runoff interface file

- hot start file

- RDII interface file

- routing interface files

**168**

> Consult Section 8.1, Setting Simulation Options, for instructions on how to specify interface files for use as input and/or output in a simulation.
>
> <u>Rainfall and Runoff Files</u>
>
> The rainfall and runoff interface files are binary files created internally by SWMM that can be saved and reused from one analysis to the next.
>
> The rainfall interface file collates a series of separate rain gage files into a single rainfall data file. Normally a temporary file of this type is created for every SWMM analysis that uses external rainfall data files and is then deleted after the analysis is completed. However, if the same rainfall data are being used with many different analyses, requesting SWMM to save the rainfall interface file after the first run and then reusing this file in subsequent runs can save computation time.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image156.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>The rainfall interface file should not be confused with a rainfall data file. The latter is an external text file that provides rainfall time series data for a single rain gage. The former is a binary file created internally by SWMM that processes all of the rainfall data files used by a project.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The runoff interface file can be used to save the runoff results generated from a simulation run. If runoff is not affected in future runs, the user can request that SWMM use this interface file to supply runoff results without having to repeat the runoff calculations again.
>
> <u>Hot Start Files</u>
>
> Hot start files are binary files created by SWMM that contain the full hydrologic, hydraulic and water quality state of the study area at the end of a run. The following information is saved to the file:

- the ponded depth and its water quality for each subcatchment

- the pollutant mass buildup on each subcatchment

- the infiltration state of each subcatchment

- the conditions of any snowpack on each subcatchment

- the unsaturated zone moisture content, water table elevation, and groundwater outflow for each subcatchment that has a groundwater zone defined for it

- the water depth, lateral inflow, and water quality at each node of the system

- the flow rate, water depth, control setting and water quality in each link of the system.

> The hydrologic state of any LID units is not saved. The hot start file saved after a run can be used to define the initial conditions for a subsequent run.
>
> Hot start files can be used to avoid the initial numerical instabilities that sometimes occur under Dynamic Wave routing. For this purpose they are typically generated by imposing a constant set of base flows (for a natural channel network) or set of dry weather sanitary flows (for a sewer

**169**

> network) over some startup period of time. The resulting hot start file from this run is then used to initialize a subsequent run where the inflows of real interest are imposed.
>
> It is also possible to both use and save a hot start file in a single run, starting off the run with one file and saving the ending results to another. The resulting file can then serve as the initial conditions for a subsequent run if need be. This technique can be used to divide up extremely long continuous simulations into more manageable pieces.
>
> Instructions to save and/or use a hot start file can be issued when editing the Interface Files options available in the Project Browser (see Section8.1, Setting Simulation Options). One can also use the **File \>\> Export \>\> Hot Start File** Main Menu command to save the results of a current run at any particular time period to a hot start file. However, in this case only the results for nodes, links and groundwater elevation will be saved.
>
> <u>RDII Files</u>
>
> The RDII interface file contains a time series of rainfall-dependent infiltration/inflow flows for a specified set of drainage system nodes. This file can be generated from a previous SWMM run when Unit Hydrographs and nodal RDII inflow data have been defined for the project, or it can be created outside of SWMM using some other source of RDII data (e.g., through measurements or output from a different computer program). RDII files generated by SWMM are saved in a binary format. RDII files created outside of SWMM are text files with the same format used for routing interface files discussed below, where Flow is the only variable contained in the file.
>
> <u>Routing Files</u>
>
> A routing interface file stores a time series of flows and pollutant concentrations that are discharged from the outfall nodes of drainage system model. This file can serve as the source of inflow to another drainage system model that is connected at the outfalls of the first system. A Combine utility is available on the **File** menu that will combine pairs of routing interface files into a single interface file. This allows very large systems to be broken into smaller sub-systems that can be analyzed separately and linked together through the routing interface file. Figure 11.1 below illustrates this concept.
>
> A single SWMM run can utilize an outflows routing file to save results generated at a system's outfalls, an inflows routing file to supply hydrograph and pollutograph inflows at selected nodes, or both.

**170**

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong><u>Combine</u></strong></p>
<p><strong>out1.dat + out2.dat &gt;&gt; inp3.dat</strong></p></td>
</tr>
</tbody>
</table>

> **Figure 11-1 Combining routing interface files**
>
> <u>RDII / Routing File Format</u>
>
> RDII interface files and routing interface files have the same text format:

1.  the first line contains the keyword "SWMM5" (without the quotes)

2.  a line of text that describes the file (can be blank)

3.  the time step used for all inflow records (integer seconds)

4.  the number of variables stored in the file, where the first variable must always be flow rate

5.  the name and units of each variable (one per line), where flow rate is the first variable listed and is always named FLOW

6.  the number of nodes with recorded inflow data

7.  the name of each node (one per line)

8.  a line of text that provides column headings for the data to follow (can be blank)

9.  for each node at each time step, a line with:

- the name of the node

- the date (year, month, and day separated by spaces)

- the time of day (hours, minutes, and seconds separated by spaces)

- the flow rate followed by the concentration of each quality constituent

> Time periods with no values at any node can be skipped. An excerpt from an RDII / routing interface file is shown below.
>
> **171**
>
> SWMM5
>
> Example File  
> 300
>
> 1
>
> FLOW CFS

<table>
<colgroup>
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 24%" />
<col style="width: 8%" />
<col style="width: 34%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>2</p>
<p>N1</p>
<p>N2</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Node</p>
</blockquote></td>
<td><blockquote>
<p>Year Mon</p>
</blockquote></td>
<td><blockquote>
<p>Day Hr Min</p>
</blockquote></td>
<td>Sec</td>
<td>Flow</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>N1</p>
</blockquote></td>
<td><blockquote>
<p>2002 04</p>
</blockquote></td>
<td><blockquote>
<p>01 00 20</p>
</blockquote></td>
<td>00</td>
<td>0.000000</td>
</tr>
<tr class="even">
<td><blockquote>
<p>N2</p>
</blockquote></td>
<td><blockquote>
<p>2002 04</p>
</blockquote></td>
<td><blockquote>
<p>01 00 20</p>
</blockquote></td>
<td>00</td>
<td>0.002549</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>N1</p>
</blockquote></td>
<td><blockquote>
<p>2002 04</p>
</blockquote></td>
<td><blockquote>
<p>01 00 25</p>
</blockquote></td>
<td>00</td>
<td>0.000000</td>
</tr>
<tr class="even">
<td><blockquote>
<p>N2</p>
</blockquote></td>
<td><blockquote>
<p>2002 04</p>
</blockquote></td>
<td><blockquote>
<p>01 00 25</p>
</blockquote></td>
<td>00</td>
<td>0.002549</td>
</tr>
</tbody>
</table>

**172**

> **CHAPTER 12 – USING ADD-IN TOOLS**
>
> *SWMM 5 has the ability to launch external applications from its graphical user interface that can extend its capabilities. This section describes how such tools can be registered and share data with SWMM 5.*
>
> **12.1 What Are Add-In Tools**
>
> Add-in tools are third party applications that users can add to the **Tools** menu of the main SWMM menu bar and be launched while SWMM is still running. SWMM can interact with these applications to a limited degree by exchanging data through its pre-defined files (see Chapter 11) or through the Windows clipboard. Add-in tools can provide additional modeling capabilities to what SWMM already offers. Some examples of useful add-ins might include:

- a tool that performs a statistical analysis of long-term rainfall data prior to adding it to a SWMM rain gage,

- an external spreadsheet program that would facilitate the editing of a SWMM data set,

- a unit hydrograph estimator program that would derive the R-T-K parameters for a set of RDII unit hydrographs which could then be copied and pasted directly into SWMM’s Unit Hydrograph Editor,

- a post-processor program that uses SWMM’s hydraulic results to compute suspended solids removal through a storage unit,

- a third-party dynamic flow routing program used as a substitute for SWMM’s own internal procedure.

> The screenshot below shows what the **Tools** menu might look like after several add-in tools have been registered with it. The **Configure Tools** option is used to add, delete, or modify add-in tools. The options below this are the individual tools that have been made available (by this particular user) and can be launched by selecting them from the menu.
>
> <img src="./media/image160.png" style="width:5.97292in;height:2.35694in" />
>
> **173**
>
> **12.2 Configuring Add-In Tools**
>
> To configure one’s personal collection of add-in tools, select **Configure Tools** from the **Tools** menu. This will bring up the Tool Options dialog as shown below. The dialog lists the currently available tools and has command buttons for adding a new tool and for deleting or editing an existing tool. The up and down arrow buttons are used to change the order in which the registered tools are listed on the **Tools** menu.
>
> <img src="./media/image161.jpg" style="width:3.3in;height:2.77986in" />
>
> Whenever the **Add** or **Edit** button is clicked on this dialog a Tool Properties dialog will appear. This dialog is used to describe the properties of the new tool being added or the existing tool being edited. The data entry fields of the Tool Properties dialog consist of the following:
>
> **<u>Tool Name</u>**
>
> This is the name to be used for the tool when it is displayed in the Tools Menu.
>
> **<u>Program</u>**
>
> Enter the full path name to the program that will be launched when the tool is selected. You can
>
> click the button to bring up a standard Windows file selection dialog from which you can
>
> search for the tool’s executable file name.
>
> **<u>Working Directory</u>**
>
> This field contains the name of the directory that will be used as the working directory when the
>
> tool is launched. You can click the button to bring up a standard directory selection dialog
>
> from which you can search for the desired directory. You can also enter the macro symbol **\$PROJDIR** to utilize the current SWMM project’s directory or **\$SWMMDIR** to use the directory where the SWMM 5 executable resides. Either of these macros can also be inserted into the Working Directory field by selecting its name in the list of macros provided on the dialog and then

**174**

> clicking the button. This field can be left blank, in which case the system’s current directory
>
> will be used.
>
> <img src="./media/image164.jpg" style="width:4.66319in;height:4.32361in" />
>
> **<u>Parameters</u>**
>
> This field contains the list of command line arguments that the tool’s executable program expects to see when it is launched. Multiple parameters can be entered as long as they are separated by spaces. A number of special macro symbols have been pre-defined, as listed in the Macros list box of the dialog, to simplify the process of listing the command line parameters. When one of these macro symbols is inserted into the list of parameters, it will be expanded to its true value when the tool is launched. A specific macro symbol can either be typed into the Parameters field or be selected from the Macros list (by clicking on it) and then added to the parameter list by
>
> clicking the button. The available macro symbols and their meanings are:
>
> **\$PROJDIR** The directory where the current SWMM project file resides.
>
> **\$SWMMDIR** The directory where the SWMM 5 executable is installed.
>
> **\$INPFILE** The name of a temporary file containing the current project’s data that is created just before the tool is launched.

**175**

> **\$RPTFILE** The name of a temporary file that is created just before the tool is launched and can be displayed after the tool closes by using the **Report**
>
> \>\> **Status** command from the main SWMM menu.
>
> **\$OUTFILE** The name of a temporary file to which the tool can write simulation results in the same format used by SWMM 5, which can then be displayed after the tool closes in the same fashion as if a SWMM run were made.
>
> **\$RIFFILE** The name of the Runoff Interface File, as specified in the Interface Files page of the Simulation Options dialog, to which runoff simulation results
>
> were saved from a previous SWMM run (see Sections 8.1 Setting Simulation Options and 11.7 Interface Files).
>
> As an example of how the macro expansion works, consider the entries in the Tool Properties dialog shown previously. This Spreadsheet Editor tool wants to launch Microsoft Excel and pass it the name of the SWMM input data file to be opened by Excel. SWMM will issue the following command line to do this
>
> **[<u>C:\Program</u>](C:\Program) Files (x86)\Microsoft Office\Office12\EXCEL.EXE \$INPFILE**
>
> where the string **\$INPFILE** will be replaced by the name of the temporary file that SWMM creates internally that contains the current project’s data.
>
> **<u>Disable SWMM while executing</u>**
>
> Check this option if SWMM should be hidden and disabled while the tool is executing. Normally you will need to employ this option if the tool produces a modified input file or output file, such as when the **\$INPFILE** or **\$OUTFILE** macros are used as command line parameters. When this option is enabled, SWMM’s main window will be hidden from view until the tool is terminated.
>
> **<u>Update SWMM after closing</u>**
>
> Check this option if SWMM should be updated after the tool finishes executing. This option can only be selected if the option to disable SWMM while the tool is executing was first selected. Updating can occur in two ways. If the **\$INPFILE** macro was used as a command line parameter for the tool and the corresponding temporary input file produced by SWMM was updated by the tool, then the current project’s data will be replaced with the data contained in the updated temporary input file. If the **\$OUTFILE** macro was used as a command line parameter, and its corresponding file is found to contain a valid set of output results after the tool closes, then the contents of this file will be used to display simulation results within the SWMM workspace.
>
> Generally speaking, the suppliers of third-party tools will provide instructions on what settings should be used in the Tool Properties dialog to properly register their tool with SWMM.

**176**

**APPENDIX A – USEFUL TABLES**

> **A.1 Units of Measurement**

<table>
<colgroup>
<col style="width: 36%" />
<col style="width: 31%" />
<col style="width: 31%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>PARAMETER</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>US CUSTOMARY</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>SI METRIC</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Area (Subcatchment)</p>
</blockquote></td>
<td><blockquote>
<p>acres</p>
</blockquote></td>
<td><blockquote>
<p>hectares</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Area (Storage Unit)</p>
</blockquote></td>
<td><blockquote>
<p>square feet</p>
</blockquote></td>
<td><blockquote>
<p>square meters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Area (Ponding)</p>
</blockquote></td>
<td><blockquote>
<p>square feet</p>
</blockquote></td>
<td><blockquote>
<p>square meters</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Capillary Suction</p>
</blockquote></td>
<td><blockquote>
<p>inches</p>
</blockquote></td>
<td><blockquote>
<p>millimeters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Concentration</p>
</blockquote></td>
<td><blockquote>
<p>mg/L (milligrams/liter) ug/L (micrograms/liter) Count/L (counts/liter)</p>
</blockquote></td>
<td><blockquote>
<p>mg/L<br />
ug/L<br />
Count/L</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Decay Constant (Infiltration)</p>
</blockquote></td>
<td><blockquote>
<p>1/hours</p>
</blockquote></td>
<td><blockquote>
<p>1/hours</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Decay Constant (Pollutants)</p>
</blockquote></td>
<td><blockquote>
<p>1/days</p>
</blockquote></td>
<td><blockquote>
<p>1/days</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Depression Storage</p>
</blockquote></td>
<td><blockquote>
<p>inches</p>
</blockquote></td>
<td><blockquote>
<p>millimeters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Depth</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Diameter</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Discharge Coefficient:</p>
<p>Orifice</p>
<p>Weir</p>
</blockquote></td>
<td><blockquote>
<p>dimensionless<br />
CFS/foot<sup>n</sup></p>
</blockquote></td>
<td><blockquote>
<p>dimensionless<br />
CMS/meter<sup>n</sup></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Elevation</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Evaporation</p>
</blockquote></td>
<td><blockquote>
<p>inches/day</p>
</blockquote></td>
<td><blockquote>
<p>millimeters/day</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Flow</p>
</blockquote></td>
<td><blockquote>
<p>CFS (cubic feet / second) GPM (gallons / minute) MGD (million gallons/day)</p>
</blockquote></td>
<td><blockquote>
<p>CMS (cubic meters/second)</p>
<p>LPS (liters/second)</p>
<p>MLD (million liters/day)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Head</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Hydraulic Conductivity</p>
</blockquote></td>
<td><blockquote>
<p>inches/hour</p>
</blockquote></td>
<td><blockquote>
<p>millimeters/hour</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Infiltration Rate</p>
</blockquote></td>
<td><blockquote>
<p>inches/hour</p>
</blockquote></td>
<td><blockquote>
<p>millimeters/hour</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Length</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Manning's n</p>
</blockquote></td>
<td><blockquote>
<p>seconds/meter<sup>1/3</sup></p>
</blockquote></td>
<td><blockquote>
<p>seconds/meter<sup>1/3</sup></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Pollutant Buildup</p>
</blockquote></td>
<td><blockquote>
<p>mass/length<br />
mass/acre</p>
</blockquote></td>
<td><blockquote>
<p>mass/length<br />
mass/hectare</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rainfall Intensity</p>
</blockquote></td>
<td><blockquote>
<p>inches/hour</p>
</blockquote></td>
<td><blockquote>
<p>millimeters/hour</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rainfall Volume</p>
</blockquote></td>
<td><blockquote>
<p>inches</p>
</blockquote></td>
<td><blockquote>
<p>millimeters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Slope (Subcatchments)</p>
</blockquote></td>
<td><blockquote>
<p>percent</p>
</blockquote></td>
<td><blockquote>
<p>percent</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Slope (Cross Section)</p>
</blockquote></td>
<td><blockquote>
<p>rise/run</p>
</blockquote></td>
<td><blockquote>
<p>rise/run</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Street Cleaning Interval</p>
</blockquote></td>
<td><blockquote>
<p>days</p>
</blockquote></td>
<td><blockquote>
<p>days</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Volume</p>
</blockquote></td>
<td><blockquote>
<p>cubic feet</p>
</blockquote></td>
<td><blockquote>
<p>cubic meters</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Width</p>
</blockquote></td>
<td><blockquote>
<p>feet</p>
</blockquote></td>
<td><blockquote>
<p>meters</p>
</blockquote></td>
</tr>
</tbody>
</table>

**177**

**A.2 Soil Characteristics**

<table>
<colgroup>
<col style="width: 34%" />
<col style="width: 11%" />
<col style="width: 12%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Soil Texture Class</strong></p>
</blockquote></td>
<td><strong>K</strong></td>
<td>'P</td>
<td>φ</td>
<td><strong>FC</strong></td>
<td><strong>WP</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sand</p>
</blockquote></td>
<td>4.74</td>
<td>1.93</td>
<td>0.437</td>
<td>0.062</td>
<td>0.024</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Loamy Sand</p>
</blockquote></td>
<td>1.18</td>
<td>2.40</td>
<td>0.437</td>
<td>0.105</td>
<td>0.047</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sandy Loam</p>
</blockquote></td>
<td>0.43</td>
<td>4.33</td>
<td>0.453</td>
<td>0.190</td>
<td>0.085</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Loam</p>
</blockquote></td>
<td>0.13</td>
<td>3.50</td>
<td>0.463</td>
<td>0.232</td>
<td>0.116</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Silt Loam</p>
</blockquote></td>
<td>0.26</td>
<td>6.69</td>
<td>0.501</td>
<td>0.284</td>
<td>0.135</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sandy Clay Loam</p>
</blockquote></td>
<td>0.06</td>
<td>8.66</td>
<td>0.398</td>
<td>0.244</td>
<td>0.136</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Clay Loam</p>
</blockquote></td>
<td>0.04</td>
<td>8.27</td>
<td>0.464</td>
<td>0.310</td>
<td>0.187</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Silty Clay Loam</p>
</blockquote></td>
<td>0.04</td>
<td>10.63</td>
<td>0.471</td>
<td>0.342</td>
<td>0.210</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sandy Clay</p>
</blockquote></td>
<td>0.02</td>
<td>9.45</td>
<td>0.430</td>
<td>0.321</td>
<td>0.221</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Silty Clay</p>
</blockquote></td>
<td>0.02</td>
<td>11.42</td>
<td>0.479</td>
<td>0.371</td>
<td>0.251</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Clay</p>
</blockquote></td>
<td>0.01</td>
<td>12.60</td>
<td>0.475</td>
<td>0.378</td>
<td>0.265</td>
</tr>
</tbody>
</table>

saturated hydraulic conductivity, in/hr

suction head, in.

porosity, fraction

> **FC** = field capacity, fraction
>
> **WP** = wilting point, fraction
>
> Source: Rawls, W.J. et al., (1983). *J. Hyd. Engr*., 109:1316.
>
> Note: The following relation between 'P and K can be derived from this table:

'P **=** 3.23 <sup>**K**-0.328</sup> (R<sup>2</sup> = 0.9)

**A.3 NRCS Hydrologic Soil Group Definitions**

<table>
<colgroup>
<col style="width: 11%" />
<col style="width: 68%" />
<col style="width: 19%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Group</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Meaning</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Saturated Hydraulic Conductivity (in/hr)</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>A</p>
</blockquote></td>
<td><blockquote>
<p>Low runoff potential.</p>
<p>Water is transmitted freely through the soil. Group A soils typically have less than 10 percent clay and more than 90 percent sand or gravel and have gravel or sand textures.</p>
</blockquote></td>
<td><blockquote>
<p>&gt; 1.42</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>B</p>
</blockquote></td>
<td><blockquote>
<p>Moderately low runoff potential.</p>
<p>Water transmission through the soil is unimpeded. Group B soils typically have between 10 percent and 20 percent clay and 50 percent to 90 percent sand and have loamy sand or sandy loam textures.</p>
</blockquote></td>
<td><blockquote>
<p>0.57 – 1.42</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>C</p>
</blockquote></td>
<td><blockquote>
<p>Moderately high runoff potential.</p>
<p>Water transmission through the soil is somewhat restricted. Group C soils typically have between 20 percent and 40 percent clay and less than 50 percent sand and have loam, silt loam, sandy clay loam, clay loam, and silty clay loam textures.</p>
</blockquote></td>
<td><blockquote>
<p>0.06 - 0.57</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>D</p>
</blockquote></td>
<td><blockquote>
<p>High runoff potential.</p>
<p>Water movement through the soil is restricted or very restricted. Group D soils typically have greater than 40 percent clay, less than 50 percent sand, and have clayey textures.</p>
</blockquote></td>
<td><blockquote>
<p>&lt; 0.06</p>
</blockquote></td>
</tr>
</tbody>
</table>

> Source: Hydrology National Engineering Handbook, Chapter 7, Natural Resources Conservation Service, U.S. Department of Agriculture, January 2009.

**179**

> **A.4 SCS Curve Numbers<sup>1</sup>**

<table>
<colgroup>
<col style="width: 56%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 14%" />
</colgroup>
<tbody>
<tr class="odd">
<td rowspan="2"><blockquote>
<p><strong>Land Use Description</strong></p>
</blockquote></td>
<td colspan="4"><strong>Hydrologic Soil Group</strong></td>
</tr>
<tr class="even">
<td><strong>A</strong></td>
<td><strong>B</strong></td>
<td><strong>C</strong></td>
<td><strong>D</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Cultivated land</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Without conservation treatment</p>
</blockquote></td>
<td>72</td>
<td>81</td>
<td>88</td>
<td>91</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>With conservation treatment</p>
</blockquote></td>
<td>62</td>
<td>71</td>
<td>78</td>
<td>81</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Pasture or range land</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Poor condition</p>
</blockquote></td>
<td>68</td>
<td>79</td>
<td>86</td>
<td>89</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Good condition</p>
</blockquote></td>
<td>39</td>
<td>61</td>
<td>74</td>
<td>80</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Meadow</p>
<p>Good condition</p>
</blockquote></td>
<td>30</td>
<td>58</td>
<td>71</td>
<td>78</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Wood or forest land</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Thin stand, poor cover, no mulch</p>
</blockquote></td>
<td>45</td>
<td>66</td>
<td>77</td>
<td>83</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Good cover<strong><sup>2</sup></strong></p>
</blockquote></td>
<td>25</td>
<td>55</td>
<td>70</td>
<td>77</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Open spaces, lawns, parks, golf courses, cemeteries, etc.</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Good condition: grass cover on<br />
75% or more of the area</p>
</blockquote></td>
<td>39</td>
<td>61</td>
<td>74</td>
<td>80</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Fair condition: grass cover on</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>50-75% of the area</p>
</blockquote></td>
<td>49</td>
<td>69</td>
<td>79</td>
<td>84</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Commercial and business areas (85% impervious)</p>
</blockquote></td>
<td>89</td>
<td>92</td>
<td>94</td>
<td>95</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Industrial districts (72% impervious)</p>
</blockquote></td>
<td>81</td>
<td>88</td>
<td>91</td>
<td>93</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Residential<strong><sup>3</sup></strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Average lot size (% Impervious<strong><sup>4</sup></strong>)<br />
1/8 ac or less (65)</p>
</blockquote></td>
<td>77</td>
<td>85</td>
<td>90</td>
<td>92</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1/4 ac (38)</p>
</blockquote></td>
<td>61</td>
<td>75</td>
<td>83</td>
<td>87</td>
</tr>
<tr class="even">
<td><blockquote>
<p>1/3 ac (30)</p>
</blockquote></td>
<td>57</td>
<td>72</td>
<td>81</td>
<td>86</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1/2 ac (25)</p>
</blockquote></td>
<td>54</td>
<td>70</td>
<td>80</td>
<td>85</td>
</tr>
<tr class="even">
<td><blockquote>
<p>1 ac (20)</p>
</blockquote></td>
<td>51</td>
<td>68</td>
<td>79</td>
<td>84</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Paved parking lots, roofs, driveways, etc.<strong><sup>5</sup></strong></p>
</blockquote></td>
<td>98</td>
<td>98</td>
<td>98</td>
<td>98</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Streets and roads</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Paved with curbs and storm sewers<strong><sup>5</sup></strong></p>
</blockquote></td>
<td>98</td>
<td>98</td>
<td>98</td>
<td>98</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gravel</p>
</blockquote></td>
<td>76</td>
<td>85</td>
<td>89</td>
<td>91</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Dirt</p>
</blockquote></td>
<td>72</td>
<td>82</td>
<td>87</td>
<td>89</td>
</tr>
</tbody>
</table>

> Source*: SCS Urban Hydrology for Small Watersheds*, 2<sup>nd</sup> Ed., (TR-55), June 1986.
>
> Footnotes:

1.  Antecedent moisture condition II.

2.  Good cover is protected from grazing and litter and brush cover soil.

> **180**

10. Curve numbers are computed assuming that the runoff from the house and driveway is directed toward the street with a minimum of roof water directed to lawns where additional infiltration could occur.

11. The remaining pervious areas (lawn) are considered to be in good pasture condition for these curve numbers.

12. In some warmer climates of the country a curve number of 95 may be used.

> **A.5 Depression Storage**

<table>
<colgroup>
<col style="width: 51%" />
<col style="width: 48%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Impervious surfaces</p>
</blockquote></td>
<td><blockquote>
<p>0.05 - 0.10 inches</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Lawns</p>
</blockquote></td>
<td><blockquote>
<p>0.10 - 0.20 inches</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Pasture</p>
</blockquote></td>
<td><blockquote>
<p>0.20 inches</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Forest litter</p>
</blockquote></td>
<td><blockquote>
<p>0.30 inches</p>
</blockquote></td>
</tr>
</tbody>
</table>

> Source: ASCE, (1992). *Design & Construction of Urban Stormwater Management Systems,* New York, NY.

**181**

**A.6 Manning’s n – Overland Flow**

<table>
<colgroup>
<col style="width: 61%" />
<col style="width: 38%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Surface</strong></p>
</blockquote></td>
<td><strong>n</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Smooth asphalt</p>
</blockquote></td>
<td>0.011</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Smooth concrete</p>
</blockquote></td>
<td>0.012</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ordinary concrete lining</p>
</blockquote></td>
<td>0.013</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Good wood</p>
</blockquote></td>
<td>0.014</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Brick with cement mortar</p>
</blockquote></td>
<td>0.014</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vitrified clay</p>
</blockquote></td>
<td>0.015</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cast iron</p>
</blockquote></td>
<td>0.015</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Corrugated metal pipes</p>
</blockquote></td>
<td>0.024</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cement rubble surface</p>
</blockquote></td>
<td>0.024</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Fallow soils (no residue)</p>
</blockquote></td>
<td>0.05</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cultivated soils</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Residue cover &lt; 20%</p>
</blockquote></td>
<td>0.06</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Residue cover &gt; 20%</p>
</blockquote></td>
<td>0.17</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Range (natural)</p>
</blockquote></td>
<td>0.13</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Grass</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Short, prairie</p>
</blockquote></td>
<td>0.15</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dense</p>
</blockquote></td>
<td>0.24</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Bermuda grass</p>
</blockquote></td>
<td>0.41</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Woods</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Light underbrush</p>
</blockquote></td>
<td>0.40</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dense underbrush</p>
</blockquote></td>
<td>0.80</td>
</tr>
</tbody>
</table>

> Source: McCuen, R. et al. (1996), *Hydrology*, FHWA-SA-96-067, Federal Highway Administration, Washington, DC

**182**

**A.7 Manning’s n – Closed Conduits**

<table>
<colgroup>
<col style="width: 56%" />
<col style="width: 43%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Conduit Material</strong></p>
</blockquote></td>
<td><strong>Manning n</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Asbestos-cement pipe</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Brick</p>
</blockquote></td>
<td>0.013 - 0.017</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cast iron pipe</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Cement-lined &amp; seal coated</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Concrete (monolithic)</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Smooth forms</p>
</blockquote></td>
<td>0.012 - 0.014</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Rough forms</p>
</blockquote></td>
<td>0.015 - 0.017</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Concrete pipe</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Corrugated-metal pipe</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>(1/2-in. x 2-2/3-in. corrugations)</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Plain</p>
</blockquote></td>
<td>0.022 - 0.026</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Paved invert</p>
</blockquote></td>
<td>0.018 - 0.022</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Spun asphalt lined</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Plastic pipe (smooth)</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Vitrified clay</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Pipes</p>
</blockquote></td>
<td>0.011 - 0.015</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Liner plates</p>
</blockquote></td>
<td>0.013 - 0.017</td>
</tr>
</tbody>
</table>

> Source: ASCE (1982). *Gravity Sanitary Sewer Design and Construction*, ASCE Manual of Practice No. 60, New York, NY.

**183**

**A.8 Manning’s n – Open Channels**

<table>
<colgroup>
<col style="width: 60%" />
<col style="width: 39%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Channel Type</strong></p>
</blockquote></td>
<td><strong>Manning n</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Lined Channels</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Asphalt</p>
</blockquote></td>
<td>0.013 - 0.017</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Brick</p>
</blockquote></td>
<td>0.012 - 0.018</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Concrete</p>
</blockquote></td>
<td>0.011 - 0.020</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Rubble or riprap</p>
</blockquote></td>
<td>0.020 - 0.035</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Vegetal</p>
</blockquote></td>
<td>0.030 - 0.40</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Excavated or dredged</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Earth, straight and uniform</p>
</blockquote></td>
<td>0.020 - 0.030</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Earth, winding, fairly uniform</p>
</blockquote></td>
<td>0.025 - 0.040</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Rock</p>
</blockquote></td>
<td>0.030 - 0.045</td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Unmaintained</p>
</blockquote></td>
<td>0.050 - 0.140</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Natural channels (minor streams, top width at flood stage &lt; 100 ft)</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>- Fairly regular section</p>
</blockquote></td>
<td>0.030 - 0.070</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>- Irregular section with pools</p>
</blockquote></td>
<td>0.040 - 0.100</td>
</tr>
</tbody>
</table>

> Source: ASCE (1982). *Gravity Sanitary Sewer Design and Construction,* ASCE Manual of Practice No. 60, New York, NY.

**184**

**A.9 Water Quality Characteristics of Urban Runoff**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Constituent</strong></p>
</blockquote></td>
<td><strong>Event Mean Concentrations</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>TSS (mg/L)</p>
</blockquote></td>
<td>180 - 548</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>BOD (mg/L)</p>
</blockquote></td>
<td>12 - 19</td>
</tr>
<tr class="even">
<td><blockquote>
<p>COD (mg/L)</p>
</blockquote></td>
<td>82 - 178</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Total P (mg/L)</p>
</blockquote></td>
<td>0.42 - 0.88</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Soluble P (mg/L)</p>
</blockquote></td>
<td>0.15 - 0.28</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>TKN (mg/L)</p>
</blockquote></td>
<td>1.90 - 4.18</td>
</tr>
<tr class="even">
<td><blockquote>
<p>NO2/NO3-N (mg/L)</p>
</blockquote></td>
<td>0.86 - 2.2</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Total Cu (ug/L)</p>
</blockquote></td>
<td>43 - 118</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Total Pb (ug/L)</p>
</blockquote></td>
<td>182 - 443</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Total Zn (ug/L)</p>
</blockquote></td>
<td>202 - 633</td>
</tr>
</tbody>
</table>

> Source: U.S. Environmental Protection Agency. (1983). *Results of the Nationwide Urban Runoff Program (NURP), Vol. 1*, NTIS PB 84-185552), Water Planning Division, Washington, DC.

**185**

**A.10 Culvert Code Numbers**

> **Circular Concrete**
>
> 1 Square edge with headwall
>
> 2 Groove end with headwall
>
> 3 Groove end projecting
>
> **Circular Corrugated Metal Pipe**
>
> 4 Headwall
>
> 5 Mitered to slope
>
> 6 Projecting
>
> **Circular Pipe, Beveled Ring Entrance**
>
> 7 45 deg. bevels
>
> 8 33.7 deg. bevels
>
> **Rectangular Box; Flared Wingwalls**
>
> 9 30-75 deg. wingwall flares
>
> 10 90 or 15 deg. wingwall flares
>
> 11 0 deg. wingwall flares (straight sides)
>
> **Rectangular Box;Flared Wingwalls and Top Edge Bevel:**
>
> 12 45 deg flare; 0.43D top edge bevel
>
> 13 18-33.7 deg. flare; 0.083D top edge bevel
>
> **Rectangular Box, 90-deg Headwall, Chamfered / Beveled Inlet Edges**
>
> 14 chamfered 3/4-in.
>
> 15 beveled 1/2-in/ft at 45 deg (1:1)
>
> 16 beveled 1-in/ft at 33.7 deg (1:1.5)
>
> **Rectangular Box, Skewed Headwall, Chamfered / Beveled Inlet Edges**
>
> 17 3/4" chamfered edge, 45 deg skewed headwall
>
> 18 3/4" chamfered edge, 30 deg skewed headwall
>
> 19 3/4" chamfered edge, 15 deg skewed headwall
>
> 20 45 deg beveled edge, 10-45 deg skewed headwall
>
> **Rectangular Box, Non-offset Flared Wingwalls, 3/4" Chamfer at Top of Inlet**
>
> 21 45 deg (1:1) wingwall flare
>
> 22 8.4 deg (3:1) wingwall flare
>
> 23 18.4 deg (3:1) wingwall flare, 30 deg inlet skew
>
> **Rectangular Box, Offset Flared Wingwalls, Beveled Edge at Inlet Top**
>
> 24 45 deg (1:1) flare, 0.042D top edge bevel
>
> 25 33.7 deg (1.5:1) flare, 0.083D top edge bevel
>
> 26 18.4 deg (3:1) flare, 0.083D top edge bevel

**186**

**Corrugated Metal Box**

27 90 deg headwall

28 Thick wall projecting

29 Thin wall projecting

**Horizontal Ellipse Concrete**

30 Square edge with headwall

31 Grooved end with headwall

32 Grooved end projecting

**Vertical Ellipse Concrete**

33 Square edge with headwall

34 Grooved end with headwall

35 Grooved end projecting

**Pipe Arch, 18" Corner Radius, Corrugated Metal**

36 90 deg headwall

37 Mitered to slope

38 Projecting

**Pipe Arch, 18" Corner Radius, Corrugated Metal**

39 Projecting

40 No bevels

41 33.7 deg bevels

**Pipe Arch, 31" Corner Radius,Corrugated Metal**

42 Projecting

43 No bevels

44 33.7 deg. bevels

**Arch, Corrugated Metal**

45 90 deg headwall

46 Mitered to slope

47 Thin wall projecting

**Circular Culvert**

48 Smooth tapered inlet throat

49 Rough tapered inlet throat

**Elliptical Inlet Face**

50 Tapered inlet, beveled edges

51 Tapered inlet, square edges

52 Tapered inlet, thin edge projecting

**Rectangular**

53 Tapered inlet throat

**Rectangular Concrete**

54 Side tapered, less favorable edges

55 Side tapered, more favorable edges

56 Slope tapered, less favorable edges

57 Slope tapered, more favorable edges

**188**

**A.11 Culvert Entrance Loss Coefficients**

> **<u>Type of Structure and Design of Entrance Coefficient</u>**

- **<u>Pipe, Concrete</u>**

> Projecting from fill, socket end (groove-end) 0.2
>
> Projecting from fill, sq. cut end 0.5
>
> Headwall or headwall and wingwalls:
>
> Socket end of pipe (groove-end) 0.2
>
> Square-edge 0.5
>
> Rounded (radius = D/12) 0.2
>
> Mitered to conform to fill slope 0.7
>
> \*End-Section conforming to fill slope 0.5
>
> Beveled edges, 33.7 ° or 45 ° bevels 0.2
>
> Side- or slope-tapered inlet 0.2

- **<u>Pipe or Pipe-Arch. Corrugated Metal</u>**

> Projecting from fill (no headwall) 0.9
>
> Headwall or headwall and wingwalls square-edge 0.5
>
> Mitered to conform to fill slope, paved or unpaved slope 0.7
>
> \*End-Section conforming to fill slope 0.5
>
> Beveled edges, 33.7 ° or 45 ° bevels 0.2
>
> Side- or slope-tapered inlet 0.2

- **<u>Box, Reinforced Concrete</u>**

> Headwall parallel to embankment (no wingwalls):
>
> Square-edged on 3 edges 0.5  
> Rounded on 3 edges to radius of D/12 or B/12
>
> or beveled edges on 3 sides 0.2  
> Wingwalls at 30 ° to 75 ° to barrel:
>
> Square-edged at crown 0.4  
> Crown edge rounded to radius of D/12:
>
> or beveled top edge 0.2  
> Wingwall at 10 ° to 25 ° to barrel:
>
> Square-edged at crown 0.5  
> Wingwalls parallel (extension of sides):
>
> Square-edged at crown 0.7
>
> Side- or slope-tapered inlet 0.2
>
> \*Note: "End Sections conforming to fill slope," made of either metal or concrete, are the sections commonly available from manufacturers. From limited hydraulic tests they are equivalent in operation to a headwall in both inlet and outlet control. Some end sections, incorporating a closed taper in their design have a superior hydraulic performance. These latter sections can be designed using the information given for the beveled inlet.
>
> Source: Federal Highway Administration (2005). *Hydraulic Design of Highway Culverts*, Publication No. FHWA-NHI-01-020.

**189**

<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 25%" />
<col style="width: 21%" />
<col style="width: 22%" />
<col style="width: 21%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>A.12</strong></td>
<td colspan="2"><strong>Standard Elliptical Pipe Sizes</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><strong>Code</strong></td>
<td><strong>Minor Axis (in)</strong></td>
<td><strong>Major Axis (in)</strong></td>
<td><strong>Minor Axis (mm)</strong></td>
<td><strong>Major Axis (mm)</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>1</strong></p>
</blockquote></td>
<td>14</td>
<td>23</td>
<td>356</td>
<td>584</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>2</strong></p>
</blockquote></td>
<td>19</td>
<td>30</td>
<td>483</td>
<td>762</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>3</strong></p>
</blockquote></td>
<td>22</td>
<td>34</td>
<td>559</td>
<td>864</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>4</strong></p>
</blockquote></td>
<td>24</td>
<td>38</td>
<td>610</td>
<td>965</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>5</strong></p>
</blockquote></td>
<td>27</td>
<td>42</td>
<td>686</td>
<td>1067</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>6</strong></p>
</blockquote></td>
<td>29</td>
<td>45</td>
<td>737</td>
<td>1143</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>7</strong></p>
</blockquote></td>
<td>32</td>
<td>49</td>
<td>813</td>
<td>1245</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>8</strong></p>
</blockquote></td>
<td>34</td>
<td>53</td>
<td>864</td>
<td>1346</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>9</strong></p>
</blockquote></td>
<td>38</td>
<td>60</td>
<td>965</td>
<td>1524</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>10</strong></p>
</blockquote></td>
<td>43</td>
<td>68</td>
<td>1092</td>
<td>1727</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>11</strong></p>
</blockquote></td>
<td>48</td>
<td>76</td>
<td>1219</td>
<td>1930</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>12</strong></p>
</blockquote></td>
<td>53</td>
<td>83</td>
<td>1346</td>
<td>2108</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>13</strong></p>
</blockquote></td>
<td>58</td>
<td>91</td>
<td>1473</td>
<td>2311</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>14</strong></p>
</blockquote></td>
<td>63</td>
<td>98</td>
<td>1600</td>
<td>2489</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>15</strong></p>
</blockquote></td>
<td>68</td>
<td>106</td>
<td>1727</td>
<td>2692</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>16</strong></p>
</blockquote></td>
<td>72</td>
<td>113</td>
<td>1829</td>
<td>2870</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>17</strong></p>
</blockquote></td>
<td>77</td>
<td>121</td>
<td>1956</td>
<td>3073</td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>18</strong></p>
</blockquote></td>
<td>82</td>
<td>128</td>
<td>2083</td>
<td>3251</td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>19</strong></p>
</blockquote></td>
<td>87</td>
<td>136</td>
<td>2210</td>
<td>3454</td>
</tr>
<tr class="even">
<td><strong>20</strong></td>
<td>92</td>
<td>143</td>
<td>2337</td>
<td>3632</td>
</tr>
<tr class="odd">
<td><strong>21</strong></td>
<td>97</td>
<td>151</td>
<td>2464</td>
<td>3835</td>
</tr>
<tr class="even">
<td><strong>22</strong></td>
<td>106</td>
<td>166</td>
<td>2692</td>
<td>4216</td>
</tr>
<tr class="odd">
<td><strong>23</strong></td>
<td>116</td>
<td>180</td>
<td>2946</td>
<td>4572</td>
</tr>
</tbody>
</table>

> Note: The Minor Axis is the maximum width for a vertical ellipse and the full depth for a horizontal ellipse while the Major Axis is the maximum width for a horizontal ellipse and the full depth for a vertical ellipse.
>
> Source: *<u>Concrete Pipe Design Manual</u>*, American Concrete Pipe Association, 2011 [<u>(www.concrete-pipe.org)</u>](http://www.concrete-pipe.org/).

**190**

<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 30%" />
<col style="width: 18%" />
<col style="width: 23%" />
<col style="width: 17%" />
</colgroup>
<tbody>
<tr class="odd">
<td colspan="2"><blockquote>
<p><strong>A.13 Standard Arch Pipe Sizes Concrete Arch Pipes</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><strong>Code</strong></td>
<td><strong>Rise (in)</strong></td>
<td><strong>Span (in)</strong></td>
<td><strong>Rise (mm)</strong></td>
<td><strong>Span (mm)</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>1</strong></p>
</blockquote></td>
<td>11</td>
<td>18</td>
<td>279</td>
<td><blockquote>
<p>457</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>2</strong></p>
</blockquote></td>
<td>13.5</td>
<td>22</td>
<td>343</td>
<td><blockquote>
<p>559</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>3</strong></p>
</blockquote></td>
<td>15.5</td>
<td>26</td>
<td>394</td>
<td><blockquote>
<p>660</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>4</strong></p>
</blockquote></td>
<td>18</td>
<td>28.5</td>
<td>457</td>
<td><blockquote>
<p>724</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>5</strong></p>
</blockquote></td>
<td>22.5</td>
<td>36.25</td>
<td>572</td>
<td><blockquote>
<p>921</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>6</strong></p>
</blockquote></td>
<td>26.625</td>
<td>43.75</td>
<td>676</td>
<td><blockquote>
<p>1111</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>7</strong></p>
</blockquote></td>
<td>31.3125</td>
<td>51.125</td>
<td>795</td>
<td><blockquote>
<p>1299</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>8</strong></p>
</blockquote></td>
<td>36</td>
<td>58.5</td>
<td>914</td>
<td><blockquote>
<p>1486</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>9</strong></p>
</blockquote></td>
<td>40</td>
<td>65</td>
<td>1016</td>
<td><blockquote>
<p>1651</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>10</strong></p>
</blockquote></td>
<td>45</td>
<td>73</td>
<td>1143</td>
<td><blockquote>
<p>1854</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>11</strong></p>
</blockquote></td>
<td>54</td>
<td>88</td>
<td>1372</td>
<td><blockquote>
<p>2235</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>12</strong></p>
</blockquote></td>
<td>62</td>
<td>102</td>
<td>1575</td>
<td><blockquote>
<p>2591</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>13</strong></p>
</blockquote></td>
<td>72</td>
<td>115</td>
<td>1829</td>
<td><blockquote>
<p>2921</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>14</strong></p>
</blockquote></td>
<td>77.5</td>
<td>122</td>
<td>1969</td>
<td><blockquote>
<p>3099</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>15</strong></p>
</blockquote></td>
<td>87.125</td>
<td>138</td>
<td>2213</td>
<td><blockquote>
<p>3505</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>16</strong></p>
</blockquote></td>
<td>96.875</td>
<td>154</td>
<td>2461</td>
<td><blockquote>
<p>3912</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>17</strong></p>
</blockquote></td>
<td>106.5</td>
<td>168.75</td>
<td>2705</td>
<td><blockquote>
<p>4286</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **Corrugated Steel, 2-2/3 x 1/2" Corrugation**

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 20%" />
<col style="width: 22%" />
<col style="width: 23%" />
<col style="width: 18%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Code</strong></td>
<td><strong>Rise (in)</strong></td>
<td><strong>Span (in)</strong></td>
<td><strong>Rise (mm)</strong></td>
<td><strong>Span (mm)</strong></td>
</tr>
<tr class="even">
<td><strong>18</strong></td>
<td>13</td>
<td>17</td>
<td>330</td>
<td><blockquote>
<p>432</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>19</strong></td>
<td>15</td>
<td>21</td>
<td>381</td>
<td><blockquote>
<p>533</p>
</blockquote></td>
</tr>
<tr class="even">
<td><strong>20</strong></td>
<td>18</td>
<td>24</td>
<td>457</td>
<td><blockquote>
<p>610</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>21</strong></td>
<td>20</td>
<td>28</td>
<td>508</td>
<td><blockquote>
<p>711</p>
</blockquote></td>
</tr>
<tr class="even">
<td><strong>22</strong></td>
<td>24</td>
<td>35</td>
<td>610</td>
<td><blockquote>
<p>889</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>23</strong></td>
<td>29</td>
<td>42</td>
<td>737</td>
<td><blockquote>
<p>1067</p>
</blockquote></td>
</tr>
<tr class="even">
<td><strong>24</strong></td>
<td>33</td>
<td>49</td>
<td>838</td>
<td><blockquote>
<p>1245</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>25</strong></td>
<td>38</td>
<td>57</td>
<td>965</td>
<td><blockquote>
<p>1448</p>
</blockquote></td>
</tr>
<tr class="even">
<td><strong>26</strong></td>
<td>43</td>
<td>64</td>
<td>1092</td>
<td><blockquote>
<p>1626</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>27</strong></td>
<td>47</td>
<td>71</td>
<td>1194</td>
<td><blockquote>
<p>1803</p>
</blockquote></td>
</tr>
<tr class="even">
<td><strong>28</strong></td>
<td>52</td>
<td>77</td>
<td>1321</td>
<td><blockquote>
<p>1956</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><strong>29</strong></td>
<td>57</td>
<td>83</td>
<td>1448</td>
<td><blockquote>
<p>2108</p>
</blockquote></td>
</tr>
</tbody>
</table>

**191**

> **Corrugated Steel, 3 x 1" Corrugation**

|          |               |               |               |               |
|----------|---------------|---------------|---------------|---------------|
| **Code** | **Rise (in)** | **Span (in)** | **Rise (mm)** | **Span (mm)** |
| **30**   | 31            | 40            | 787           | 1016          |
| **31**   | 36            | 46            | 914           | 1168          |
| **32**   | 41            | 53            | 1041          | 1346          |
| **33**   | 46            | 60            | 1168          | 1524          |
| **34**   | 51            | 66            | 1295          | 1676          |
| **35**   | 55            | 73            | 1397          | 1854          |
| **36**   | 59            | 81            | 1499          | 2057          |
| **37**   | 63            | 87            | 1600          | 2210          |
| **38**   | 67            | 95            | 1702          | 2413          |
| **39**   | 71            | 103           | 1803          | 2616          |
| **40**   | 75            | 112           | 1905          | 2845          |
| **41**   | 79            | 117           | 2007          | 2972          |
| **42**   | 83            | 128           | 2108          | 3251          |
| **43**   | 87            | 137           | 2210          | 3480          |
| **44**   | 91            | 142           | 2311          | 3607          |

**192**

> **Structural Plate, 18" Corner Radius**

|          |               |               |               |               |
|----------|---------------|---------------|---------------|---------------|
| **Code** | **Rise (in)** | **Span (in)** | **Rise (mm)** | **Span (mm)** |
| **45**   | 55            | 73            | 1397          | 1854          |
| **46**   | 57            | 76            | 1448          | 1930          |
| **47**   | 59            | 81            | 1499          | 2057          |
| **48**   | 61            | 84            | 1549          | 2134          |
| **49**   | 63            | 87            | 1600          | 2210          |
| **50**   | 65            | 92            | 1651          | 2337          |
| **51**   | 67            | 95            | 1702          | 2413          |
| **52**   | 69            | 98            | 1753          | 2489          |
| **53**   | 71            | 103           | 1803          | 2616          |
| **54**   | 73            | 106           | 1854          | 2692          |
| **55**   | 75            | 112           | 1905          | 2845          |
| **56**   | 77            | 114           | 1956          | 2896          |
| **57**   | 79            | 117           | 2007          | 2972          |
| **58**   | 81            | 123           | 2057          | 3124          |
| **59**   | 83            | 128           | 2108          | 3251          |
| **60**   | 85            | 131           | 2159          | 3327          |
| **61**   | 87            | 137           | 2210          | 3480          |
| **62**   | 89            | 139           | 2261          | 3531          |
| **63**   | 91            | 142           | 2311          | 3607          |
| **64**   | 93            | 148           | 2362          | 3759          |
| **65**   | 95            | 150           | 2413          | 3810          |
| **66**   | 97            | 152           | 2464          | 3861          |
| **67**   | 100           | 154           | 2540          | 3912          |
| **68**   | 101           | 161           | 2565          | 4089          |
| **69**   | 103           | 167           | 2616          | 4242          |
| **70**   | 105           | 169           | 2667          | 4293          |
| **71**   | 107           | 171           | 2718          | 4343          |
| **72**   | 109           | 178           | 2769          | 4521          |
| **73**   | 111           | 184           | 2819          | 4674          |
| **74**   | 113           | 186           | 2870          | 4724          |
| **75**   | 115           | 188           | 2921          | 4775          |
| **76**   | 118           | 190           | 2997          | 4826          |
| **77**   | 119           | 197           | 3023          | 5004          |
| **78**   | 121           | 199           | 3073          | 5055          |

**193**

> **Structural Plate, 31" Corner Radius**

|          |               |               |               |               |
|----------|---------------|---------------|---------------|---------------|
| **Code** | **Rise (in)** | **Span (in)** | **Rise (mm)** | **Span (mm)** |
| **79**   | 112           | 159           | 2845          | 4039          |
| **80**   | 114           | 162           | 2896          | 4115          |
| **81**   | 116           | 168           | 2946          | 4267          |
| **82**   | 118           | 170           | 2997          | 4318          |
| **83**   | 120           | 173           | 3048          | 4394          |
| **84**   | 122           | 179           | 3099          | 4547          |
| **85**   | 124           | 184           | 3150          | 4674          |
| **86**   | 126           | 187           | 3200          | 4750          |
| **87**   | 128           | 190           | 3251          | 4826          |
| **88**   | 130           | 195           | 3302          | 4953          |
| **89**   | 132           | 198           | 3353          | 5029          |
| **90**   | 134           | 204           | 3404          | 5182          |
| **91**   | 136           | 206           | 3454          | 5232          |
| **92**   | 138           | 209           | 3505          | 5309          |
| **93**   | 140           | 215           | 3556          | 5461          |
| **94**   | 142           | 217           | 3607          | 5512          |
| **95**   | 144           | 223           | 3658          | 5664          |
| **96**   | 146           | 225           | 3708          | 5715          |
| **97**   | 148           | 231           | 3759          | 5867          |
| **98**   | 150           | 234           | 3810          | 5944          |
| **99**   | 152           | 236           | 3861          | 5994          |
| **100**  | 154           | 239           | 3912          | 6071          |
| **101**  | 156           | 245           | 3962          | 6223          |
| **102**  | 158           | 247           | 4013          | 6274          |

> Source: *<u>Modern Sewer Design</u>* (Fourth Edition), American Iron and Steel Institute, Washington, DC, 1999.

**194**

**APPENDIX B – VISUAL OBJECT PROPERTIES**

> **B.1 Rain Gage Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned rain gage name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the rain gage on the Study Area Map. If left blank then the rain gage will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the rain gage on the Study Area Map. If left blank then the rain gage will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the rain gage.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the rain gage.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Rain Format</em></p>
</blockquote></td>
<td><blockquote>
<p>Format in which the rain data are supplied:</p>
<p><em><strong>INTENSITY:</strong></em> each rainfall value is an average rate in inches/hour (or mm/hour) over the recording interval,</p>
<p><em><strong>VOLUME:</strong></em> each rainfall value is the volume of rain that fell in the recording interval (in inches or millimeters),</p>
<p><em><strong>CUMULATIVE:</strong></em> each rainfall value represents the cumulative rainfall that has occurred since the start of the last series of non-zero values (in inches or millimeters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Rain Interval</em></p>
</blockquote></td>
<td><blockquote>
<p>Recording time interval between gage readings in either decimal hours or hours:minutes format.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Snow Catch Factor</em></p>
</blockquote></td>
<td><blockquote>
<p>Factor that corrects gage readings for snowfall.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Data Source</em></p>
</blockquote></td>
<td><blockquote>
<p>Source of rainfall data; either <em><strong>TIMESERIES</strong></em> for user-supplied time series data or <em><strong>FILE</strong></em> for an external data file.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em><strong>TIME SERIES</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- Series Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of time series with rainfall data if Data Source selection was <em><strong>TIMESERIES</strong></em>; leave blank otherwise (double-click to edit the series).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em><strong>DATA FILE</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- File Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of external file containing rainfall data (see Section 11.3).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Station No.</em></p>
</blockquote></td>
<td><blockquote>
<p>Recording gage station number.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- Rain Units</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth units (<strong>IN</strong> or <strong>MM</strong>) for rainfall values in user-prepared files (other standard file formats have fixed units depending on the format).</p>
</blockquote></td>
</tr>
</tbody>
</table>

**195**

> **B.2 Subcatchment Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned subcatchment name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the subcatchment's centroid on the Study Area Map. If left blank then the subcatchment will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the subcatchment's centroid on the Study Area Map. If left blank then the subcatchment will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Rain Gage</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of the rain gage associated with the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of the node or subcatchment which receives the subcatchment's runoff.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Area</em></p>
</blockquote></td>
<td><blockquote>
<p>Area of the subcatchment , including any LID controls (acres or hectares).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Width<sup>1</sup></em></p>
</blockquote></td>
<td><blockquote>
<p>Characteristic width of the overland flow path for sheet flow runoff (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>% Slope</em></p>
</blockquote></td>
<td><blockquote>
<p>Average percent slope of the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>% Imperv</em></p>
</blockquote></td>
<td><blockquote>
<p>Percent of land area (excluding the area used for LID controls) which is impervious.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>N-Imperv</em></p>
</blockquote></td>
<td><blockquote>
<p>Manning's n for overland flow over the impervious portion of the subcatchment (see Section A.6 for typical values).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>N-Perv</em></p>
</blockquote></td>
<td><blockquote>
<p>Manning's n for overland flow over the pervious portion of the subcatchment (see Section A.6 for typical values).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Dstore-Imperv</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth of depression storage on the impervious portion of the subcatchment (inches or millimeters) (see Section A.5 for typical values).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Dstore-Perv</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth of depression storage on the pervious portion of the subcatchment (inches or millimeters) (see Section A.5 for typical values).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>% Zero-Imperv</em></p>
</blockquote></td>
<td><blockquote>
<p>Percent of the impervious area with no depression storage.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Subarea Routing</em></p>
</blockquote></td>
<td><blockquote>
<p>Choice of internal routing of runoff between pervious and impervious areas:</p>
<p><em><strong>IMPERV</strong></em>: runoff from pervious area flows to impervious area, <em><strong>PERV</strong></em>: runoff from impervious area flows to pervious area, <em><strong>OUTLET</strong></em>: runoff from both areas flows directly to outlet.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Percent Routed</em></p>
</blockquote></td>
<td><blockquote>
<p>Percent of runoff routed between subareas.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Infiltration</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit infiltration parameters for the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>LID Controls</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit the use of low impact development controls in the subcatchment.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**196**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Groundwater</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit groundwater flow parameters for the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Snow Pack</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of snow pack parameter set (if any) assigned to the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Land Uses</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to assign land uses to the subcatchment. Only needed if pollutant buildup/washoff modeled.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Initial Buildup</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to specify initial quantities of pollutant buildup over the subcatchment.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Curb Length</em></p>
</blockquote></td>
<td><blockquote>
<p>Total length of curbs in the subcatchment (any length units). Used only when pollutant buildup is normalized to curb length.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> 1 An initial estimate of the characteristic width is given by the subcatchment area divided by the average maximum overland flow length. The maximum overland flow length is the length of the flow path from the furthest drainage point of the subcatchment before the flow becomes channelized. Maximum lengths from several different possible flow paths should be averaged. These paths should reflect slow flow, such as over pervious surfaces, more than rapid flow over pavement, for example. Adjustments should be made to the width parameter to produce good fits to measured runoff hydrographs.

**197**

**B.3 Junction Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned junction name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the junction on the Study Area Map. If left blank then the junction will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the junction on the Study Area Map. If left blank then the junction will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the junction.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the junction.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inflows</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to assign external direct, dry weather or RDII inflows to the junction.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Treatment</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit a set of treatment functions for pollutants entering the node.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Invert El.</em></p>
</blockquote></td>
<td><blockquote>
<p>Invert elevation of the junction (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Max. Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Maximum depth of junction (i.e., from ground surface to invert) (feet or meters). If zero, then the distance from the invert to the top of the highest connecting link will be used.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Initial Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth of water at the junction at the start of the simulation (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Surcharge Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Additional depth of water beyond the maximum depth that is allowed before the junction floods (feet or meters). This parameter can be used to simulate bolted manhole covers or force main connections.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Ponded Area</em></p>
</blockquote></td>
<td><blockquote>
<p>Area occupied by ponded water atop the junction after flooding occurs (sq. feet or sq. meters). If the <strong>Allow Ponding</strong> simulation option is turned on, a non-zero value of this parameter will allow ponded water to be stored and subsequently returned to the conveyance system when capacity exists.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**198**

**B.4 Outfall Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned outfall name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the outfall on the Study Area Map. If left blank then the outfall will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the outfall on the Study Area Map. If left blank then the outfall will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the outfall.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the outfall.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inflows</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to assign external direct, dry weather or RDII inflows to the outfall.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Treatment</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit a set of treatment functions for pollutants entering the node.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Invert El.</em></p>
</blockquote></td>
<td><blockquote>
<p>Invert elevation of the outfall (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tide Gate</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES -</strong></em> tide gate present to prevent backflow<br />
<em><strong>NO -</strong></em> no tide gate present</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Route To</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional name of a subcatchment that receives the outfall's discharge.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Type</em></p>
</blockquote></td>
<td><blockquote>
<p>Type of outfall boundary condition:</p>
<p><em><strong>FREE</strong>:</em> outfall stage determined by minimum of critical flow depth and normal flow depth in the connecting conduit</p>
<p><em><strong>NORMAL</strong>:</em> outfall stage based on normal flow depth in connecting conduit <em><strong>FIXED</strong>:</em> outfall stage set to a fixed value</p>
<p><em><strong>TIDAL</strong>:</em> outfall stage given by a table of tide elevation versus time of day <em><strong>TIMESERIES</strong>:</em> outfall stage supplied from a time series of elevations.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Fixed Stage</em></p>
</blockquote></td>
<td><blockquote>
<p>Water elevation for a <em><strong>FIXED</strong></em> type of outfall (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tidal Curve Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of the Tidal Curve relating water elevation to hour of the day for a <em><strong>TIDAL</strong></em> outfall (double-click to edit the curve).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Time Series Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of time series containing time history of outfall elevations for a <em><strong>TIMESERIES</strong></em> outfall (double-click to edit the series).</p>
</blockquote></td>
</tr>
</tbody>
</table>

**199**

> **B.5 Flow Divider Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned divider name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the divider on the Study Area Map. If left blank then the divider will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the divider on the Study Area Map. If left blank then the divider will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the divider.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the divider.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inflows</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to assign external direct, dry weather or RDII inflows to the divider.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Treatment</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit a set of treatment functions for pollutants entering the node.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Invert El.</em></p>
</blockquote></td>
<td><blockquote>
<p>Invert elevation of the divider (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Max. Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Maximum depth of divider (i.e., from ground surface to invert) (feet or meters). See description for <em>Junctions</em>.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Initial Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth of water at the divider at the start of the simulation (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Surcharge Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Additional depth of water beyond the maximum depth that is allowed before the divider floods (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Ponded Area</em></p>
</blockquote></td>
<td><blockquote>
<p>Area occupied by ponded water atop the junction after flooding occurs (sq. feet or sq. meters). See description for <em>Junctions</em>.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Diverted Link</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of link which receives the diverted flow.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Type</em></p>
</blockquote></td>
<td><blockquote>
<p>Type of flow divider. Choices are:</p>
<p><em><strong>CUTOFF</strong></em> (diverts all inflow above a defined cutoff value),</p>
<p><em><strong>OVERFLOW</strong></em> (diverts all inflow above the flow capacity of the non-diverted link),</p>
<p><em><strong>TABULAR</strong></em> (uses a Diversion Curve to express diverted flow as a function of the total inflow),</p>
<p><em><strong>WEIR</strong></em> (uses a weir equation to compute diverted flow).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="2"><blockquote>
<p><em><strong>CUTOFF DIVIDER</strong></em></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Cutoff Flow</em></p>
</blockquote></td>
<td><blockquote>
<p>Cutoff flow value used for a <em><strong>CUTOFF</strong></em> divider (flow units).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="2"><blockquote>
<p><em><strong>TABULAR DIVIDER</strong></em></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Curve Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of Diversion Curve used with a <em><strong>TABULAR</strong></em> divider (double-click to edit the curve).</p>
</blockquote></td>
</tr>
</tbody>
</table>

**200**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 77%" />
</colgroup>
<tbody>
<tr class="odd">
<td colspan="2"><blockquote>
<p><em><strong>WEIR DIVIDER</strong></em></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Min. Flow</em></p>
</blockquote></td>
<td><blockquote>
<p>Minimum flow at which diversion begins for a <em><strong>WEIR</strong></em> divider (flow units).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- Max. Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical height of <strong>WEIR</strong> opening (feet or meters)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Coefficient</em></p>
</blockquote></td>
<td><blockquote>
<p>Product of <strong>WEIR</strong>'s discharge coefficient and its length. Weir coefficients are typically in the range of 2.65 to 3.10 per foot, for flows in CFS.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **Note:** Flow dividers are operational only for Steady Flow and Kinematic Wave flow routing. For Dynamic Wave flow routing they behave as Junction nodes.

**201**

> **B.6 Storage Unit Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned storage unit name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the storage unit on the Study Area Map. If left blank then the storage unit will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the storage unit on the Study Area Map. If left blank then the storage unit will not appear on the map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the storage unit.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the storage unit.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inflows</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to assign external direct, dry weather or RDII inflows to the storage unit.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Treatment</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit a set of treatment functions for pollutants within the storage unit.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Invert El.</em></p>
</blockquote></td>
<td><blockquote>
<p>Elevation of the bottom of the storage unit (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Max. Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Maximum depth of the storage unit (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Initial Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Initial depth of water in the storage unit at the start of the simulation (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Evap. Factor</em></p>
</blockquote></td>
<td><blockquote>
<p>The fraction of the potential evaporation from the storage unit’s water surface that is actually realized.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Seepage Loss</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to specify optional soil properties that determine seepage loss through the bottom and sloped sides of the storage unit.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Storage Curve</em></p>
</blockquote></td>
<td><blockquote>
<p>Method of describing how the surface area of the storage unit varies with water depth:</p>
<p><strong>FUNCTIONAL</strong> uses the function</p>
<p><em>Area = A×(Depth)<sup>B</sup> + C</em></p>
<p>to describe how surface area varies with depth;</p>
<p><strong>TABULAR</strong> uses a tabulated area versus depth curve.</p>
<p>In either case, depth is measured in feet (or meters) above the bottom and surface area in sq. feet (or sq. meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em><strong>FUNCTIONAL</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>A-value in the functional relationship between surface area and storage depth.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Exponent</em></p>
</blockquote></td>
<td><blockquote>
<p>B-value in the functional relationship between surface area and storage depth.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Constant</em></p>
</blockquote></td>
<td><blockquote>
<p>C-value in the functional relationship between surface area and storage depth.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**202**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em><strong>TABULAR</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Curve Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of the Storage Curve containing the relationship between surface area and storage depth (double-click to edit the curve). The curve will be extrapolated outwards to meet the unit's Max. Depth if need be.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**203**

**B.7 Conduit Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned conduit name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the inlet end of the conduit (which is normally the end at higher elevation).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the outlet end of the conduit (which is normally the end at lower elevation).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the conduit.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the conduit.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Shape</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit the geometric properties of the conduit's cross section.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Max. Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Maximum depth of the conduit's cross section (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Length</em></p>
</blockquote></td>
<td><blockquote>
<p>Conduit length (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Roughness</em></p>
</blockquote></td>
<td><blockquote>
<p>Manning's roughness coefficient (see Section A.7 for closed conduit values or Section A.8 for open channel values).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Offset</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth or elevation of the conduit invert above the node invert at the upstream end of the conduit (feet or meters). See note below.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Offset</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth or elevation of the conduit invert above the node invert at the downstream end of the conduit (feet or meters). See note below.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Initial Flow</em></p>
</blockquote></td>
<td><blockquote>
<p>Initial flow in the conduit (flow units).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Maximum Flow</em></p>
</blockquote></td>
<td><blockquote>
<p>Maximum flow allowed in the conduit (flow units) – use 0 or leave blank if not applicable.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Entry Loss Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>Head loss coefficient associated with energy losses at the entrance of the conduit. For culverts, refer to Table A11.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Exit Loss Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>Head loss coefficient associated with energy losses at the exit of the conduit. For culverts, use a value of 1.0</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Avg. Loss Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>Head loss coefficient associated with energy losses along the length of the conduit.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Flap Gate</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES</strong></em> if a flap gate exists that prevents backflow through the conduit, or <em><strong>NO</strong></em> if no flap gate exists.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Culvert Code</em></p>
</blockquote></td>
<td><blockquote>
<p>Code number of inlet geometry if conduit is a culvert – leave blank otherwise. Culvert code numbers are listed in Table A10.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**204**

<table>
<colgroup>
<col style="width: 61%" />
<col style="width: 38%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>NOTE:</strong> Conduits and flow regulators (orifices, weirs, and outlets) can be offset some distance above the invert of their connecting end nodes. There are two different conventions available for specifying the location of these offsets. The Depth convention uses the offset distance from the node’s invert (distance between  and  in the figure on the right). The Elevation convention uses the absolute elevation of the offset location (the elevation of point  in the figure). The choice of convention can be made on the Status Bar of SWMM’s main window or on the Node/Link Properties page of the Project Defaults dialog.</p>
</blockquote></td>
<td><img src="./media/image166.png" style="width:2.16667in;height:2.15694in" /></td>
</tr>
</tbody>
</table>

> **B.8 Pump Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned pump name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the inlet side of the pump.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the outlet side of the pump.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the pump.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the pump.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Pump Curve</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of the Pump Curve which contains the pump's operating data (double-click to edit the curve). Enter * for an Ideal pump.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Initial Status</em></p>
</blockquote></td>
<td><blockquote>
<p>Status of the pump (<em><strong>ON</strong></em> or <em><strong>OFF</strong></em>) at the start of the simulation.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Startup Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth at inlet node when pump turns on (feet or meters). Enter 0 if not applicable.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Shutoff Depth</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth at inlet node when pump shuts off (feet or meters). Enter 0 if not applicable.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**205**

**B.9 Orifice Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned orifice name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the inlet side of the orifice.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on the outlet side of the orifice.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the orifice.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the orifice.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Type</em></p>
</blockquote></td>
<td><blockquote>
<p>Type of orifice (<em><strong>SIDE</strong></em> or <em><strong>BOTTOM</strong></em>).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Shape</em></p>
</blockquote></td>
<td><blockquote>
<p>Orifice shape (<em><strong>CIRCULAR</strong></em> or <em><strong>RECT</strong>_<strong>CLOSED</strong></em>).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Height</em></p>
</blockquote></td>
<td><blockquote>
<p>Height of orifice opening when fully open (feet or meters). Corresponds to the diameter of a circular orifice or the height of a rectangular orifice.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Width</em></p>
</blockquote></td>
<td><blockquote>
<p>Width of rectangular orifice when fully opened (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Offset</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth or elevation of bottom of orifice above invert of inlet node (feet or meters – see note below table of Conduit Properties).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Discharge Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>Discharge coefficient (unitless). A typical value is 0.65.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Flap Gate</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES</strong></em> if a flap gate exists which prevents backflow through the orifice, or <em><strong>NO</strong></em> if no flap gate exists.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Time to Open /<br />
Close</em></p>
</blockquote></td>
<td><blockquote>
<p>The time it takes to open a closed (or close an open) gated orifice in decimal hours. Use 0 or leave blank if timed openings/closings do not apply. Use Control Rules to adjust gate position.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**206**

> **B.10 Weir Properties**

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned weir name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on inlet side of weir.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on outlet side of weir.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the weir.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the weir.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Type</em></p>
</blockquote></td>
<td><blockquote>
<p>Weir type: <strong>TRANSVERSE</strong>, <strong>SIDEFLOW</strong>, <strong>V-NOTCH</strong>, <strong>TRAPEZOIDAL</strong> or <strong>ROADWAY</strong>.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Height</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical height of weir opening (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Length</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal length of weir opening (feet or meters).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Side Slope</em></p>
</blockquote></td>
<td><blockquote>
<p>Slope (width-to-height) of side walls for a <em><strong>V-NOTCH</strong></em> or <em><strong>TRAPEZOIDAL</strong></em> weir.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Offset</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth or elevation of bottom of weir opening from invert of inlet node (feet or meters – see note below table of Conduit Properties).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Discharge Coeff.<sup>1</sup></em></p>
</blockquote></td>
<td><blockquote>
<p>Discharge coefficient for flow through the central portion of the weir (for flow in CFS when using US units or CMS when using SI units).</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Flap Gate</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES</strong></em> if the weir has a flap gate that prevents backflow, <em><strong>NO</strong></em> otherwise..</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>End Coeff.</em></p>
</blockquote></td>
<td><blockquote>
<p>Discharge coefficient for flow through the triangular ends of a <em><strong>TRAPEZOIDAL</strong></em> weir. See the recommended values for V-notch weirs.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>End Contractions</em></p>
</blockquote></td>
<td><blockquote>
<p>Number of end contractions for a <em><strong>TRANSVERSE</strong></em> or <em><strong>TRAPEZOIDAL</strong></em> weir whose length is shorter than the channel it is placed in. Values will be either <em><strong>0</strong></em>, <em><strong>1</strong></em>, or <em><strong>2</strong></em> depending if no ends, one end, or both ends are beveled in from the side walls.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Can Surcharge</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES</strong></em> if the weir can surcharge (have an upstream water level higher than the height of the opening) or <em><strong>NO</strong></em> if it cannot.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em><strong>ROADWAY WEIR</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Road Width</em></p>
</blockquote></td>
<td><blockquote>
<p>Width of roadway and shoulders (feet or meters)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Road Surface</em></p>
</blockquote></td>
<td><blockquote>
<p>Type of road surface: <em><strong>PAVED</strong></em> or <em><strong>GRAVEL</strong></em>.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> <sup>1</sup> Typical values are: 3.33 US (1.84 SI) for sharp crested transverse weirs, 2.5 - 3.3 US (1.38 - 1.83 SI) for broad crested rectangular weirs, 2.4 - 2.8 US (1.35 - 1.55 SI) for V-notch (triangular) weirs. Discharge over Roadway weirs with a non-zero road width is computed using the FHWA HDS-5 method.

**207**

**B.11 Outlet Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Name</em></p>
</blockquote></td>
<td><blockquote>
<p>User-assigned outlet name.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on inflow side of outlet.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Outlet Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node on discharge side of outlet.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Description</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to edit an optional description of the outlet.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Tag</em></p>
</blockquote></td>
<td><blockquote>
<p>Optional label used to categorize or classify the outlet.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Inlet Offset</em></p>
</blockquote></td>
<td><blockquote>
<p>Depth or elevation of outlet above inlet node invert (feet or meters – see note below table of Conduit Properties).</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Flap Gate</em></p>
</blockquote></td>
<td><blockquote>
<p><em><strong>YES</strong></em> if a flap gate exists which prevents backflow through the outlet, or <em><strong>NO</strong></em> if no flap gate exists.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Rating Curve</em></p>
</blockquote></td>
<td><blockquote>
<p>Method of defining flow (Q) as a function of depth or head (y) across the outlet.</p>
<p><em><strong>FUNCTIONAL/DEPTH</strong></em> uses a power function (Q = Ay<sup>B</sup>) to describe this relation where y is the depth of water above the outlet’s opening at the inlet node.</p>
<p><em><strong>FUNCTIONAL/HEAD</strong></em> uses the same power function except that y is the difference in head across the outlet’s nodes.</p>
<p><em><strong>TABULAR/DEPTH</strong></em> uses a tabulated curve of flow versus depth of water above the outlet’s opening at the inlet node.</p>
<p><em><strong>TABULAR/HEAD</strong></em> uses a tabulated curve of flow versus difference in head across the outlet’s nodes.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em><strong>FUNCTIONAL</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>- Coefficient</em></p>
</blockquote></td>
<td><blockquote>
<p>Coefficient (A) for the functional relationship between depth or head and flow rate.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- Exponent</em></p>
</blockquote></td>
<td><blockquote>
<p>Exponent (B) used for the functional relationship between depth or head and flow rate.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em><strong>TABULAR</strong></em></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>- Curve Name</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of Rating Curve containing the relationship between depth or head and flow rate (double-click to edit the curve).</p>
</blockquote></td>
</tr>
</tbody>
</table>

**208**

**B.12 Map Label Properties**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><em>Text</em></p>
</blockquote></td>
<td><blockquote>
<p>Text of label.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>X-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Horizontal location of the upper-left corner of the label on the Study Area Map.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Y-Coordinate</em></p>
</blockquote></td>
<td><blockquote>
<p>Vertical location of the upper-left corner of the label on the Study Area Map.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p><em>Anchor Node</em></p>
</blockquote></td>
<td><blockquote>
<p>Name of node (or subcatchment) that anchors the label's position when the map is zoomed in (i.e., the pixel distance between the node and the label remains constant). Leave blank if anchoring is not used.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><em>Font</em></p>
</blockquote></td>
<td><blockquote>
<p>Click the ellipsis button (or press Enter) to modify the font used to draw the label.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**209**

> **APPENDIX C – SPECIALIZED PROPERTY EDITORS**
>
> **C.1 Aquifer Editor**
>
> The Aquifer Editor is invoked whenever a new aquifer object is created or an existing aquifer object is selected for editing. It contains the following data fields:
>
> **Tension Slope**
>
> Average slope of soil tension versus soil moisture content curve (inches or mm).
>
> **Upper Evaporation Fraction**
>
> Fraction of total evaporation available for evapotranspiration in the upper unsaturated zone.
>
> **Lower Evaporation Depth**
>
> Maximum depth below the surface at which evapotranspiration from the lower saturated zone can
>
> still occur (ft or m).

**210**

> **Lower Groundwater Loss Rate**
>
> Rate of percolation to deep groundwater when the water table reaches the ground surface (in/hr
>
> or mm/hr).
>
> **Bottom Elevation**
>
> Elevation of the bottom of the aquifer (ft or m).
>
> **Water Table Elevation**
>
> Elevation of the water table in the aquifer at the start of the simulation (ft or m).
>
> **Unsaturated Zone Moisture**
>
> Moisture content of the unsaturated upper zone of the aquifer at the start of the simulation
>
> (volumetric fraction) (cannot exceed soil porosity).
>
> **Upper Evaporation Pattern**
>
> Name of the monthly time pattern of adjustments applied to the upper evaporation fraction
>
> (optional – leave blank if not applicable).

**211**

> **C.2 Climatology Editor**
>
> The Climatology Editor is used to enter values for various climate-related variables required by certain SWMM simulations. The dialog is divided into six tabbed pages, where each page provides a separate editor for a specific category of climate data.
>
> <u>Temperature Page</u>
>
> <img src="./media/image168.jpg" style="width:4.17639in;height:5.25972in" />
>
> The Temperature page of the Climatology Editor dialog is used to specify the source of temperature data used for snowmelt computations. It is also used to select a climate file as a possible source for evaporation rates. There are three choices available:
>
> **No Data:** Select this choice if snowmelt is not being simulated and evaporation rates are
>
> not based on data in a climate file.
>
> **Time Series:** Select this choice if the variation in temperature over the simulation period will be described by one of the project's time series. Also, enter (or select) the name of

**212**

> the time series. Click the button to make the Time Series Editor appear for
>
> the selected time series.
>
> **External**
>
> **Climate File:** Select this choice if min/max daily temperatures will be read from an external
>
> climate file (see Section 11.4). Also enter the name of the file (or click the button to search for the file). If you want to start reading the climate file at a particular date in time that is different than the start date of the simulation (as specified in the Simulation Options), check off the “Start Reading File at” box and enter a starting date (month/day/year) in the date entry field next to it. Use this choice if you want daily evaporation rates to be estimated from daily temperatures or be read directly from the file.
>
> <u>Evaporation Page</u>
>
> <img src="./media/image170.jpg" style="width:4.17639in;height:5.25972in" />

**213**

> The Evaporation page of the Climatology Editor dialog is used to supply evaporation rates, in inches/day (or mm/day), for a study area. There are five choices for specifying these rates that are selected from the **Source of Evaporation Rates** combo box:
>
> **Constant Value**:
>
> Use this choice if evaporation remains constant over time. Enter the value in the edit box
>
> provided.
>
> **Time Series:**
>
> Select this choice if evaporation rates will be specified in a time series. Enter or select the name
>
> of the time series in the dropdown combo box provided. Click the button to bring up the Time
>
> Series editor for the selected series. Note that for each date specified in the time series, the evaporation rate remains constant at the value supplied for that date until the next date in the series is reached (i.e., interpolation is not used on the series).
>
> **Directly From Climate File:**
>
> This choice indicates that daily evaporation rates will be read from the same climate file that was
>
> specified for temperature. Enter values for monthly pan coefficients in the data grid provided.
>
> **Monthly Averages:**
>
> Use this choice to supply an average rate for each month of the year. Enter the value for each
>
> month in the data grid provided. Note that rates remain constant within each month.
>
> **Computed from Temperatures:**
>
> The Hargreaves method will be used to compute daily evaporation rates from the daily air temperature record contained in the external climate file specified on the Temperature page of the dialog. This method also uses the site’s latitude, which can be entered on the Snowmelt page of the dialog even if snow melt is not being simulated.
>
> **Evaporate Only During Dry Periods:**
>
> Select this option if evaporation can only occur during periods with no precipitation.
>
> In addition this page allows the user to specify an optional **Monthly Soil Recovery Pattern**. This is a time pattern whose factors adjust the rate at which infiltration capacity is recovered during periods with no precipitation. It applies to all subcatchments for any choice of infiltration method. For example, if the normal infiltration recovery rate was 1% during a specific time period and a pattern factor of 0.8 applied to this period, then the actual recovery rate would be 0.8%. The Soil Recovery Pattern allows one to account for seasonal soil drying rates. In principle, the variation in pattern factors should mirror the variation in evaporation rates but might be influenced by other
>
> factors such as seasonal groundwater levels. The button is used to launch the Time Pattern
>
> Editor for the selected pattern.

**214**

> <u>Wind Speed Page</u>
>
> <img src="./media/image171.jpg" style="width:4.17639in;height:5.25625in" />
>
> The Wind Speed page of the Climatology Editor dialog is used to provide average monthly wind speeds. These are used when computing snowmelt rates under rainfall conditions. Melt rates increase with increasing wind speed. Units of wind speed are miles/hour for US units and km/hour for metric units. There are two choices for specifying wind speeds:
>
> **Climate File Data:** Wind speeds will be read from the same climate file that was specified for temperature.
>
> **Monthly Averages:** Wind speed is specified as an average value that remains constant in each month of the year. Enter a value for each month in the data grid provided. The default values are all zero.

**215**

> <u>Snowmelt Page</u>
>
> <img src="./media/image172.jpg" style="width:4.17639in;height:5.25625in" />
>
> The Snowmelt page of the Climatology Editor dialog is used to supply values for the following parameters related to snow melt calculations:
>
> **Dividing Temperature Between Snow and Rain**
>
> Enter the temperature below which precipitation falls as snow instead of rain. Use degrees F for
>
> US units or degrees C for metric units.
>
> **ATI (Antecedent Temperature Index) Weight**
>
> This parameter reflects the degree to which heat transfer within a snow pack during non-melt periods is affected by prior air temperatures. Smaller values reflect a thicker surface layer of snow which results in reduced rates of heat transfer. Values must be between 0 and 1, and the default is 0.5.
>
> **Negative Melt Ratio**
>
> This is the ratio of the heat transfer coefficient of a snow pack during non-melt conditions to the
>
> coefficient during melt conditions. It must be a number between 0 and 1. The default value is 0.6.

**216**

> **Elevation Above MSL**
>
> Enter the average elevation above mean sea level for the study area, in feet or meters. This value is used to provide a more accurate estimate of atmospheric pressure. The default is 0.0, which results in a pressure of 29.9 inches Hg. The effect of wind on snow melt rates during rainfall periods is greater at higher pressures, which occur at lower elevations.
>
> **Latitude**
>
> Enter the latitude of the study area in degrees North. This number is used when computing the hours of sunrise and sunset, which in turn are used to extend min/max daily temperatures into continuous values. It is also used to compute daily evaporation rates from daily temperatures. The default is 50 degrees North.
>
> **Longitude Correction**
>
> This is a correction, in minutes of time, between true solar time and the standard clock time. It depends on a location's longitude (0) and the standard meridian of its time zone (SM) through the expression 4(0-SM). This correction is used to adjust the hours of sunrise and sunset when extending daily min/max temperatures into continuous values. The default value is 0.
>
> **217**
>
> <u>Areal Depletion Page</u>
>
> <img src="./media/image173.jpg" style="width:4.17639in;height:5.25625in" />
>
> The Areal Depletion page of the Climatology Editor Dialog is used to specify points on the Areal Depletion Curves for both impervious and pervious surfaces within a project's study area. These curves define the relation between the area that remains snow covered and snow pack depth. Each curve is defined by 10 equal increments of relative depth ratio between 0 and 0.9. (Relative depth ratio is the ratio of an area's current snow depth to the depth at which there is 100% areal coverage).
>
> Enter values in the data grid provided for the fraction of each area that remains snow covered at each specified relative depth ratio. Valid numbers must be between 0 and 1, and be increasing with increasing depth ratio.
>
> Clicking the **Natural Area** button fills the grid with values that are typical of natural areas. Clicking the **No Depletion** button will fill the grid with all 1's, indicating that no areal depletion occurs. This is the default for new projects.
>
> **218**
>
> <u>Adjustments Page</u>
>
> <img src="./media/image174.jpg" style="width:4.17639in;height:5.25625in" />
>
> The Adjustments page of the Climatology Editor Dialog is used to supply a set of monthly adjustments applied to the temperature, evaporation rate, rainfall, and soil hydraulic conductivity that SWMM uses at each time step of a simulation:

- The monthly Temperature adjustment (plus or minus in either degrees F or C) is added to the temperature value that SWMM would otherwise use in a specific month of the year.

- The monthly Evaporation adjustment (plus or minus in either in/day or mm/day) is added to the evaporation rate value that SWMM would otherwise use in a specific month of the year.

- The monthly Rainfall adjustment is a multiplier applied to the precipitation value that SWMM would otherwise use in a specific month of the year.

- The monthly Conductivity adjustment is a multiplier applied to the soil hydraulic conductivity used compute rainfall infiltration, groundwater percolation, and exfiltration from channels and storage units.

> The same adjustment is applied for each time period within a given month and is repeated for that month in each subsequent year being simulated. Leaving a monthly adjustment blank means that there is no adjustment made in that month.
>
> **219**
>
> **C.3 Control Rules Editor**
>
> <img src="./media/image175.jpg" style="width:3.84306in;height:3.1in" />
>
> The Control Rules Editor is invoked whenever a new control rule is created or an existing rule is selected for editing. The editor contains a memo field where the entire collection of control rules is displayed and can be edited.
>
> <u>Control Rule Format</u>
>
> Each control rule is a series of statements of the form:
>
> **RULE** ruleID
>
> **IF** condition_1  
> **AND** condition_2
>
> **OR** condition_3  
> **AND** condition_4  
> Etc.
>
> **THEN** action_1  
> **AND** action_2  
> Etc.
>
> **ELSE** action_3  
> **AND** action_4  
> Etc.
>
> **PRIORITY** value
>
> where keywords are shown in boldface and ruleID is an ID label assigned to the rule, condition_n is a Condition Clause, action_n is an Action Clause, and value is a priority

**220**

> value (e.g., a number from 1 to 5). The formats used for Condition and Action clauses are discussed below.
>
> Only the RULE, IF and THEN portions of a rule are required; the ELSE and PRIORITY portions are optional.
>
> Blank lines between clauses are permitted and any text to the right of a semicolon is considered a comment.
>
> When mixing AND and OR clauses, the OR operator has higher precedence than AND, i.e.,
>
> IF A or B and C
>
> is equivalent to
>
> IF (A or B) and C.
>
> If the interpretation was meant to be
>
> IF A or (B and C)
>
> then this can be expressed using two rules as in
>
> IF A THEN ...
>
> IF B and C THEN ...
>
> The PRIORITY value is used to determine which rule applies when two or more rules require that conflicting actions be taken on a link. A conflicting rule with a higher priority value has precedence over one with a lower value (e.g., PRIORITY 5 outranks PRIORITY 1). A rule without a priority value always has a lower priority than one with a value. For two rules with the same priority value, the rule that appears first is given the higher priority.
>
> <u>Condition Clauses</u>
>
> A Condition Clause of a control rule has the following formats:
>
> object id attribute relation value
>
> object id attribute relation object id attribute

where:

<table>
<colgroup>
<col style="width: 76%" />
<col style="width: 23%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>object</p>
</blockquote></td>
<td>=</td>
</tr>
<tr class="even">
<td><blockquote>
<p>id</p>
</blockquote></td>
<td>=</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>attribute</p>
</blockquote></td>
<td>=</td>
</tr>
<tr class="even">
<td><blockquote>
<p>relation</p>
</blockquote></td>
<td>=</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>value</p>
</blockquote></td>
<td>=</td>
</tr>
</tbody>
</table>

a category of object

the object's ID label

an attribute or property of the object

a relational operator (=, \<\>, \<, \<=, \>, \>=)

an attribute value

Some examples of condition clauses are:

NODE N23 DEPTH \> 10

NODE N23 DEPTH \> NODE N25 DEPTH

PUMP P45 STATUS = OFF

SIMULATION CLOCKTIME = 22:45:00

**221**

> The objects and attributes that can appear in a condition clause are as follows:

<table>
<colgroup>
<col style="width: 21%" />
<col style="width: 36%" />
<col style="width: 41%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Object</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Attributes</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Value</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NODE</p>
</blockquote></td>
<td><blockquote>
<p>DEPTH<br />
HEAD<br />
VOLUME<br />
INFLOW</p>
</blockquote></td>
<td><blockquote>
<p>numerical value<br />
numerical value<br />
numerical value<br />
numerical value</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>LINK</p>
</blockquote></td>
<td><blockquote>
<p>FLOW<br />
DEPTH<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>numerical value<br />
numerical value<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>CONDUIT</p>
</blockquote></td>
<td><blockquote>
<p>STATUS<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>OPEN or CLOSED<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>PUMP</p>
</blockquote></td>
<td><blockquote>
<p>STATUS<br />
SETTING<br />
FLOW<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>ON or OFF</p>
<p>pump curve multiplier<br />
numerical value<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>ORIFICE</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>fraction open</p>
<p>decimal hours or hr:min</p>
<p>decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>WEIR</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>fraction open</p>
<p>decimal hours or hr:min</p>
<p>decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>OUTLET</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>rating curve multiplier<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SIMULATION</p>
</blockquote></td>
<td><blockquote>
<p>TIME</p>
</blockquote></td>
<td><blockquote>
<p>elapsed time in decimal hours or hr:min:sec</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SIMULATION</p>
</blockquote></td>
<td><blockquote>
<p>DATE<br />
MONTH<br />
DAY<br />
CLOCKTIME</p>
</blockquote></td>
<td><blockquote>
<p>month/day/year</p>
<p>month of year (January = 1) day of week (Sunday = 1) time of day in hr:min:sec</p>
</blockquote></td>
</tr>
</tbody>
</table>

> TIMEOPEN is the duration a link has been in an OPEN or ON state or have its SETTING be greater than zero; TIMECLOSED is the duration it has remained in a CLOSED or OFF state or have its SETTING be zero.

**222**

> <u>Action Clauses</u>
>
> An Action Clause of a control rule can have one of the following formats:
>
> **PUMP** id **STATUS** = **ON/OFF**
>
> **PUMP/ORIFICE/WEIR/OUTLET** id **SETTING** = value
>
> where the meaning of SETTING depends on the object being controlled:

- for Pumps it is a multiplier applied to the flow computed from the pump curve,

- for Orifices it is the fractional amount that the orifice is fully open,

- for Weirs it is the fractional amount of the original freeboard that exists (i.e., weir control is accomplished by moving the crest height up or down),

• for Outlets it is a multiplier applied to the flow computed from the outlet's rating curve.

> Some examples of action clauses are:  
> PUMP P67 STATUS = OFF
>
> ORIFICE O212 SETTING = 0.5
>
> <u>Modulated Controls</u>
>
> Modulated controls are control rules that provide for a continuous degree of control applied to a pump or flow regulator as determined by the value of some controller variable, such as water depth at a node, or by time. The functional relation between the control setting and the controller variable can be specified by using a Control Curve, a Time Series, or a PID Controller. Some examples of modulated control rules are:
>
> RULE MC1
>
> IF NODE N2 DEPTH \>= 0
>
> THEN WEIR W25 SETTING = CURVE C25
>
> RULE MC2
>
> IF SIMULATION TIME \> 0
>
> THEN PUMP P12 SETTING = TIMESERIES TS101
>
> RULE MC3
>
> IF LINK L33 FLOW \<\> 1.6
>
> THEN ORIFICE O12 SETTING = PID 0.1 0.0 0.0
>
> Note how a modified form of the action clause is used to specify the name of the control curve, time series or PID parameter set that defines the degree of control. A PID parameter set contains three values -- a proportional gain coefficient, an integral time (in minutes), and a derivative time (in minutes). Also, by convention the controller variable used in a Control Curve or PID Controller will always be the object and attribute named in the last condition clause of the rule. As an example, in rule MC1 above Curve C25 would define how the fractional setting at Weir W25

**223**

> varied with the water depth at Node N2. In rule MC3, the PID controller adjusts the opening of Orifice O12 to maintain a flow of 1.6 in Link L33.
>
> <u>PID Controllers</u>
>
> A PID (Proportional-Integral-Derivative) Controller is a generic closed-loop control scheme that tries to maintain a desired set-point on some process variable by computing and applying a corrective action that adjusts the process accordingly. In the context of a hydraulic conveyance system a PID controller might be used to adjust the opening on a gated orifice to maintain a target flow rate in a specific conduit or to adjust a variable speed pump to maintain a desired depth in a storage unit. The classical PID controller has the form:

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p> <em><u>1 de (t)</u></em></p>
<p><em>m</em> = <em>(t)Kep</em>  <em>(t)</em> + f + <em>dt</em></p>
<p><em>e ()dT r r d</em></p>
<p><em>Ti</em></p></td>
<td><p>1</p>
<p></p></td>
</tr>
</tbody>
</table>

> where *m(t)* = controller output, *Kp* = proportional coefficient (gain), *Ti* = integral time, *Td* = derivative time, *e(t)* = error (difference between setpoint and observed variable value), and *t* = time. The performance of a PID controller is determined by the values assigned to the coefficients *Kp, Ti*, and *Td*.
>
> The controller output *m(t)* has the same meaning as a link setting used in a rule's Action Clause while *dt* is the current flow routing time step in minutes. Because link settings are relative values (with respect to either a pump's standard operating curve or to the full opening height of an orifice or weir) the error *e(t)* used by the controller is also a relative value. It is defined as the difference between the control variable setpoint *x\** and its value at time *t, x(t)*, normalized to the setpoint value: *e(t) = (x\* - x(t)) / x\**.
>
> Note that for direct action control, where an increase in the link setting causes an increase in the controlled variable, the sign of Kp must be positive. For reverse action control, where the controlled variable decreases as the link setting increases, the sign of Kp must be negative. The user must recognize whether the control is direct or reverse action and use the proper sign on Kd accordingly. For example, adjusting an orifice opening to maintain a desired downstream flow is direct action. Adjusting it to maintain an upstream water level is reverse action. Controlling a pump to maintain a fixed wet well water level would be reverse action while using it to maintain a fixed downstream flow is direct action.

**224**

> **C.4 Cross-Section Editor**
>
> <img src="./media/image176.jpg" style="width:5.52986in;height:3.37639in" />
>
> The Cross-Section Editor dialog is used to specify the shape and dimensions of a conduit's cross-section. When a shape is selected from the image list an appropriate set of edit fields appears for describing the dimensions of that shape. Length dimensions are in units of feet for US units and meters for SI units. Slope values represent ratios of horizontal to vertical distance. The Barrels field specifies how many identical parallel conduits exist between its end nodes.
>
> The Force Main shape option is a circular conduit that uses either the Hazen-Williams or Darcy-Weisbach formulas to compute friction losses for pressurized flow during Dynamic Wave flow routing. In this case the appropriate C-factor (for Hazen-Williams) or roughness height (for Darcy-Weisbach) is supplied as a cross-section property. The choice of friction loss equation is made on the Dynamic Wave Simulation Options dialog. Note that a conduit does not have to be assigned a Force Main shape for it to pressurize. Any of the other closed cross-section shapes can potentially pressurize and thus function as force mains using the Manning equation to compute friction losses.
>
> If a Custom shaped section is chosen, a drop-down edit box will appear where you can enter or select the name of a Shape Curve that will be used to define the geometry of the section. This curve specifies how the width of the cross-section varies with height, where both width and height are scaled relative to the section's maximum depth. This allows the same shape curve to be used
>
> for conduits of differing sizes. Clicking the Edit button next to the shape curve box will bring
>
> up the Curve Editor where the shape curve's coordinates can be edited.
>
> If an Irregular shaped section is chosen, a drop-down edit box will appear where you can enter or select the name of a Transect object that describes the cross-section's geometry. Clicking the
>
> Edit button next to the edit box will bring up the Transect Editor from which you can edit the
>
> transect data.

**225**

> **C.5 Curve Editor**
>
> <img src="./media/image177.jpg" style="width:3.39653in;height:3.97292in" />
>
> The Curve Editor dialog is invoked whenever a new curve object is created or an existing curve object is selected for editing. The editor adapts itself to the category of curve being edited (Storage, Tidal, Diversion, Pump, or Rating). To use the Curve Editor:

- Enter values for the following data entry fields:

> *Name* Name of the curve.
>
> *Type* (Pump Curves Only). Choice of pump curve type as described in Section 3.2
>
> *Description* Optional comment or description of what the curve represents. Click
>
> the button to launch a multi-line comment editor if more than one line is needed.
>
> *Data Grid* The curve's X,Y data.

- Click the **View** button to see a graphical plot of the curve drawn in a separate window.

- If additional rows are needed in the Data Grid, simply press the **Enter** key when in the last row.

- Right-clicking over the Data Grid will make a popup Edit menu appear. It contains commands to cut, copy, insert, and paste selected cells in the grid as well as options to insert or delete a row.

> You can also click the **Load** button to load in a curve that was previously saved to file or click the **Save** button to save the current curve's data to a file.

**226**

> **C.6 Groundwater Flow Editor**
>
> <img src="./media/image178.jpg" style="width:5.99653in;height:4.77361in" />
>
> The Groundwater Flow Editor dialog is invoked when the Groundwater property of a subcatchment is being edited. It is used to link a subcatchment to both an aquifer and to a node of the drainage system that exchanges groundwater with the aquifer. It also specifies coefficients that determine the rate of lateral groundwater flow between the aquifer and the node. These coefficients (A1, A2, B1, B2, and A3) appear in the following equation that computes groundwater flow as a function of groundwater and surface water levels:
>
> *= 1(* − *)*<sup>1</sup> − *2(* − *)*<sup>2</sup> *+ <sup>3</sup>*

lateral groundwater flow (cfs per acre or cms per hectare)

height of saturated zone above bottom of aquifer (ft or m)

height of surface water at receiving node above aquifer bottom (ft or m)

height of channel bottom above aquifer bottom (ft or m).

> Note that *QL* can also be expressed in inches/hr for US units.
>
> The rate of percolation to deep groundwater, QD, in in/hr (or mm/hr) is given by the following equation:

**227**

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<tbody>
<tr class="odd">
<td><em>QD = LGLR</em></td>
<td><em>(\<sup>H<u>GW</u></sup>)1<br />
HGS</em></td>
</tr>
</tbody>
</table>

> where LGLR is the lower groundwater loss rate parameter assigned to the subcatchment's aquifer (in/hr or mm/hr) and HGS is the distance from the ground surface to the aquifer bottom (ft or m).
>
> In addition to the standard lateral flow equation, the dialog allows one to define a custom equation whose results will be added onto those of the standard equation. One can also define a custom equation for deep groundwater flow that will replace the standard one. Finally, the dialog offers the option to override certain parameters that were specified for the aquifer to which the subcatchment belongs. The properties listed in the editor are as follows:
>
> **Aquifer Name**
>
> Name of the aquifer object that describes the subsurface soil properties, thickness, and initial conditions. Leave this field blank if you want the subcatchment not to generate any groundwater flow.
>
> **Receiving Node**
>
> Name of node that receives groundwater from the aquifer.
>
> **Surface Elevation**
>
> Elevation of ground surface for the subcatchment that lies above the aquifer in feet or meters.
>
> **Groundwater Flow Coefficient**
>
> Value of A1 in the groundwater flow formula.
>
> **Groundwater Flow Exponent**
>
> Value of B1 in the groundwater flow formula.
>
> **Surface Water Flow Coefficient**
>
> Value of A2 in the groundwater flow formula.
>
> **Surface Water Flow Exponent**
>
> Value of B2 in the groundwater flow formula.
>
> **Surface-GW Interaction Coefficient**
>
> Value of A3 in the groundwater flow formula.
>
> **Surface Water Depth**
>
> Fixed depth of surface water above receiving node’s invert (feet or meters). Set to zero if surface
>
> water depth will vary as computed by flow routing.
>
> **Threshold Water Table Elevation**
>
> Minimum water table elevation that must be reached before any flow occurs (feet or meters).
>
> Leave blank to use the receiving node's invert elevation.
>
> **228**
>
> **Aquifer Bottom Elevation**
>
> Elevation of the bottom of the aquifer below this particular subcatchment (feet or meters). Leave
>
> blank to use the value from the parent aquifer.
>
> **Initial Water Table Elevation**
>
> Initial water table elevation at the start of the simulation for this particular subcatchment (feet or
>
> meters). Leave blank to use the value from the parent aquifer.
>
> **Unsaturated Zone Moisture**
>
> Moisture content of the unsaturated upper zone above the water table for this particular subcatchment at the start of the simulation (volumetric fraction). Leave blank to use the value from the parent aquifer.
>
> **Custom Lateral Flow Equation**
>
> Click the ellipsis button (or press Enter) to launch the Custom Groundwater Flow Equation editor for lateral groundwater flow QL (see section C.7). The equation supplied by this editor will be used in addition to the standard equation to compute groundwater outflow from the subcatchment.
>
> **Custom Deep Flow Equation**
>
> Click the ellipsis button (or press Enter) to launch the Custom Groundwater Flow Equation editor for deep groundwater flow QD. The equation supplied by this editor will be used to replace the standard equation for deep groundwater flow.
>
> The coefficients supplied to the groundwater flow equations must be in units that are consistent with the groundwater flow units, which can either be cfs/acre (equivalent to inches/hr) for US units or cms/ha for SI units.
>
> Note that elevations are used to specify the ground surface, water table height, and aquifer bottom in the dialog’s data entry fields but that the groundwater flow equation uses depths above the aquifer bottom.
>
> If groundwater flow is simply proportional to the difference in groundwater and surface water heads, then set the Groundwater and Surface Water Flow Exponents (B1 and B2) to 1.0, set the Groundwater Flow Coefficient (A1) to the proportionality factor, set the Surface Water Flow Coefficient (A2) to the same value as A1, and set the Interaction Coefficient (A3) to zero.
>
> Note that when conditions warrant, the groundwater flux can be negative, simulating flow into the aquifer from the channel, in the manner of bank storage. An exception occurs when A3 ≠ 0, since the surface water - groundwater interaction term is usually derived from groundwater flow models that assume unidirectional flow. Otherwise, to ensure that negative fluxes will not occur, one can make A1 greater than or equal to A2, B1 greater than or equal to B2, and A3 equal to zero.
>
> To completely replace the standard groundwater flow equation with the custom equation, set all of the standard equation coefficients to 0.

**229**

> **C.7 Groundwater Equation Editor**
>
> <img src="./media/image180.jpg" style="width:5.57292in;height:1.67986in" />
>
> The Groundwater Equation Editor is used to supply a custom equation for computing groundwater flow between the saturated sub-surface zone of a subcatchment and either a node in the conveyance network (lateral flow) or to a deeper groundwater aquifer (deep flow). It is invoked from the Groundwater Flow Editor form.
>
> For lateral groundwater flow the result of evaluating the custom equation will be added onto the result of the standard equation. To replace the standard equation completely set all of its coefficients to 0. Remember that lateral groundwater flow units are cfs/acre (equivalent to inches/hr) for US units and cms/ha for metric units.
>
> The following symbols can be used in the equation:
>
> **Hgw** (for height of the groundwater table)
>
> **Hsw** (for height of the surface water)
>
> **Hcb** (for height of the channel bottom)
>
> **Hgs** (for height of the ground surface)
>
> **Phi** (for porosity of the subsurface soil)
>
> **Theta** (for moisture content of the upper unsaturated zone)
>
> **Ks** (for saturated hydraulic conductivity in inches/hr or mm/hr)
>
> **K** (for hydraulic conductivity at the current moisture content in inches/hr or mm/hr)
>
> **Fi** (for infiltration rate from the ground surface in inches/hr or mm/hr)
>
> **Fu** (for percolation rate from the upper unsaturated zone in inches/hr or mm/hr)
>
> **A** (for subcatchment area in acres or hectares)
>
> where all heights are relative to the aquifer's bottom elevation in feet (or meters).
>
> The **STEP** function can be used to have flow only when the groundwater level is above a certain threshold. For example, the expression:
>
> 0.001 \* (Hgw - 5) \* STEP(Hgw - 5)
>
> would generate flow only when Hgw was above 5. See Section C.22 (Treatment Editor) for a list of additional math functions that can be used in a groundwater flow expression.

**230**

> **C.8 Infiltration Editor**
>
> <img src="./media/image181.jpg" style="width:3.47986in;height:3.46667in" />
>
> The Infiltration Editor dialog is used to specify values for the parameters that describe the rate at which rainfall infiltrates into the upper soil zone in a subcatchment's pervious area. It is invoked when editing the Infiltration property of a subcatchment. The infiltration parameters depend on which infiltration model was selected for the project: Horton, Green-Ampt, or Curve Number. The choice of infiltration model can be made either by editing the project's Simulation Options (see Section 8.1) or by changing the project's Default Properties (see Section 5.4).
>
> <u>Horton Infiltration Parameters</u>
>
> The following data fields appear in the Infiltration Editor for Horton infiltration:
>
> **Max. Infil. Rate**
>
> Maximum infiltration rate on the Horton curve (in/hr or mm/hr). Representative values are as
>
> follows:
>
> A. DRY soils (with little or no vegetation):

- Sandy soils: 5 in/hr

- Loam soils: 3 in/hr

- Clay soils: 1 in/hr

> B. DRY soils (with dense vegetation):

- Multiply values in A. by 2

> C. MOIST soils:

- Soils which have drained but not dried out (i.e., field capacity):  
  > Divide values from A and B by 3.

- Soils close to saturation:

> Choose value close to minimum infiltration rate.

- Soils which have partially dried out:  
  > Divide values from A and B by 1.5 - 2.5.

> **Min. Infil. Rate**
>
> Minimum infiltration rate on the Horton curve (in/hr or mm/hr). Equivalent to the soil’s saturated
>
> hydraulic conductivity. See the Soil Characteristics Table in Section A.2 for typical values.
>
> **Decay Const.**
>
> Infiltration rate decay constant for the Horton curve (1/hours). Typical values range between 2
>
> and 7.
>
> **Drying Time**
>
> Time in days for a fully saturated soil to dry completely. Typical values range from 2 to 14 days.
>
> **Max. Infil. Vol.**
>
> Maximum infiltration volume possible (inches or mm, 0 if not applicable). It can be estimated as
>
> the difference between a soil's porosity and its wilting point times the depth of the infiltration zone.
>
> <u>Green-Ampt Infiltration Parameters</u>
>
> The following data fields appear in the Infiltration Editor for Green-Ampt infiltration:
>
> **Suction Head**
>
> Average value of soil capillary suction along the wetting front (inches or mm).
>
> **Conductivity**
>
> Soil saturated hydraulic conductivity (in/hr or mm/hr).
>
> **Initial Deficit**
>
> Fraction of soil volume that is initially dry (i.e., difference between soil porosity and initial moisture content). For a completely drained soil, it is the difference between the soil's porosity and its field capacity.
>
> Typical values for all of these parameters can be found in the Soil Characteristics Table in Section A.2.

**232**

> <u>Curve Number Infiltration Parameters</u>
>
> The following data fields appear in the Infiltration Editor for Curve Number infiltration:
>
> **Curve Number**
>
> This is the SCS curve number which is tabulated in the publication SCS Urban Hydrology for Small Watersheds, 2nd Ed., (TR-55), June 1986. Consult the Curve Number Table (Section A.4) for a listing of values by soil group, and the accompanying Soil Group Table (Section A.3) for the definitions of the various groups.
>
> **Conductivity**
>
> This property has been deprecated and is no longer used.
>
> **Drying Time**
>
> The number of days it takes a fully saturated soil to dry. Typical values range between 2 and 14
>
> days.

**233**

> **C.9 Inflows Editor**
>
> The Inflows Editor dialog is used to assign Direct, Dry Weather, and RDII inflow into a node of the drainage system. It is invoked whenever the Inflows property of a Node object is selected in the Property Editor. The dialog consists of three tabbed pages that provide a special editor for each type of inflow.
>
> <u>Direct Inflows Page</u>
>
> <img src="./media/image182.jpg" style="width:3.73958in;height:5.19722in" />
>
> The Direct page on the Inflows Editor dialog is used to specify the time history of direct external flow and water quality entering a node of the drainage system. These inflows are represented by both a constant and time varying component as follows:
>
> *Inflow at time t = (baseline value)\*(baseline pattern factor) + (scale factor)\*(time series value at time t)*
>
> The page contains the following input fields that define the properties of this relation:
>
> **234**
>
> **Constituent**
>
> Selects the constituent (FLOW or one of the project's specified pollutants) whose direct inflow will
>
> be described.
>
> **Baseline**
>
> Specifies the value of the constant baseline component of the constituent's inflow. For FLOW, the units are the project's flow units. For pollutants, the units are the pollutant's concentration units if inflow is a concentration, or can be any mass flow units if the inflow is a mass flow (see Conversion Factor below). If left blank then no baseline inflow is assumed.
>
> **Baseline Pattern**
>
> An optional Time Pattern whose factors adjust the baseline inflow on either an hourly, daily, or
>
> monthly basis (depending on the type of time pattern specified). Clicking the button will bring  
> up the Time Pattern Editor dialog for the selected time pattern. If left blank, then no adjustment is made to the baseline inflow.
>
> **Time Series**
>
> Specifies the name of the time series that contains inflow data for the selected constituent. If left
>
> blank then no direct inflow will occur for the selected constituent at the node in question. You can
>
> click the button to bring up the Time Series Editor dialog for the selected time series.
>
> **Scale Factor**
>
> A multiplier used to adjust the values of the constituent's inflow time series. The baseline value is not adjusted by this factor. The scale factor can have several uses, such as allowing one to easily change the magnitude of an inflow hydrograph while keeping its shape the same, without having to re-edit the entries in the hydrograph time series. Or it can allow a group of nodes sharing the same time series to have their inflows behave in a time-synchronized fashion while letting their individual magnitudes be different. If left blank the scale factor defaults to 1.0.
>
> **Inflow Type**
>
> For pollutants, selects the type of inflow data contained in the time series as being either a concentration (mass/volume) or mass flow rate (mass/time). This field does not appear for FLOW inflow.
>
> **Conversion Factor**
>
> A numerical factor used to convert the units of pollutant mass flow rate in the time series data into concentration mass units per second. For example, if the time series data were in pounds per day and the pollutant concentration defined in the project was mg/L, then the conversion factor value would be (453,590 mg/lb) / (86400 sec/day) = 5.25 (mg/sec) per (lb/day).
>
> More than one constituent can be edited while the dialog is active by simply selecting another choice for the Constituent property. However, if the **Cancel** button is clicked then any changes made to all constituents will be ignored.
>
> **235**

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image183.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>If a pollutant is assigned a direct inflow in terms of concentration, then one must also assign a direct inflow to flow, otherwise no pollutant inflow will occur. An exception is at submerged outfalls where pollutant intrusion can occur during periods of reverse flow. If pollutant inflow is defined in terms of mass, then a flow inflow time series is not required.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> <u>Dry Weather Inflows Page</u>
>
> <img src="./media/image184.jpg" style="width:3.73958in;height:5.19722in" />
>
> The Dry Weather page of the Inflows Editor dialog is used to specify a continuous source of dry weather flow entering a node of the drainage system. The page contains the following input fields:
>
> **Constituent**
>
> Selects the constituent (FLOW or one of the project's specified pollutants) whose dry weather
>
> inflow will be specified.

**236**

> **Average Value**
>
> Specifies the average (or baseline) value of the dry weather inflow of the constituent in the relevant units (flow units for flow, concentration units for pollutants). Leave blank if there is no dry weather flow for the selected constituent.
>
> **Time Patterns**
>
> Specifies the names of the time patterns to be used to allow the dry weather flow to vary in a periodic fashion by month of the year, by day of the week, and by time of day (for both weekdays and weekends). One can either type in a name or select a previously defined pattern from the dropdown list of each combo box. Up to four different types of patterns can be assigned. You can
>
> click the button next to each Time Pattern field to edit the respective pattern.
>
> More than one constituent can be edited while the dialog is active by simply selecting another choice for the Constituent property. However, if the Cancel button is clicked then any changes made to all constituents will be ignored.
>
> <u>RDII Inflow Page</u>
>
> The RDII Inflow page of the Inflows Editor dialog form is used to specify RDII (Rainfall Dependent Infiltration/Inflow) for the node in question. The page contains the following two input fields:
>
> **Unit Hydrograph Group**
>
> Enter (or select from the dropdown list) the name of the Unit Hydrograph group that applies to the node in question. The unit hydrographs in the group are used in combination with the group's assigned rain gage to develop a time series of RDII inflows per unit area over the period of the simulation. Leave this field blank to indicate that the node receives no RDII inflow. Clicking the
>
> button will launch the Unit Hydrograph Editor for the UH group specified.
>
> **Sewershed Area**
>
> Enter the area (in acres or hectares) of the sewershed that contributes RDII to the node in question. Note this area will typically be only a small, localized portion of the subcatchment area that contributes surface runoff to the node.
>
> **238**
>
> **C.10 Initial Buildup Editor**
>
> <img src="./media/image187.jpg" style="width:5.39653in;height:2.90625in" />
>
> The Initial Buildup Editor is invoked from the Property Editor when editing the Initial Buildup property of a subcatchment. It specifies the amount of pollutant buildup existing over the subcatchment at the start of the simulation. The editor consists of a data entry grid with two columns. The first column lists the name of each pollutant in the project and the second column contains edit boxes for entering the initial buildup values. If no buildup value is supplied for a pollutant, it is assumed to be 0. The units for buildup are either pounds per acre when US units are in use or kilograms per hectare when SI metric units are in use.
>
> If a non-zero value is specified for the initial buildup of a pollutant, it will override any initial buildup computed from the Antecedent Dry Days parameter specified on the Dates page of the Simulation Options dialog.

**239**

> **C.11 Land Use Editor**
>
> The Land Use Editor dialog is used to define a category of land use for the study area and to define its pollutant buildup and washoff characteristics. The dialog contains three tabbed pages of land use properties:

- General Page (provides land use name and street sweeping parameters)

- Buildup Page (defines rate at which pollutant buildup occurs)

- Washoff Page (defines rate at which pollutant washoff occurs)

> <u>General Page</u>
>
> <img src="./media/image188.jpg" style="width:3.15625in;height:3.87639in" />
>
> The General page of the Land Use Editor dialog describes the following properties of a particular land use category:
>
> **Land Use Name**
>
> The name assigned to the land use.
>
> **Description**
>
> An optional comment or description of the land use (click the ellipsis button or press Enter to
>
> edit).
>
> **Street Sweeping Interval**
>
> Days between street sweeping within the land use.

**240**

> **Street Sweeping Availability**
>
> Fraction of the buildup of all pollutants that is available for removal by sweeping.
>
> **Last Swept**
>
> Number of days since last swept at the start of the simulation.
>
> If street sweeping does not apply to the land use, then the last three properties can be left blank.
>
> <u>Buildup Page</u>
>
> <img src="./media/image189.jpg" style="width:3.15625in;height:3.87708in" />
>
> The Buildup page of the Land Use Editor dialog describes the properties associated with pollutant buildup over the land during dry weather periods. These consist of:
>
> **Pollutant**
>
> Select the pollutant whose buildup properties are being edited.
>
> **Function**
>
> The type of buildup function to use for the pollutant. The choices are **NONE** for no buildup, **POW** for power function buildup, **EXP** for exponential function buildup **SAT** for saturation function buildup, and **EXT** for buildup supplied by an external time series. See the discussion of Pollutant Buildup in Section 3.3.9 Land Uses for explanations of these different functions. Select **NONE** if no buildup occurs.

**241**

> **Max. Buildup**
>
> The maximum buildup that can occur, expressed as lbs (or kg) of the pollutant per unit of the normalizer variable (see below). This is the same as the C1 coefficient used in the buildup formulas discussed in Section 3.3.9.
>
> The following two properties apply to the **POW**, **EXP**, and **SAT** buildup functions:
>
> **Rate Constant**
>
> The time constant that governs the rate of pollutant buildup. This is the C2 coefficient in the Power and Exponential buildup formulas discussed in Section 3.3.9. For Power buildup its units are mass / days raised to a power, while for Exponential buildup its units are 1/days.
>
> **Power/Sat. Constant**
>
> The exponent C3 used in the Power buildup formula, or the half-saturation constant C2 used in
>
> the Saturation buildup formula discussed in Section 3.3.9. For the latter case, its units are days.
>
> The following two properties apply to the **EXT** (External Time Series) option:
>
> **Scaling Factor**
>
> A multiplier used to adjust the buildup rates listed in the time series.
>
> **Time Series**
>
> The name of the Time Series that contains buildup rates (as mass per normalizer per day).
>
> **Normalizer**
>
> The variable to which buildup is normalized on a per unit basis. The choices are either land area (in acres or hectares) or curb length. Any units of measure can be used for curb length, as long as they remain the same for all subcatchments in the project.
>
> When there are multiple pollutants, the user must select each pollutant separately from the Pollutant dropdown list and specify its pertinent buildup properties.

**242**

> <u>Washoff Page</u>
>
> <img src="./media/image190.jpg" style="width:3.15625in;height:3.87292in" />
>
> The Washoff page of the Land Use Editor dialog describes the properties associated with pollutant washoff over the land use during wet weather events. These consist of:
>
> **Pollutant**
>
> The name of the pollutant whose washoff properties are being edited.
>
> **Function**
>
> The choice of washoff function to use for the pollutant. The choices are:

- **NONE** no washoff

- **EXP** exponential washoff

- **RC** rating curve washoff

- **EMC** event-mean concentration washoff.

> The formula for each of these functions is discussed in Section 3.3.9 Land Uses under the Pollutant Washoff topic.
>
> **Coefficient**
>
> This is the value of C1 in the exponential and rating curve formulas, or the event-mean
>
> concentration.
>
> **Exponent**
>
> The exponent used in the exponential and rating curve washoff formulas.

**243**

> **Cleaning Efficiency**
>
> The street cleaning removal efficiency (percent) for the pollutant. It represents the fraction of the amount that is available for removal on the land use as a whole (set on the General page of the editor) which is actually removed.
>
> **BMP Efficiency**
>
> Removal efficiency (percent) associated with any Best Management Practice that might have been implemented. The washoff load computed at each time step is simply reduced by this amount.
>
> As with the Buildup page, each pollutant must be selected in turn from the Pollutant dropdown list and have its pertinent washoff properties defined.
>
> **C.12 Land Use Assignment Editor**
>
> <img src="./media/image191.jpg" style="width:5.59653in;height:2.90694in" />
>
> The Land Use Assignment editor is invoked from the Property Editor when editing the Land Uses property of a subcatchment. Its purpose is to assign land uses to the subcatchment for water quality simulations. The percent of land area in the subcatchment covered by each land use is entered next to its respective land use category. If the land use is not present its field can be left blank. The percentages entered do not necessarily have to add up to 100.

**244**

> **C.13 LID Control Editor**
>
> <img src="./media/image192.jpg" style="width:5.65625in;height:4.05694in" />
>
> The LID Control Editor is used to define a low impact development control that can be deployed throughout a study area to store, infiltrate, and evaporate subcatchment runoff. The design of the control is made on a per-unit-area basis so that it can be placed in any number of subcatchments at different sizes or number of replicates. The editor contains the following data entry fields:
>
> **Control Name**
>
> A name used to identify the particular LID control.
>
> **LID Type**
>
> The generic type of LID being defined (bio-retention cell, rain garden, green roof, infiltration
>
> trench, permeable pavement, rain barrel, or vegetative swale).
>
> **Process Layers**
>
> These are a tabbed set of pages containing data entry fields for the vertical layers and drain system that comprise an LID control. They include some combination of the following, depending on the type of LID selected: Surface Layer, Pavement Layer, Soil Layer, Storage Layer, and Drain System or Drainage Mat.
>
> <u>Surface Layer Properties</u>
>
> The **Surface Layer** page of the LID Control Editor is used to describe the surface properties of all types of LID controls except rain barrels. Surface layer properties include:

**245**

> **Berm Height (or Storage Depth)**
>
> When confining walls or berms are present this is the maximum depth to which water can pond above the surface of the unit before overflow occurs (in inches or mm). For Rooftop Disconnection it is the roof’s depression storage depth, and for Vegetative Swales it is the height of the trapezoidal cross section.
>
> **Vegetative Volume Fraction**
>
> The fraction of the volume within the storage depth filled with vegetation. This is the volume occupied by stems and leaves, not their surface area coverage. Normally this volume can be ignored, but may be as high as 0.1 to 0.2 for very dense vegetative growth.
>
> **Surface Roughness**
>
> Manning's n for overland flow over surface soil cover, pavement, roof surface or vegetative swale.
>
> Use 0 for other types of LIDs.
>
> **Surface Slope**
>
> Slope of a roof surface, pavement surface or vegetative swale (percent). Use 0 for other types of
>
> LIDs.
>
> **Swale Side Slope**
>
> Slope (run over rise) of the side walls of a vegetative swale's cross section. This value is ignored
>
> for other types of LIDs.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image193.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>If either Surface Roughness or Surface Slope values are 0 then any ponded water that exceeds the surface storage depth is assumed to completely overflow the LID control within a single time step.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> <u>Pavement Layer Properties</u>
>
> The **Pavement Layer** page of the LID Control Editor supplies values for the following properties of a permeable pavement LID:
>
> **Thickness**
>
> The thickness of the pavement layer (inches or mm). Typical values are 4 to 6 inches (100 to 150
>
> mm).
>
> **Void Ratio**
>
> The volume of void space relative to the volume of solids in the pavement for continuous systems or for the fill material used in modular systems. Typical values for pavements are 0.12 to 0.21. Note that porosity = void ratio / (1 + void ratio).
>
> **Impervious Surface Fraction**
>
> Ratio of impervious paver material to total area for modular systems; 0 for continuous porous
>
> pavement systems.
>
> **246**
>
> **Permeability**
>
> Permeability of the concrete or asphalt used in continuous systems or hydraulic conductivity of the fill material (gravel or sand) used in modular systems (in/hr or mm/hr). The permeability of new porous concrete or asphalt is very high (e.g., hundreds of in/hr) but can drop off over time due to clogging by fine particulates in the runoff (see below).
>
> **Clogging Factor**
>
> Number of pavement layer void volumes of runoff treated it takes to completely clog the pavement. Use a value of 0 to ignore clogging. Clogging progressively reduces the pavement's permeability in direct proportion to the cumulative volume of runoff treated.
>
> If one has an estimate of the number of years it takes to fully clog the system (Yclog), the Clogging Factor can be computed as: Yclog \* Pa \* CR \* (1 + VR) \* (1 - ISF) / (T \* VR) where Pa is the annual rainfall amount over the site, CR is the pavement's capture ratio (area that contributes runoff to the pavement divided by area of the pavement itself), VR is the system's Void Ratio, ISF is the Impervious Surface Fraction, and T is the pavement layer Thickness.
>
> As an example, suppose it takes 5 years to clog a continuous porous pavement system that serves an area where the annual rainfall is 36 inches/year. If the pavement is 6 inches thick, has a void ratio of 0.2 and captures runoff only from its own surface, then the Clogging Factor is 5 x 36 x (1 + 0.2) / 6 / 0.2 = 180.
>
> <u>Soil Layer properties</u>
>
> The **Soil Layer** page of the LID Control Editor describes the properties of the engineered soil mixture used in bio-retention types of LIDs and the optional sand layer beneath permeable pavement. These properties are:
>
> **Thickness**
>
> The thickness of the soil layer (inches or mm). Typical values range from 18 to 36 inches (450 to 900 mm) for rain gardens, street planters and other types of land-based bio-retention units, but only 3 to 6 inches (75 to 150 mm) for green roofs.
>
> **Porosity**
>
> The volume of pore space relative to total volume of soil (as a fraction).
>
> **Field Capacity**
>
> Volume of pore water relative to total volume after the soil has been allowed to drain fully (as a
>
> fraction). Below this level, vertical drainage of water through the soil layer does not occur.
>
> **Wilting Point**
>
> Volume of pore water relative to total volume for a well dried soil where only bound water remains
>
> (as a fraction). The moisture content of the soil cannot fall below this limit.
>
> **Conductivity**
>
> Hydraulic conductivity for the fully saturated soil (in/hr or mm/hr).
>
> **247**
>
> **Conductivity Slope**
>
> Slope of the curve of log(conductivity) versus soil moisture content (dimensionless). Typical values range from 30 to 60. It can be estimated from a standard soil grain size analysis as 0.48(%Sand) + 0.85(%Clay).
>
> **Suction Head**
>
> The average value of soil capillary suction along the wetting front (inches or mm). This is the
>
> same parameter as used in the Green-Ampt infiltration model.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image194.png" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>Porosity, field capacity, conductivity and conductivity slope are the same soil properties used for Aquifer objects when modeling groundwater, while suction head is the same parameter used for Green-Ampt infiltration. Except here they apply to the special soil mixture used in a LID unit rather than the site's naturally occurring soil. See Appendix A.2</p>
<p>Soil Characteristics for typical values of these properties.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> <u>Storage Layer Properties</u>
>
> The **Storage Layer** page of the LID Control Editor describes the properties of the crushed stone or gravel layer used in bio-retention cells, permeable pavement systems, and infiltration trenches as a bottom storage/drainage layer. It is also used to specify the height of a rain barrel (or cistern). The following data fields are displayed:
>
> **Thickness (or Barrel Height)**
>
> This is the thickness of a gravel layer or the height of a rain barrel (inches or mm). Crushed stone and gravel layers are typically 6 to 18 inches (150 to 450 mm) thick while single family home rain barrels range in height from 24 to 36 inches (600 to 900 mm).
>
> *The following data fields do not apply to Rain Barrels.*
>
> **Void Ratio**
>
> The volume of void space relative to the volume of solids in the layer. Typical values range from
>
> 0.5 to 0.75 for gravel beds. Note that porosity = void ratio / (1 + void ratio).
>
> **Seepage Rate**
>
> The rate at which water seeps into the native soil below the layer (in inches/hour or mm/hour).This would typically be the Saturated Hydraulic Conductivity of the surrounding subcatchment if Green-Ampt infiltration is used or the Minimum Infiltration Rate for Horton infiltration. If there is an impermeable floor or liner below the layer then use a value of 0.
>
> **Clogging Factor**
>
> Total volume of treated runoff it takes to completely clog the bottom of the layer divided by the void volume of the layer. Use a value of 0 to ignore clogging. Clogging progressively reduces the Infiltration Rate in direct proportion to the cumulative volume of runoff treated and may only be of concern for infiltration trenches with permeable bottoms and no under drains.
>
> **248**
>
> <u>Storage Drain Properties</u>
>
> LID storage layers can contain an optional drainage system that collects water entering the layer and conveys it to a conventional storm drain or other location (which can be different than the outlet of the LID's subcatchment). Drain flow can also be returned it to the pervious area of the LID's subcatchment. The drain can be offset some distance above the bottom of the storage layer, to allow some volume of runoff to be stored (and eventually infiltrated) before any excess is captured by the drain. For Rooftop Disconnection, the drain system consists of the roof’s gutters and downspouts that have some maximum conveyance capacity.
>
> The **Drain** page of the LID Control Editor describes the properties of this system. It contains the following data entry fields:
>
> **Drain Coefficient and Drain Exponent**
>
> The drain coefficient *C* and exponent *n* determines the rate of flow through a drain as a function of the height of stored water above the drain’s offset. The following equation is used to compute this flow rate (per unit area of the LID unit):
>
> *= ℎ*
>
> where *q* is outflow (in/hr or mm/hr) and *h* is the height of saturated media above the drain (inches or mm). A typical value for *n* would be 0.5 (making the drain act like an orifice). Note that the units of C depend on the unit system being used as well as the value assigned to *n*. **If the layer has no drain then set *C* to 0**
>
> **Drain Offset Height**
>
> This is the height of the drain line above the bottom of a storage layer or rain barrel (inches or
>
> mm).
>
> **Drain Delay (for Rain Barrels only)**
>
> The number of dry weather hours that must elapse before the drain line in a rain barrel is opened (the line is assumed to be closed once rainfall begins). A value of 0 signifies that the barrel's drain line is always open and drains continuously. This parameter is ignored for other types of LIDs.
>
> **Flow Capacity (for Rooftop Disconnection only)**
>
> This is the maximum flow rate that the roof's gutters and downspouts can handle (in inches/hour
>
> or mm/hour) before overflowing. This is the only drain parameter used for Rooftop Disconnection.
>
> There are several things to keep in mind when specifying the parameters of an LID's underdrain:

- If the storage layer that contains the drain has an impermeable bottom then it's best to place the drain at the bottom with a zero offset. Otherwise, to allow the full storage volume to fill before draining occurs, one would place the drain at the top of the storage layer.

- If the storage layer has no drain then set the drain coefficient to 0.

- If the drain can carry whatever flow enters the storage layer up to some specific limit then set the drain coefficient to the limit and the drain exponent to 0.

**249**

- If the underdrain consists of slotted pipes where the slots act as orifices, then the drain exponent would be 0.5 and the drain coefficient would be 60,000 times the ratio of total slot area to LID area. For example, drain pipe with five 1/4" diameter holes per foot spaced 50 feet apart would have an area ratio of 0.000035 and a drain coefficient of 2.

- If the goal is to drain a fully saturated unit in a specific amount of time then set the drain exponent to 0.5 (to represent orifice flow) and the drain coefficient to 2D<sup>1/2</sup>/T where D is the distance from the drain to the surface plus any berm height (in inches or mm) and T is the time in hours to drain. For example, to drain a depth of 36 inches in 12 hours requires a drain coefficient of 1. If this drain consisted of the slotted pipes described in the previous bullet, whose coefficient was 2, then a flow regulator, such as a cap orifice, would have to be placed on the drain outlet to achieve the reduced flow rate.

> <u>Drainage Mat Properties</u>
>
> Green Roofs usually contain a drainage mat or plate that lies below the soil media and above the roof structure. Its purpose is to convey any water that drains through the soil layer off of the roof. The **Drainage Mat** page of the LID Control Editor for Green Roofs lists the properties of this layer which include:
>
> **Thickness**
>
> The thickness of the mat or plate (inches or mm). It typically ranges between 1 to 2 inches.
>
> **Void Fraction**
>
> The ratio of void volume to total volume in the mat. It typically ranges from 0.5 to 0.6.
>
> **Roughness**
>
> This is the Manning's n constant used to compute the horizontal flow rate of drained water through the mat. It is not a standard product specification provided by manufacturers and therefore must be estimated. Previous modeling studies have suggested using a relatively high value such as from 0.1 to 0.4.

**250**

> **C.14 LID Group Editor**
>
> <img src="./media/image195.jpg" style="width:6.07292in;height:2.76667in" />
>
> The LID Group Editor is invoked when the LID Controls property of a Subcatchment is selected for editing. It is used to identify a group of previously defined LID controls that will be placed within the subcatchment, the sizing of each control, and what percent of runoff from the non-LID portion of the subcatchment each should treat.
>
> The editor displays the current group of LIDs placed in the subcatchment along with buttons for adding an LID unit, editing a selected unit, and deleting a selected unit. These actions can also be chosen by hitting the **Insert** key, the **Enter** key, and the **Delete** key, respectively. Selecting **Add** or **Edit** will bring up an LID Usage Editor where one can enter values for the data fields shown in the Group Editor.
>
> Note that the total **% of Area** for all of the LID units within a subcatchment must not exceed 100%. The same applies to **% From Impervious**. Refer to the LID Usage Editor for the meaning of these parameters.

**251**

> **C.15 LID Usage Editor**
>
> <img src="./media/image196.jpg" style="width:6in;height:3.78333in" />
>
> The LID Usage Editor is invoked from a subcatchment's LID Group Editor to specify how a particular LID control will be deployed within the subcatchment. It contains the following data entry fields:
>
> **Control Name**
>
> The name of a previously defined LID control to be used in the subcatchment. (LID controls are
>
> added to a project by using the Project Browser.)
>
> **LID Occupies Full Subcatchment**
>
> Select this checkbox option if the LID control occupies the full subcatchment (i.e., the LID is
>
> placed in its own separate subcatchment and accepts runoff from upstream subcatchments).
>
> **Area of Each Unit**
>
> The surface area devoted to each replicate LID unit (sq. ft or sq. m). If the **LID Occupies Full Subcatchment** box is checked, then this field becomes disabled and will display the total subcatchment area divided by the number of replicate units. (See Section 3.3.14 LID Controls for options on placing LIDs within subcatchments.) The label below this field indicates how much of the total subcatchment area is devoted to the particular LID being deployed and gets updated as changes are made to the number of units and area of each unit.
>
> **Number of Replicate Units**
>
> The number of equal size units of the LID practice (e.g., the number of rain barrels) deployed
>
> within the subcatchment.

**252**

> **Surface Width Per Unit**
>
> The width of the outflow face of each identical LID unit (in ft or m). This parameter applies to roofs, pavement, trenches, and swales that use overland flow to convey surface runoff off of the unit. It can be set to 0 for other LID processes, such as bio-retention cells, rain gardens, and rain barrels that simply spill any excess captured runoff over their berms.
>
> **% Initially Saturated**
>
> For bio-retention cells, rain gardens, and green roofs this is the degree to which the unit's soil is initially filled with water (0 % saturation corresponds to the wilting point moisture content, 100 % saturation has the moisture content equal to the porosity). The storage zone beneath the soil zone of the cell is assumed to be completely dry. For other types of LIDs it corresponds to the degree to which their storage zone is initially filled with water.
>
> **% of Impervious Area Treated**
>
> The percent of the impervious portion of the subcatchment's non-LID area whose runoff is treated by the LID practice. (E.g., if rain barrels are used to capture roof runoff and roofs represent 60% of the impervious area, then the impervious area treated is 60%). If the LID unit treats only direct rainfall, such as with a green roof or roof disconnection, then this value should be 0. If the LID takes up the entire subcatchment then this field is ignored.
>
> **Send Drain Flow To**
>
> Provide the name of the Node or Subcatchment that receives any drain flow produced by the LID unit. This field can be left blank if this flow goes to the same outlet as the LID unit’s subcatchment.
>
> **Return All Outflow to Pervious Area**
>
> Select this option if outflow from the LID unit should be routed back onto the pervious area of the subcatchment that contains it. If drain outflow was selected to be routed to a different location than the subcatchment outlet then only surface outflow will be returned. Otherwise both surface and drain flow will be returned. Selecting this option would be a common choice to make for Rain Barrels, Rooftop Disconnection and possibly Green Roofs.
>
> **Detailed Report File**
>
> The name of an optional file where detailed time series results for the LID will be written. Click the
>
> browse button to select a file using the standard Windows File Save dialog or click the delete
>
> button to remove any detailed reporting. The detailed report file will be a tab delimited text file
>
> that can be easily opened and viewed with any text editor or spreadsheet program (such as Microsoft Excel) outside of SWMM.
>
> **253**
>
> **C.16 Pollutant Editor**
>
> <img src="./media/image197.jpg" style="width:2.81944in;height:4.57361in" />
>
> The Pollutant Editor is invoked when a new pollutant object is created or an existing pollutant is selected for editing. It contains the following fields:
>
> **Name**
>
> The name assigned to the pollutant.
>
> **Units**
>
> The concentration units (mg/L, ug/L, or \#/L (counts/L)) in which the pollutant concentration is
>
> expressed.
>
> **Rain Concentration**
>
> Concentration of the pollutant in rain water (concentration units).
>
> **GW Concentration**
>
> Concentration of the pollutant in ground water (concentration units).
>
> **Initial Concentration**
>
> Concentration of the pollutant throughout the conveyance system at the start of the simulation.

**254**

> **I&I Concentration**
>
> Concentration of the pollutant in any Infiltration/Inflow (concentration units).
>
> **DWF Concentration**
>
> Concentration of the pollutant in any dry weather sanitary flow (concentration units). This value can be overridden for any specific node of the conveyance system by editing the node's Inflows property.
>
> **Decay Coefficient**
>
> First-order decay coefficient of the pollutant (1/days).
>
> **<u>Snow Only</u>**
>
> **YES** if pollutant buildup occurs only when there is snow cover, **NO** otherwise (default is **NO**).
>
> **Co-Pollutant**
>
> Name of another pollutant whose runoff concentration contributes to the runoff concentration of
>
> the current pollutant.
>
> **Co-Fraction**
>
> Fraction of the co-pollutant's runoff concentration that contributes to the runoff concentration of
>
> the current pollutant.
>
> An example of a co-pollutant relationship would be where the runoff concentration of a particular heavy metal is some fixed fraction of the runoff concentration of suspended solids. In this case suspended solids would be declared as the co-pollutant for the heavy metal.
>
> **255**
>
> **C.17 Snow Pack Editor**
>
> The Snow Pack Editor is invoked when a new snow pack object is created or an existing snow pack is selected for editing. The editor contains a data entry field for the snow pack’s name and two tabbed pages, one for snow pack parameters and one for snow removal parameters.
>
> <img src="./media/image198.jpg" style="width:5.35694in;height:5.20972in" />
>
> <u>Snow Pack Parameters Page</u>
>
> The Parameters page of the Snow Pack Editor dialog provides snow melt parameters and initial conditions for snow that accumulates over three different types of areas: the impervious area that is plowable (i.e., subject to snow removal), the remaining impervious area, and the entire pervious area. The page contains a data entry grid which has a column for each type of area and a row for each of the following parameters:
>
> **Minimum Melt Coefficient**
>
> The degree-day snow melt coefficient that occurs on December 21. Units are either in/hr-deg F or
>
> mm/hr-deg C.

**256**

> **Maximum Melt Coefficient**
>
> The degree-day snow melt coefficient that occurs on June 21. Units are either in/hr-deg F or mm/hr-deg C. For a short term simulation of less than a week or so it is acceptable to use a single value for both the minimum and maximum melt coefficients.
>
> The minimum and maximum snow melt coefficients are used to estimate a melt coefficient that varies by day of the year. The latter is used in the following degree-day equation to compute the melt rate for any particular day:
>
> Melt Rate = (Melt Coefficient) \* (Air Temperature – Base Temperature).
>
> **Base Temperature**
>
> Temperature at which snow begins to melt (degrees F or C).
>
> **Fraction Free Water Capacity**
>
> The volume of a snow pack's pore space which must fill with melted snow before liquid runoff
>
> from the pack begins, expressed as a fraction of snow pack depth.
>
> **Initial Snow Depth**
>
> Depth of snow at the start of the simulation (water equivalent depth in inches or millimeters).
>
> **Initial Free Water**
>
> Depth of melted water held within the pack at the start of the simulation (inches or mm). This number should be at or below the product of the initial snow depth and the fraction free water capacity.
>
> **Depth at 100% Cover**
>
> The depth of snow beyond which the entire area remains completely covered and is not subject
>
> to any areal depletion effect (inches or mm).
>
> **Fraction of Impervious Area That is Plowable**
>
> The fraction of impervious area that is plowable and therefore is not subject to areal depletion.

**257**

> <u>Snow Removal Parameters Page</u>
>
> <img src="./media/image199.jpg" style="width:5.32292in;height:5.18333in" />
>
> The Snow Removal page of the Snow Pack Editor describes how snow removal occurs within the Plowable area of a snow pack. The following parameters govern this process:
>
> **Depth at which snow removal begins (in or mm)**
>
> Depth which must be reached before any snow removal begins.
>
> **Fraction transferred out of the watershed**
>
> The fraction of snow depth that is removed from the system (and does not become runoff).
>
> **Fraction transferred to the impervious area**
>
> The fraction of snow depth that is added to snow accumulation on the pack's impervious area.
>
> **Fraction transferred to the pervious area**
>
> The fraction of snow depth that is added to snow accumulation on the pack's pervious area.

**258**

> **Fraction converted to immediate melt**
>
> The fraction of snow depth that becomes liquid water which runs onto any subcatchment
>
> associated with the snow pack.
>
> **Fraction moved to another subcatchment**
>
> The fraction of snow depth which is added to the snow accumulation on some other
>
> subcatchment. The name of the subcatchment must also be provided.
>
> The various removal fractions must add up to 1.0 or less. If less than 1.0, then some remaining fraction of snow depth will be left on the surface after all of the redistribution options are satisfied.

**259**

> **C.18 Time Pattern Editor**
>
> <img src="./media/image200.jpg" style="width:2.90625in;height:3.80972in" />
>
> The Time Pattern Editor is invoked when a new time pattern object is created or an existing time pattern is selected for editing. The editor contains that following data entry fields:
>
> **Name**
>
> Enter the name assigned to the time pattern.
>
> **Type**
>
> Select the type of time pattern being specified. The choices are Monthly, Daily, Hourly and
>
> Weekend Hourly.
>
> **Description**
>
> You can provide an optional comment or description for the time pattern. If more than one line is
>
> needed, click the button to launch a multi-line comment editor.
>
> **Multipliers**
>
> Enter a value for each multiplier. The number and meaning of the multipliers changes with the
>
> type of time pattern selected:

<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 14%" />
<col style="width: 77%" />
</colgroup>
<tbody>
<tr class="odd">
<td>•</td>
<td><blockquote>
<p>MONTHLY</p>
</blockquote></td>
<td><blockquote>
<p>One multiplier for each month of the year.</p>
</blockquote></td>
</tr>
<tr class="even">
<td>•</td>
<td><blockquote>
<p>DAILY</p>
</blockquote></td>
<td><blockquote>
<p>One multiplier for each day of the week.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>•</td>
<td><blockquote>
<p>HOURLY</p>
</blockquote></td>
<td><blockquote>
<p>One multiplier for each hour from 12 midnight to 11 PM.</p>
</blockquote></td>
</tr>
<tr class="even">
<td>•</td>
<td><blockquote>
<p>WEEKEND</p>
</blockquote></td>
<td><blockquote>
<p>Same as for HOURLY except applied to weekend days.</p>
</blockquote></td>
</tr>
</tbody>
</table>

**260**

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 94%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><img src="./media/image201.jpg" style="width:0.17708in;height:0.25in" /></p>
</blockquote></td>
<td><blockquote>
<p>In order to maintain an average dry weather flow or pollutant concentration at its specified value (as entered on the Inflows Editor), the multipliers for a pattern should average to 1.0.</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **C.19 Time Series Editor**
>
> <img src="./media/image202.jpg" style="width:4.14653in;height:5.37361in" />
>
> The Time Series Editor is invoked whenever a new time series object is created or an existing time series is selected for editing. To use the Time Series Editor:
>
> **1.** Enter values for the following standard items:
>
> *Name* Name of the time series.
>
> *Description* Optional comment or description of what the time series represents.
>
> Click the button to launch a multi-line comment editor if more than one line is needed.

**261**

2.  Select whether to use an external file as the source of the data or to enter the data directly into the form's data entry grid.

3.  If the external file option is selected, click the button to locate the file's name. The  
    file's contents must be formatted in the same manner as the direct data entry option

> discussed below. See the description of Time Series Files in Section 11.6 Time Series  
> Files for details.

4.  For direct data entry, enter values in the data entry grid as follows:

> *Date Column* Optional date (in month/day/year format) of the time series values (only needed at points in time where a new date occurs).
>
> *Time Column* If dates are used, enter the military time of day for each time series value (as hours:minutes or decimal hours). If dates are not used, enter time as hours since the start of the simulation.
>
> *Value Column* The time series’ numerical values.
>
> A graphical plot of the data in the grid can be viewed in a separate window by clicking the **View** button. Right clicking over the grid will make a popup Edit menu appear. It contains commands to cut, copy, insert, and paste selected cells in the grid as well as options to insert or delete a row.

5.  Press **OK** to accept the time series or **Cancel** to cancel your edits. Note that there are two methods for describing the occurrence time of time series data:

- as calendar date/time of day (which requires that at least one date, at the start of the series, be entered in the Date column)

- as elapsed hours since the start of the simulation (where the Date column remains empty).

> For rainfall time series, it is only necessary to enter periods with non-zero rainfall amounts. SWMM interprets the rainfall value as a constant value lasting over the recording interval specified for the rain gage which utilizes the time series. For all other types of time series, SWMM uses interpolation to estimate values at times that fall in between the recorded values.

**262**

> **C.20 Title/Notes Editor**
>
> <img src="./media/image205.jpg" style="width:4.49653in;height:2.40694in" />
>
> The Title/Notes editor is invoked when a project’s Title/Notes data category is selected for editing. As shown below, the editor contains a multi-line edit field where a description of a project can be entered. It also contains a check box used to indicate whether or not the first line of notes should be used as a header for printing.

**263**

> **C.21 Transect Editor**
>
> <img src="./media/image206.jpg" style="width:4.81319in;height:4.71667in" />
>
> The Transect Editor is invoked when a new transect object is created or an existing transect is selected for editing. It contains the following data entry fields:
>
> **Name**
>
> The name assigned to the transect.
>
> **Description**
>
> An optional comment or description of the transect.
>
> **Station/Elevation Data Grid**
>
> Values of distance from the left side of the channel along with the corresponding elevation of the channel bottom as one moves across the channel from left to right, looking in the downstream direction. Up to 1500 data values can be entered.
>
> **Roughness**
>
> Values of Manning's roughness for the left overbank, right overbank, and main channel portion of
>
> the transect. The overbank roughness values can be zero if no overbank exists.

**264**

> **Bank Stations**
>
> The distance values appearing in the Station/Elevation grid that mark the end of the left overbank
>
> and the start of the right overbank. Use 0 to denote the absence of an overbank.
>
> **Modifiers**

- The Stations modifier is a factor by which the distance between each station will be multiplied when the transect data is processed by SWMM. Use a value of 0 if no such factor is needed.

- The Elevations modifier is a constant value that will be added to each elevation value.

- The Meander modifier is the ratio of the length of a meandering main channel to the length of the overbank area that surrounds it. This modifier is applied to all conduits that use this particular transect for their cross section. It assumes that the length supplied for these conduits is that of the longer main channel. SWMM will use the shorter overbank length in its calculations while increasing the main channel roughness to account for its longer length. The modifier is ignored if it is left blank or set to 0.

> Right-clicking over the Data Grid will make a popup Edit menu appear. It contains commands to cut, copy, insert, and paste selected cells in the grid as well as options to insert or delete a row.
>
> Clicking the **View** button will bring up a window that illustrates the shape of the transect cross section.

**265**

> **C.22 Treatment Editor**
>
> <img src="./media/image207.jpg" style="width:5.22014in;height:3.71667in" />
>
> The Treatment Editor is invoked whenever the Treatment property of a node is selected from the Property Editor. It displays a list of the project's pollutants with an edit box next to each as shown below. Enter a valid treatment expression in the box next to each pollutant which receives treatment.
>
> A treatment function can be any well-formed mathematical expression involving:

- the pollutant concentration (use the pollutant name to represent its concentration) – for non-storage nodes this is the mixture concentration of all flow streams entering the node while for storage nodes it is the pollutant concentration within the node’s stored volume

- the removals of other pollutants (use **R\_** prefixed to the pollutant name to represent removal)

- any of the following process variables:

> \- **FLOW** for flow rate into node (in user-defined flow units)
>
> \- **DEPTH** for water depth above node invert (ft or m)
>
> \- **AREA** for node surface area (ft<sup>2</sup> or m<sup>2</sup>)
>
> \- **DT** for routing time step (sec)
>
> \- **HRT** for hydraulic residence time (hours)
>
> Any of the following math functions (which are case insensitive) can be used in a treatment expression:

**266**

- abs(x) for absolute value of x

- sgn(x) which is +1 for x \>= 0 or -1 otherwise

- step(x) which is 0 for x \<= 0 and 1 otherwise

- sqrt(x) for the square root of x

- log(x) for logarithm base e of x

- log10(x) for logarithm base 10 of x

- exp(x) for e raised to the x power

- the standard trig functions (sin, cos, tan, and cot)

- the inverse trig functions (asin, acos, atan, and acot)

- the hyperbolic trig functions (sinh, cosh, tanh, and coth)

> along with the standard operators +, -, \*, /, ^ (for exponentiation ) and any level of nested parentheses.

**267**

> **C.23 Unit Hydrograph Editor**
>
> <img src="./media/image208.jpg" style="width:3.64653in;height:4.98681in" />
>
> The Unit Hydrograph Editor is invoked whenever a new unit hydrograph object is created or an existing one is selected for editing. It is used to specify the shape parameters and rain gage for a group of triangular unit hydrographs. These hydrographs are used to compute rainfall-dependent infiltration/inflow (RDII) flow at selected nodes of the drainage system. A UH group can contain up to 12 sets of unit hydrographs (one for each month of the year), and each set can consist of up to 3 individual hydrographs (for short-term, intermediate-term, and long-term responses, respectively) as well as parameters that describe any initial abstraction losses. The editor contains the following data entry fields:
>
> **Name of UH Group**
>
> Enter the name assigned to the UH Group.
>
> **Rain Gage Used**
>
> Type in (or select from the dropdown list) the name of the rain gage that supplies rainfall data to
>
> the unit hydrographs in the group.

**268**

> **Hydrographs For:**
>
> Select a month from the dropdown list box for which hydrograph parameters will be defined. Select All Months to specify a default set of hydrographs that apply to all months of the year. Then select specific months that need to have special hydrographs defined. Months listed with a (\*) next to them have had hydrographs assigned to them.
>
> **Unit Hydrographs**
>
> Select this tab to provide the R-T-K shape parameters for each set of unit hydrographs in selected months of the year. The first row is used to specify parameters for a short-term response hydrograph (i.e., small value of T), the second for a medium-term response hydrograph, and the third for a long-term response hydrograph (largest value of T). It is not required that all three hydrographs be defined and the sum of the three R-values do not have to equal 1. The shape parameters for each UH consist of:

- *R*: the fraction of rainfall volume that enters the sewer system

- *T*: the time from the onset of rainfall to the peak of the UH in hours

- *K*: the ratio of time to recession of the UH to the time to peak

> **Initial Abstraction Depth**
>
> Select this tab to provide parameters that describe how rainfall will be reduced by any initial abstraction depth available (i.e., interception and depression storage) before it is processed through the unit hydrographs defined for a specific month of the year. Different initial abstraction parameters can be assigned to each of the three unit hydrograph responses. These parameters are:

- *Dmax*: the maximum depth of initial abstraction available (in rain depth units)

- *Drec*: the rate at which any utilized initial abstraction is made available again (in rain depth units per day)

- *Do*: the amount of initial abstraction that has already been utilized at the start of the simulation (in rain depth units).

> If a grid cell is left empty its corresponding parameter value is assumed to be 0. Right-clicking over a data entry grid will make a popup Edit menu appear. It contains commands to cut, copy, and paste text to or from selected cells in the grid.

**269**

> **APPENDIX D – COMMAND LINE SWMM**
>
> **D.1 General Instructions**
>
> EPA SWMM can also be run as a console application from the command line within a DOS window. In this case the study area data are placed into a text file and results are written to a text file. The command line for running SWMM in this fashion is:
>
> swmm5 inpfile rptfile outfile
>
> where inpfile is the name of the input file, rptfile is the name of the output report file, and outfile is the name of an optional binary output file. The latter stores all time series results in a special binary format that will require a separate post-processor program for viewing. If no binary output file name is supplied then all time series results will appear in the report file. As written, the above command assumes that you are working in the directory in which EPA SWMM was installed or that this directory has been added to the PATH variable in your user profile (or the autoexec.bat file in older versions of Windows). Otherwise full pathnames for the executable swmm5.exe and the files on the command line must be used.
>
> **D.2 Input File Format**
>
> The input file for command line SWMM has the same format as the project file used by the Windows version of the program. Figure D-1 illustrates an example SWMM 5 input file. It is organized in sections, where each section begins with a keyword enclosed in brackets. The various keywords are listed below.
>
> \[TITLE\] project title
>
> \[OPTIONS\] analysis options
>
> \[REPORT\] output reporting instructions
>
> \[FILES\] interface file options
>
> \[RAINGAGES\] rain gage information
>
> \[EVAPORATION\] evaporation data
>
> \[TEMPERATURE\] air temperature and snow melt data
>
> \[ADJUSTMENTS\] monthly adjustments applied to climate variables
>
> \[SUBCATCHMENTS\] basic subcatchment information
>
> \[SUBAREAS\] subcatchment impervious/pervious sub-area data
>
> \[INFILTRATION\] subcatchment infiltration parameters
>
> \[LID_CONTROLS\] low impact development control information
>
> \[LID_USAGE\] assignment of LID controls to subcatchments

**270**

\[AQUIFERS\] groundwater aquifer parameters

\[GROUNDWATER\] subcatchment groundwater parameters

\[GWF\] groundwater flow expressions

\[SNOWPACKS\] subcatchment snow pack parameters

\[JUNCTIONS\] junction node information

\[OUTFALLS\] outfall node information

\[DIVIDERS\] flow divider node information

\[STORAGE\] storage node information

\[CONDUITS\] conduit link information

\[PUMPS\] pump link information

\[ORIFICES\] orifice link information

\[WEIRS\] weir link information

\[OUTLETS\] outlet link information

\[XSECTIONS\] conduit, orifice, and weir cross-section geometry

\[TRANSECTS\] transect geometry for conduits with irregular cross-sections

\[LOSSES\] conduit entrance/exit losses and flap valves

\[CONTROLS\] rules that control pump and regulator operation

\[POLLUTANTS\] pollutant information

\[LANDUSES\] land use categories

\[COVERAGES\] assignment of land uses to subcatchments

\[LOADINGS\] initial pollutant loads on subcatchments

\[BUILDUP\] buildup functions for pollutants and land uses

\[WASHOFF\] washoff functions for pollutants and land uses

\[TREATMENT\] pollutant removal functions at conveyance system nodes

\[INFLOWS\] external hydrograph/pollutograph inflow at nodes

\[DWF\] baseline dry weather sanitary inflow at nodes

\[RDII\] rainfall-dependent I/I information at nodes

\[HYDROGRAPHS\] unit hydrograph data used to construct RDII inflows

\[CURVES\] x-y tabular data referenced in other sections

\[TIMESERIES\] time series data referenced in other sections

\[PATTERNS\] periodic multipliers referenced in other sections

**271**

> \[TITLE\]
>
> Example SWMM Project
>
> \[OPTIONS\]
>
> FLOW_UNITS CFS
>
> INFILTRATION GREEN_AMPT
>
> FLOW_ROUTING KINWAVE
>
> START_DATE 8/6/2002
>
> START_TIME 10:00
>
> END_TIME 18:00
>
> WET_STEP 00:15:00
>
> DRY_STEP 01:00:00
>
> ROUTING_STEP 00:05:00
>
> \[RAINGAGES\]
>
> ;;Name Format Interval SCF DataSource SourceName
>
> ;;=========================================================
>
> GAGE1 INTENSITY 0:15 1.0 TIMESERIES SERIES1
>
> \[EVAPORATION\]  
> CONSTANT 0.02
>
> \[SUBCATCHMENTS\]
>
> ;;Name Raingage Outlet Area %Imperv Width Slope
>
> ;;====================================================

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 7%" />
<col style="width: 13%" />
<col style="width: 12%" />
<col style="width: 29%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>AREA1</p>
</blockquote></td>
<td>GAGE1</td>
<td>NODE1</td>
<td>2</td>
<td>80.0</td>
<td><blockquote>
<p>800.0</p>
</blockquote></td>
<td>1.0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>AREA2</p>
</blockquote></td>
<td>GAGE1</td>
<td>NODE2</td>
<td>2</td>
<td>75.0</td>
<td><blockquote>
<p>50.0</p>
</blockquote></td>
<td>1.0</td>
</tr>
</tbody>
</table>

> \[SUBAREAS\]
>
> ;;Subcatch N_Imp N_Perv S_Imp S_Perv %ZER RouteTo
>
> ;;=====================================================

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 30%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>AREA1</p>
</blockquote></td>
<td>0.2</td>
<td>0.02</td>
<td>0.02</td>
<td>0.1</td>
<td>20.0</td>
<td>OUTLET</td>
</tr>
<tr class="even">
<td><blockquote>
<p>AREA2</p>
</blockquote></td>
<td>0.2</td>
<td>0.02</td>
<td>0.02</td>
<td>0.1</td>
<td>20.0</td>
<td>OUTLET</td>
</tr>
</tbody>
</table>

> \[INFILTRATION\]
>
> ;;Subcatch Suction Conduct InitDef
>
> ;;======================================

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 55%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>AREA1</p>
</blockquote></td>
<td>4.0</td>
<td>1.0</td>
<td>0.34</td>
</tr>
<tr class="even">
<td><blockquote>
<p>AREA2</p>
</blockquote></td>
<td>4.0</td>
<td>1.0</td>
<td>0.34</td>
</tr>
</tbody>
</table>

> \[JUNCTIONS\]
>
> ;;Name Elev
>
> ;;============

<table>
<colgroup>
<col style="width: 14%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>NODE1</p>
</blockquote></td>
<td><blockquote>
<p>10.0</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NODE2</p>
</blockquote></td>
<td><blockquote>
<p>10.0</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>NODE3</p>
</blockquote></td>
<td><blockquote>
<p>5.0</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NODE4</p>
</blockquote></td>
<td><blockquote>
<p>5.0</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>NODE6</p>
</blockquote></td>
<td><blockquote>
<p>1.0</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NODE7</p>
</blockquote></td>
<td><blockquote>
<p>2.0</p>
</blockquote></td>
</tr>
</tbody>
</table>

**Figure D-1 Example SWMM project file**

**272**

> \[DIVIDERS\]
>
> ;;Name Elev Link Type Parameters
>
> ;;=======================================
>
> NODE5 3.0 C6 CUTOFF 1.0
>
> \[CONDUITS\]
>
> ;;Name Node1 Node2 Length N Z1 Z2 Q0
>
> ;;=========================================================

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 15%" />
<col style="width: 12%" />
<col style="width: 9%" />
<col style="width: 12%" />
<col style="width: 8%" />
<col style="width: 8%" />
<col style="width: 22%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>C1</p>
</blockquote></td>
<td>NODE1</td>
<td>NODE3</td>
<td>800</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C2</p>
</blockquote></td>
<td>NODE2</td>
<td>NODE4</td>
<td>800</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>C3</p>
</blockquote></td>
<td>NODE3</td>
<td>NODE5</td>
<td>400</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C4</p>
</blockquote></td>
<td>NODE4</td>
<td>NODE5</td>
<td>400</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>C5</p>
</blockquote></td>
<td>NODE5</td>
<td>NODE6</td>
<td>600</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C6</p>
</blockquote></td>
<td>NODE5</td>
<td>NODE7</td>
<td>400</td>
<td>0.01</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
</tbody>
</table>

> \[XSECTIONS\]
>
> ;;Link Type G1 G2 G3 G4
>
> ;;===================================================

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 23%" />
<col style="width: 12%" />
<col style="width: 11%" />
<col style="width: 10%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>C1</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
<td>0.5</td>
<td>1</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C2</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
<td>0.5</td>
<td>1</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>C3</p>
</blockquote></td>
<td><blockquote>
<p>CIRCULAR</p>
</blockquote></td>
<td>1.0</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C4</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
<td>1.0</td>
<td>1.0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>C5</p>
</blockquote></td>
<td><blockquote>
<p>PARABOLIC</p>
</blockquote></td>
<td>1.5</td>
<td>2.0</td>
<td>0</td>
<td>0</td>
</tr>
<tr class="even">
<td><blockquote>
<p>C6</p>
</blockquote></td>
<td><blockquote>
<p>PARABOLIC</p>
</blockquote></td>
<td>1.5</td>
<td>2.0</td>
<td>0</td>
<td>0</td>
</tr>
</tbody>
</table>

> \[POLLUTANTS\]
>
> ;;Name Units Cppt Cgw Cii Kd Snow CoPollut CoFract
>
> ;;==========================================================
>
> TSS MG/L 0 0 0 0
>
> Lead UG/L 0 0 0 0 NO TSS 0.20
>
> \[LANDUSES\]  
> RESIDENTIAL  
> UNDEVELOPED
>
> \[WASHOFF\]
>
> ;;Landuse Pollutant Type Coeff Expon SweepEff BMPEff
>
> ;;===============================================================
>
> RESIDENTIAL TSS EMC 23.4 0 0 0
>
> UNDEVELOPED TSS EMC 12.1 0 0 0
>
> \[COVERAGES\]
>
> ;;Subcatch Landuse Pcnt Landuse Pcnt
>
> ;;==================================================
>
> AREA1 RESIDENTIAL 80 UNDEVELOPED 20
>
> AREA2 RESIDENTIAL 55 UNDEVELOPED 45
>
> \[TIMESERIES\]
>
> ;Rainfall time series
>
> SERIES1 0:0 0.1 0:15 1.0 0:30 0.5
>
> SERIES1 0:45 0.1 1:00 0.0 2:00 0.0

**Figure D-1 Example SWMM project file (continued from previous page).**

**273**

The sections can appear in any arbitrary order in the input file, and not all sections must be present. Each section can contain one or more lines of data. Blank lines may appear anywhere in the file. A semicolon (;) can be used to indicate that what follows on the line is a comment, not data. Data items can appear in any column of a line. Observe how in Figure D-1 these features were used to create a tabular appearance for the data, complete with column headings.

Section keywords can appear in mixed lower and upper case, and only the first four characters (plus the open bracket) are used to distinguish one keyword from another (e.g., \[**DIVIDERS**\] and \[**Divi**\] are equivalent). An option is available in the \[**OPTIONS**\] section to choose flow units from among cubic feet per second (CFS), gallons per minute (GPM), million gallons per day (MGD), cubic meters per second (CMS), liters per second, (LPS), or million liters per day (MLD). If cubic feet or gallons are chosen for flow units, then US units are used for all other quantities. If cubic meters or liters are chosen, then metric units apply to all other quantities. The default flow units are CFS.

A detailed description of the data in each section of the input file will now be given. Each section description begins on a new page. When listing the format of a line of data, mandatory keywords are shown in boldface while optional items appear in parentheses. A list of keywords separated by a slash (**YES/NO**) means that only one of the words should appear in the data line.

**274**

**Section**: \[**TITLE**\]

**Purpose**: Attaches a descriptive title to the problem being analyzed.

**Format**: Any number of lines may be entered. The first line will be used as a page header in

> the output report.

**275**

> **Section**: \[**OPTIONS**\]
>
> **Purpose**: Provides values for various analysis options.
>
> **Format**: **FLOW_UNITS CFS / GPM / MGD / CMS / LPS / MLD**
>
> **INFILTRATION HORTON / MODIFIED_HORTON / GREEN_AMPT**

**/ MODIFIED_GREEN_AMPT / CURVE_NUMBER**

> **FLOW_ROUTING STEADY / KINWAVE / DYNWAVE**
>
> **LINK_OFFSETS DEPTH / ELEVATION**
>
> **FORCE_MAIN_EQUATION H-W / D-W**
>
> **IGNORE_RAINFALL YES / NO**
>
> **IGNORE_SNOWMELT YES / NO**
>
> **IGNORE_GROUNDWATER YES / NO**
>
> **IGNORE_RDII YES / NO**
>
> **IGNORE_ROUTING YES / NO**
>
> **IGNORE_QUALITY YES / NO**
>
> **ALLOW_PONDING YES / NO**
>
> **SKIP_STEADY_STATE YES / NO**
>
> **SYS_FLOW_TOL** value
>
> **LAT_FLOW_TOL** value
>
> **START_DATE** month/day/year
>
> **START_TIME** hours:minutes
>
> **END_DATE** month/day/year
>
> **END_TIME** hours:minutes
>
> **REPORT_START_DATE** month/day/year
>
> **REPORT_START_TIME** hours:minutes
>
> **SWEEP_START** month/day
>
> **SWEEP_END** month/day
>
> **DRY_DAYS** days
>
> **REPORT_STEP** hours:minutes:seconds
>
> **WET_STEP** hours:minutes:seconds
>
> **DRY_STEP** hours:minutes:seconds
>
> **ROUTING_STEP** seconds
>
> **LENGTHENING_STEP** seconds
>
> **VARIABLE_STEP** value
>
> **MINIMUM_STEP** seconds
>
> **INERTIAL_DAMPING NONE / PARTIAL / FULL**
>
> **NORMAL_FLOW_LIMITED SLOPE / FROUDE / BOTH**

**276**

> **MIN_SURFAREA** value
>
> **MIN_SLOPE** value
>
> **MAX_TRIALS** value
>
> **HEAD_TOLERANCE** value
>
> **THREADS** value
>
> **TEMPDIR** directory

**Remarks**: **FLOW_UNITS** makes a choice of flow units. Selecting a US flow unit means that all other quantities will be expressed in US units, while choosing a metric flow unit will force all quantities to be expressed in metric units. The default is **CFS**.

> **INFILTRATION** selects a model for computing infiltration of rainfall into the upper soil zone of subcatchments. The default model is **HORTON**.
>
> **FLOW_ROUTING** determines which method is used to route flows through the drainage system. **STEADY** refers to sequential steady state routing (i.e. hydrograph translation), **KINWAVE** to kinematic wave routing, **DYNWAVE** to dynamic wave routing. The default routing method is **KINWAVE**.
>
> **LINK_OFFSETS** determines the convention used to specify the position of a link offset above the invert of its connecting node. **DEPTH** indicates that offsets are expressed as the distance between the node invert and the link while **ELEVATION** indicates that the absolute elevation of the offset is used. The default is **DEPTH**.
>
> **FORCE_MAIN_EQUATION** establishes whether the Hazen-Williams (**H-W**) or the Darcy-Weisbach (**D-W**) equation will be used to compute friction losses for pressurized flow in conduits that have been assigned a Circular Force Main cross-section shape. The default is **H-W**.
>
> **IGNORE_RAINFALL** is set to **YES** if all rainfall data and runoff calculations should be ignored. In this case SWMM only performs flow and pollutant routing based on user-supplied direct and dry weather inflows. The default is **NO**.
>
> **IGNORE_SNOWMELT** is set to **YES** if snowmelt calculations should be ignored when a project file contains snow pack objects. The default is **NO**.
>
> **IGNORE_GROUNDWATER** is set to **YES** if groundwater calculations should be ignored when a project file contains aquifer objects. The default is **NO**.
>
> **IGNORE_RDII** is set to **YES** if rainfall dependent inflow/infiltration should be ignored when RDII unit hydrographs and RDII inflows have been supplied to a project file. The default is **NO**.

**277**

**IGNORE_ROUTING** is set to **YES** if only runoff should be computed even if the project contains drainage system links and nodes. The default is **NO**.

**IGNORE_QUALITY** is set to **YES** if pollutant washoff, routing, and treatment should be ignored in a project that has pollutants defined. The default is **NO**.

**ALLOW_PONDING** determines whether excess water is allowed to collect atop nodes and be re-introduced into the system as conditions permit. The default is **NO** ponding. In order for ponding to actually occur at a particular node, a non-zero value for its Ponded Area attribute must be used.

**SKIP_STEADY_STATE** should be set to **YES** if flow routing computations should be skipped during steady state periods of a simulation during which the last set of computed flows will be used. A time step is considered to be in steady state if the percent difference between total system inflow and total system outflow is below the **SYS_FLOW_TOL** and the percent difference between current and previous lateral inflows are below the **LAT_FLOW_TOL**. The default for this option is **NO**.

**SYS_FLOW_TOL** is the maximum percent difference between total system inflow and total system outflow which can occur in order for the **SKIP_STEADY_STATE** option to take effect. The default is 5 percent.

**LAT_FLOW_TOL** is the maximum percent difference between the current and previous lateral inflow at all nodes in the conveyance system in order for the **SKIP_STEADY_STATE** option to take effect. The default is 5 percent.

**START_DATE** is the date when the simulation begins. If not supplied, a date of 1/1/2002 is used.

**START_TIME** is the time of day on the starting date when the simulation begins. The default is 12 midnight (0:00:00).

**END_DATE** is the date when the simulation is to end. The default is the start date.

**END_TIME** is the time of day on the ending date when the simulation will end. The default is 24:00:00.

**REPORT_START_DATE** is the date when reporting of results is to begin. The default is the simulation start date.

**REPORT_START_TIME** is the time of day on the report starting date when reporting is to begin. The default is the simulation start time of day.

**SWEEP_START** is the day of the year (month/day) when street sweeping operations begin. The default is 1/1.

**278**

**SWEEP_END** is the day of the year (month/day) when street sweeping operations end. The default is 12/31.

**DRY_DAYS** is the number of days with no rainfall prior to the start of the simulation. The default is 0.

**REPORT_STEP** is the time interval for reporting of computed results. The default is 0:15:00.

**WET_STEP** is the time step length used to compute runoff from subcatchments during periods of rainfall or when ponded water still remains on the surface. The default is 0:05:00.

**DRY_STEP** is the time step length used for runoff computations (consisting essentially of pollutant buildup) during periods when there is no rainfall and no ponded water. The default is 1:00:00.

**ROUTING_STEP** is the time step length in seconds used for routing flows and water quality constituents through the conveyance system. The default is 600 sec (5 minutes) which should be reduced if using dynamic wave routing. Fractional values (e.g., 2.5) are permissible as are values entered in hours:minutes:seconds format.

**LENGTHENING_STEP** is a time step, in seconds, used to lengthen conduits under dynamic wave routing, so that they meet the Courant stability criterion under full-flow conditions (i.e., the travel time of a wave will not be smaller than the specified conduit lengthening time step). As this value is decreased, fewer conduits will require lengthening. A value of 0 (the default) means that no conduits will be lengthened.

**VARIABLE_STEP** is a safety factor applied to a variable time step computed for each time period under dynamic wave flow routing. The variable time step is computed so as to satisfy the Courant stability criterion for each conduit and yet not exceed the **ROUTING_STEP** value. If the safety factor is 0 (the default), then no variable time step is used.

**MINIMUM_STEP** is the smallest time step allowed when variable time steps are used for dynamic wave flow routing. The default value is 0.5 seconds.

**INERTIAL_DAMPING** indicates how the inertial terms in the Saint Venant momentum equation will be handled under dynamic wave flow routing. Choosing **NONE** maintains these terms at their full value under all conditions. Selecting **PARTIAL** will reduce the terms as flow comes closer to being critical (and ignores them when flow is supercritical). Choosing **FULL** will drop the terms altogether.

**NORMAL_FLOW_LIMITED** specifies which condition is checked to determine if flow in a conduit is supercritical and should thus be limited to the normal flow. Use **SLOPE** to check if the water surface slope is greater than the conduit slope, **FROUDE** to check if

**279**

the Froude number is greater than 1.0, or **BOTH** to check both conditions. The default is **BOTH**.

**MIN**\_**SURFAREA** is a minimum surface area used at nodes when computing changes in water depth under dynamic wave routing. If 0 is entered, then the default value of 12.566 ft<sup>2</sup> (i.e., the area of a 4-ft diameter manhole) is used.

**MIN_SLOPE** is the minimum value allowed for a conduit’s slope (%). If zero (the default) then no minimum is imposed (although SWMM uses a lower limit on elevation drop of 0.001 ft (0.00035 m) when computing a conduit slope).

**MAX_TRIALS** is the maximum number of trials allowed during a time step to reach convergence when updating hydraulic heads at the conveyance system’s nodes. The default value is 8.

**HEAD_TOLERANCE** is the difference in computed head at each node between successive trials below which the flow solution for the current time step is assumed to have converged. The default tolerance is 0.005 ft (0.0015 m).

**THREADS** is the number of parallel computing threads to use for dynamic wave flow routing on machines equipped with multi-core processors. The default is 1.

**TEMPDIR** provides the name of a file directory (or folder) where SWMM writes its temporary files. If the directory name contains spaces then it should be placed within double quotes. If no directory is specified, then the temporary files are written to the current directory that the user is working in.

**280**

**Section**: \[**REPORT**\]

**Purpose**: Describes the contents of the report file that is produced.

**Formats**: **INPUT YES / NO**

> **CONTINUITY YES / NO**
>
> **FLOWSTATS YES / NO**
>
> **CONTROLS YES / NO**
>
> **SUBCATCHMENTS ALL / NONE /** \<list of subcatchment names\>
>
> **NODES ALL / NONE /** \<list of node names\>
>
> **LINKS ALL / NONE /** \<list of link names\>

**Remarks**: **INPUT** specifies whether or not a summary of the input data should be provided in the output report. The default is **NO**.

> **CONTINUITY** specifies whether continuity checks should be reported or not. The default is **YES**.
>
> **FLOWSTATS** specifies whether summary flow statistics should be reported or not. The default is **YES**.
>
> **CONTROLS** specifies whether all control actions taken during a simulation should be listed or not. The default is **NO**.
>
> **SUBCATCHMENTS** gives a list of subcatchments whose results are to be reported. The default is **NONE**.
>
> **NODES** gives a list of nodes whose results are to be reported. The default is **NONE**. **LINKS** gives a list of links whose results are to be reported. The default is **NONE**.
>
> **LID** specifies that the LID control *Name* in subcatchment *Subcatch* should have a detailed performance report for it written to file *Fname*.
>
> The **SUBCATCHMENTS**, **NODES**, **LINKS,** and **LID** lines can be repeated multiple times.

**281**

**Section**: \[**FILES**\]

**Purpose**: Identifies optional interface files used or saved by a run.

**Formats**: **USE / SAVE RAINFALL** *Fname*

> **USE / SAVE RUNOFF** *Fname*
>
> **USE / SAVE HOTSTART** *Fname*
>
> **USE / SAVE RDII** *Fname*
>
> **USE INFLOWS** *Fname*
>
> **SAVE OUTFLOWS** *Fname*

**Remarks**: *Fname* is the name of an interface file.

Refer to Section 11.7 Interface Files for a description of interface files. Rainfall, Runoff, and RDII files can either be used or saved in a run, but not both. A run can both use and save a Hot Start file (with different names).

**282**

> **Section**: \[**RAINGAGES**\]
>
> **Purpose**: Identifies each rain gage that provides rainfall data for the study area.
>
> **Formats**: *Name Form Intvl SCF* **TIMESERIES** *Tseries  
> Name Form Intvl SCF* **FILE** *Fname Sta Units*
>
> **Remarks**: *Name* name assigned to rain gage.
>
> *Form* form of recorded rainfall, either **INTENSITY, VOLUME** or **CUMULATIVE**.
>
> *Intvl* time interval between gage readings in decimal hours or hours:minutes format (e.g., 0:15 for 15-minute readings).
>
> *SCF* snow catch deficiency correction factor (use 1.0 for no adjustment). *Tseries* name of time series in \[**TIMESERIES**\] section with rainfall data.
>
> *Fname* name of external file with rainfall data. Rainfall files are discussed in
>
> Section 11.3 Rainfall Files.
>
> *Sta* name of recording station used in the rain file.
>
> *Units* rain depth units used in the rain file, either **IN** (inches) or **MM** (millimeters).

**283**

**Section**: \[**EVAPORATION**\]

**Purpose**: Specifies how daily evaporation rates vary with time for the study area.

**Formats**: **CONSTANT** *evap*

> **MONTHLY** *e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12*
>
> **TIMESERIES** *Tseries*
>
> **TEMPERATURE**
>
> **FILE** *(p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12)*
>
> **RECOVERY** *patternID*
>
> **DRY_ONLY NO / YES**

**Remarks**: *evap* constant evaporation rate (in/day or mm/day).

> *e1* evaporation rate in January (in/day or mm/day).  
> **...**
>
> *e12* evaporation rate in December (in/day or mm/day).
>
> *Tseries* name of time series in \[**TIMESERIES**\] section with evaporation data.
>
> *p1* pan coefficient for January.  
> **...**
>
> *p12* pan coefficient for December.
>
> *patID* name of a monthly time pattern.
>
> Use only one of the above formats (CONSTANT, MONTHLY, TIMESERIES, TEMPERATURE, or FILE). If no \[**EVAPORATION**\] section appears, then evaporation is assumed to be 0.
>
> **TEMPERATURE** indicates that evaporation rates will be computed from the daily air temperatures contained in an external climate file whose name is provided in the \[**TEMPERATURE**\] section (see below). This method also uses the site’s latitude, which can also be specified in the \[**TEMPERATURE**\] section.
>
> **FILE** indicates that evaporation data will be read directly from the same external climate file used for air temperatures as specified in the \[**TEMPERATURE**\] section (see below).
>
> **RECOVERY** identifies an optional monthly time pattern of multipliers used to modify infiltration recovery rates during dry periods. For example, if the normal infiltration recovery rate was 1% during a specific time period and a pattern factor of 0.8 applied to this period, then the actual recovery rate would be 0.8%.
>
> **DRY_ONLY** determines if evaporation only occurs during periods with no precipitation. The default is **NO**.

**284**

**Section**: \[**TEMPERATURE**\]

**Purpose**: Specifies daily air temperatures, monthly wind speed, and various snowmelt parameters for the study area. Required only when snowmelt is being modeled or when evaporation rates are computed from daily temperatures or are read from an external climate file.

**Formats**: **TIMESERIES** *Tseries*

> **FILE** *Fname (Start)*
>
> **WINDSPEED MONTHLY** *s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12*
>
> **WINDSPEED FILE**
>
> **SNOWMELT** *Stemp ATIwt RNM Elev Lat DTLong*
>
> **ADC IMPERVIOUS** *f.0 f.1 f.2 f.3 f.4 f.5 f.6 f.7 f.8 f.9*
>
> **ADC PERVIOUS** *f.0 f.1 f.2 f.3 f.4 f.5 f.6 f.7 f.8 f.9*

**Remarks**: *Tseries* name of time series in \[**TIMESERIES**\] section with temperature data.

> *Fname* name of external Climate file with temperature data.
>
> *Start* date to begin reading from the file in month/day/year format (default is the beginning of the file).
>
> *s1* average wind speed in January (mph or km/hr).  
> **...**
>
> *s12* average wind speed in December (mph or km/hr).
>
> *Stemp* air temperature at which precipitation falls as snow (deg F or C).
>
> *ATIwt* antecedent temperature index weight (default is 0.5).
>
> *RNM* negative melt ratio (default is 0.6).
>
> *Elev* average elevation of study area above mean sea level (ft or m) (default is 0).
>
> *Lat* latitude of the study area in degrees North (default is 50).
>
> *DTLong* correction, in minutes of time, between true solar time and the standard clock time (default is 0).
>
> *f.0* fraction of area covered by snow when ratio of snow depth to depth at
>
> 100% cover is 0
>
> .**...**
>
> *f.9* fraction of area covered by snow when ratio of snow depth to depth at 100% cover is 0.9.
>
> Use the **TIMESERIES** line to read air temperature from a time series or the **FILE** line to read it from an external Climate file. Climate files are discussed in Section 11.4 Climate Files. If neither format is used, then air temperature remains constant at 70 degrees F.

**285**

Wind speed can be specified either by monthly average values or by the same Climate file used for air temperature. If neither option appears, then wind speed is assumed to be 0.

Separate Areal Depletion Curves (ADC) can be defined for impervious and pervious sub-areas. The ADC parameters will default to 1.0 (meaning no depletion) if no data are supplied for a particular type of sub-area.

**286**

**Section**: \[**ADJUSTMENTS**\]

**Purpose**: Specifies optional monthly adjustments to be made to temperature, evaporation rate, rainfall intensity and hydraulic conductivity in each time period of a simulation.

**Format**: **TEMPERATURE** *t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12*

> **EVAPORATION** *e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12*
>
> **RAINFALL** *r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12* **CONDUCTIVITY** *c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12*

**Remarks**: *t1..t12* adjustments to temperature in January, February, etc., as plus or minus degrees F (degrees C).

> *e1..e12* adjustments to evaporation rate in January, February, etc., as plus or minus in/day (mm/day).
>
> *r1..r12* multipliers applied to precipitation rate in January, February, etc.
>
> *c1..c12* multipliers applied to soil hydraulic conductivity in January, February, etc. used in either Horton or Green-Ampt infiltration.

The same adjustment is applied for each time period within a given month and is repeated for that month in each subsequent year being simulated.

**287**

**Section**: \[**SUBCATCHMENTS**\]

**Purpose**: Identifies each subcatchment within the study area. Subcatchments are land area units which generate runoff from rainfall.

**Format**: *Name Rgage OutID Area %Imperv Width Slope Clength (Spack)*

**Remarks**: *Name* name assigned to subcatchment.

> *Rgage* name of rain gage in \[**RAINGAGES**\] section assigned to subcatchment.
>
> *OutID* name of node or subcatchment that receives runoff from subcatchment.
>
> *Area* area of subcatchment (acres or hectares).  
> *%Imperv* percent imperviousness of subcatchment.
>
> *Width* characteristic width of subcatchment (ft or meters).
>
> *Slope* subcatchment slope (percent).
>
> *Clength* total curb length (any length units). Use 0 if not applicable.
>
> *Spack* optional name of snow pack object (from \[**SNOWPACKS**\] section) that

characterizes snow accumulation and melting over the subcatchment.

**288**

**Section**: \[**SUBAREAS**\]

**Purpose**: Supplies information about pervious and impervious areas for each subcatchment. Each subcatchment can consist of a pervious sub-area, an impervious sub-area with depression storage, and an impervious sub-area without depression storage.

**Format**: *Subcat Nimp Nperv Simp Sperv %Zero RouteTo (%Routed)*

**Remarks**: *Subcat* subcatchment name.

> *Nimp* Manning's n for overland flow over the impervious sub-area.
>
> *Nperv* Manning's n for overland flow over the pervious sub-area.
>
> *Simp* depression storage for impervious sub-area (inches or mm).
>
> *Sperv* depression storage for pervious sub-area (inches or mm).
>
> *%Zero* percent of impervious area with no depression storage. *RouteTo* **IMPERVIOUS** if pervious area runoff runs onto impervious area,
>
> **PERVIOUS** if impervious runoff runs onto pervious area, or **OUTLET** if both areas drain to the subcatchment's outlet (default = **OUTLET**).
>
> *%Routed* percent of runoff routed from one type of area to another (default = 100).

**289**

**Section**: \[**INFILTRATION**\]

**Purpose**: Supplies infiltration parameters for each subcatchment. Rainfall lost to infiltration only occurs over the pervious sub-area of a subcatchment.

**Formats**: *Subcat MaxRate MinRate Decay DryTime MaxInf*

> *Subcat Psi Ksat IMD*
>
> *Subcat CurveNo Ksat DryTime*

**Remarks**: *Subcat* subcatchment name.

> <u>For Horton and Modified Horton Infiltration:</u>
>
> *MaxRate* maximum infiltration rate on Horton curve (in/hr or mm/hr).
>
> *MinRate* minimum infiltration rate on Horton curve (in/hr or mm/hr).
>
> *Decay* decay rate constant of Horton curve (1/hr).  
> *DryTime* time it takes for fully saturated soil to dry (days).
>
> *MaxInf* maximum infiltration volume possible (0 if not applicable) (in or mm).
>
> <u>For Green-Ampt and Modified Green-Ampt Infiltration:</u>
>
> *Psi* soil capillary suction (in or mm).
>
> *Ksat* soil saturated hydraulic conductivity (in/hr or mm/hr).
>
> *IMD* initial soil moisture deficit (volume of voids / total volume).
>
> <u>For Curve-Number Infiltration:  
> </u>*CurveNo* SCS Curve Number.
>
> *Ksat* soil saturated hydraulic conductivity (in/hr or mm/hr)
>
> (This property has been deprecated and is no longer used.)
>
> *DryTime* time it takes for fully saturated soil to dry (days).

**290**

**Section**: **\[LID_CONTROLS\]**

**Purpose**: Defines scale-independent LID controls that can be deployed within subcatchments.

**Formats**: *Name Type*

> followed by one or more of the following lines depending on *Type*:
>
> *Name* **SURFACE** *StorHt VegFrac Rough Slope Xslope*
>
> *Name* **SOIL** *Thick Por FC WP Ksat Kcoeff Suct Name* **PAVEMENT** *Thick Vratio FracImp Perm Vclog Name* **STORAGE** *Height Vratio Seepage Vclog*
>
> *Name* **DRAIN** *Coeff Expon Offset Delay  
> Name* **DRAINMAT** *Thick Vratio Rough*

**Remarks**: *Name* name assigned to LID process.

> *Type* **BC** for bio-retention cell; **RG** for rain garden; **GR** for green roof; **IT** for infiltration trench; **PP** for permeable pavement; **RB** for rain barrel; **RD** for rooftop disconnection; **VS** for vegetative swale.
>
> <u>For LIDs with Surface Layers:</u>
>
> *StorHt w*hen confining walls or berms are present this is the maximum depth to which water can pond above the surface of the unit before overflow occurs (in inches or mm). For LIDs that experience overland flow it is the height of any surface depression storage. For swales, it is the height of its trapezoidal cross section.
>
> *VegFrac* fraction of the surface storage volume that is filled with vegetation.
>
> *Rough* Manning's n for overland flow over surface soil cover, pavement, roof surface or a vegetative swale. Use 0 for other types of LIDs.
>
> *Slope* slope of a roof surface, pavement surface or vegetative swale (percent). Use 0 for other types of LIDs.
>
> *Xslope* slope (run over rise) of the side walls of a vegetative swale's cross section. Use 0 for other types of LIDs.
>
> If either *Rough* or *Slope* values are 0 then any ponded water that exceeds the surface storage depth is assumed to completely overflow the LID control within a single time step.
>
> <u>For LIDs with Pavement Layers:</u>
>
> *Thick* thickness of the pavement layer (inches or mm).
>
> *Vratio* void ratio (volume of void space relative to the volume of solids in the pavement for continuous systems or for the fill material used in modular systems). Note that porosity = void ratio / (1 + void ratio).

**291**

*FracImp* ratio of impervious paver material to total area for modular systems; 0 for continuous porous pavement systems.

*Perm* permeability of the concrete or asphalt used in continuous systems or hydraulic conductivity of the fill material (gravel or sand) used in modular systems (in/hr or mm/hr).

*Vclog* number of pavement layer void volumes of runoff treated it takes to completely clog the pavement. Use a value of 0 to ignore clogging.

<u>For LIDs with Soil Layers:</u>

*Thick* thickness of the soil layer (inches or mm).

*Por* soil porosity (volume of pore space relative to total volume).

*FC* soil field capacity (volume of pore water relative to total volume after the soil has been allowed to drain fully).

*WP* soil wilting point (volume of pore water relative to total volume for a well dried soil where only bound water remains).

*Ksat* soil’s saturated hydraulic conductivity (in/hr or mm/hr).

*Kcoeff* slope of the curve of log(conductivity) versus soil moisture content (dimensionless).

*Suct* soil capillary suction (in or mm).

<u>For LIDs with Storage Layers:</u>

*Height* thickness of the storage layer or height of a rain barrel (inches or mm).

*Vratio* void ratio (volume of void space relative to the volume of solids in the layer). Note that porosity = void ratio / (1 + void ratio).

*Seepage* the rate at which water seeps from the layer into the underlying native soil when first constructed (in/hr or mm/hr). If there is an impermeable floor or liner below the layer then use a value of 0.

*Vclog* number of storage layer void volumes of runoff treated it takes to

> completely clog the layer. Use a value of 0 to ignore clogging.

*Values for Vratio, Seepage, and Vclog are ignored for rain barrels.* <u>For LIDs with Drain Systems:</u>

*Coeff* coefficient *C* that determines the rate of flow through the drain as a function of height of stored water above the drain bottom. For Rooftop Disconnection it is the maximum flow rate (in inches/hour or mm/hour) that the roof’s gutters and downspouts can handle before overflowing.

*Expon* exponent *n* that determines the rate of flow through the drain as a function of height of stored water above the drain outlet.

*Offset* height of the drain line above the bottom of the storage layer or rain barrel (inches or mm).

**292**

> *Delay* number of dry weather hours that must elapse before the drain line in a rain barrel is opened (the line is assumed to be closed once rainfall begins). A value of 0 signifies that the barrel's drain line is always open and drains continuously. This parameter is ignored for other types of LIDs.
>
> <u>For Green Roof LIDs with Drainage Mats:</u>
>
> *Thick* thickness of the drainage mat (inches or mm).
>
> *Vratio* ratio of void volume to total volume in the mat.
>
> *Rough* Manning's n constant used to compute the horizontal flow rate of drained water through the mat.
>
> The following table shows which layers are required (x) or are optional (o) for each type of LID process:

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 15%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 12%" />
<col style="width: 14%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>LID Type</strong></p>
</blockquote></td>
<td><strong>Surface</strong></td>
<td><strong>Pavement</strong></td>
<td><strong>Soil</strong></td>
<td><strong>Storage</strong></td>
<td><strong>Drain</strong></td>
<td><blockquote>
<p><strong>Drain Mat</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bio-Retention Cell</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td>x</td>
<td>o</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rain Garden</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Green Roof</p>
</blockquote></td>
<td>x</td>
<td></td>
<td>x</td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>x</strong></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Infiltration Trench</p>
</blockquote></td>
<td>x</td>
<td></td>
<td></td>
<td>x</td>
<td>o</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Permeable Pavement</p>
</blockquote></td>
<td>x</td>
<td>x</td>
<td>o</td>
<td>x</td>
<td>o</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rain Barrel</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td>x</td>
<td>x</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rooftop</p>
<p>Disconnection</p>
</blockquote></td>
<td>x</td>
<td></td>
<td></td>
<td></td>
<td>x</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vegetative Swale</p>
</blockquote></td>
<td>x</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

> The equation used to compute flow rate out of the underdrain per unit area of the LID (in in/hr or
>
> mm/hr) is *q* = *C(h* − *Hd )* where q is outflow, h is height of stored water (inches or mm) and Hd
>
> *n*
>
> is the drain offset height. Note that the units of *C* depend on the unit system being used as well
>
> as the value assigned to *n*.
>
> The actual dimensions of an LID control are provided in the \[LID_USAGE\] section when it is
>
> placed in a particular subcatchment.
>
> **Examples**: ;A street planter with no drain
>
> Planter BC

<table>
<colgroup>
<col style="width: 24%" />
<col style="width: 12%" />
<col style="width: 5%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 6%" />
<col style="width: 29%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Planter</td>
<td><blockquote>
<p>SURFACE</p>
</blockquote></td>
<td>6</td>
<td>0.3</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td></td>
</tr>
<tr class="even">
<td>Planter</td>
<td><blockquote>
<p>SOIL</p>
</blockquote></td>
<td>24</td>
<td>0.5</td>
<td>0.1</td>
<td>0.05</td>
<td>1.2</td>
<td>2.4</td>
</tr>
<tr class="odd">
<td>Planter</td>
<td><blockquote>
<p>STORAGE</p>
</blockquote></td>
<td>12</td>
<td>0.5</td>
<td>0.5</td>
<td>0</td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

**293**

;A green roof with impermeable bottom  
GR1 BC

GR1 SURFACE 3 0 0 0 0

GR1 SOIL 3 0.5 0.1 0.05 1.2 2.4

GR1 STORAGE 3 0.5 0 0

GR1 DRAIN 5 0.5 0 0

;A rain barrel that drains 6 hours after rainfall ends

RB12 RB

RB12 STORAGE 36 0 0 0

RB12 DRAIN 10 0.5 0 6

;A grass swale 24 in. high with 5:1 side slope

Swale VS

Swale SURFACE 24 0 0.2 3 5

**294**

> **Section**: **\[LID_USAGE\]**
>
> **Purpose**: Deploys LID controls within specific subcatchment areas.
>
> **Format**: *Subcat LID Number Area Width InitSat FromImp ToPerv*
>
> *(RptFile DrainTo)*
>
> **Remarks**: *Subcat* name of the subcatchment using the LID process.
>
> *LID* name of an LID process defined in the \[LID_CONTROLS\] section.
>
> *Number* number of replicate LID units deployed.
>
> *Area* area of each replicate unit (ft<sup>2</sup> or m<sup>2</sup>).
>
> *Width* width of the outflow face of each identical LID unit (in ft or m). This parameter applies to roofs, pavement, trenches, and swales that use overland flow to convey surface runoff off of the unit. It can be set to 0 for other LID processes, such as bio-retention cells, rain gardens, and rain barrels that simply spill any excess captured runoff over their berms.
>
> *InitSat* for bio-retention cells, rain gardens, and green roofs this is the degree to which the unit's soil is initially filled with water (0 % saturation corresponds to the wilting point moisture content, 100 % saturation has the moisture content equal to the porosity). The storage zone beneath the soil zone of the cell is assumed to be completely dry. For other types of LIDs it corresponds to the degree to which their storage zone is initially filled with water
>
> *FromImp* percent of the impervious portion of the subcatchment’s non-LID area whose runoff is treated by the LID practice. (E.g., if rain barrels are used to capture roof runoff and roofs represent 60% of the impervious area, then the impervious area treated is 60%). If the LID unit treats only direct rainfall, such as with a green roof, then this value should be 0. If the LID takes up the entire subcatchment then this field is ignored.
>
> *ToPerv* a value of 1 indicates that the surface and drain flow from the LID unit should be routed back onto the pervious area of the subcatchment that contains it. This would be a common choice to make for rain barrels, rooftop disconnection, and possibly green roofs. The default value is 0.
>
> *RptFile* optional name of a file to which detailed time series results for the LID will be written. Enclose the name in double quotes if it contains spaces and include the full path if it is different than the SWMM input file path. Use ‘\*’ if not applicable and an entry for *DrainTo* follows
>
> *DrainTo* optional name of subcatchment or node that receives flow from the unit’s drain line, if different from the outlet of the subcatchment that the LID is placed in.
>
> If *ToPerv* is set to 1 and *DrainTo* set to some other outlet, then only the excess surface flow from the LID unit will be routed back to the subcatchment’s pervious area while the underdrain flow will be sent to *DrainTo*.

**295**

> More than one type of LID process can be deployed within a subcatchment as long as their total area does not exceed that of the subcatchment and the total percent impervious area treated does not exceed 100.
>
> **Examples**: ;34 rain barrels of 12 sq ft each are placed in
>
> ;subcatchment S1. They are initially empty and treat 17% ;of the runoff from the subcatchment’s impervious area. ;The outflow from the barrels is returned to the ;subcatchment’s pervious area.
>
> S1 RB14 34 12 0 0 17 1
>
> ;Subcatchment S2 consists entirely of a single vegetative ;swale 200 ft long by 50 ft wide.
>
> S2 Swale 1 10000 50 0 0 0 “swale.rpt”

**296**

> **Section**: \[**AQUIFERS**\]
>
> **Purpose**: Supplies parameters for each unconfined groundwater aquifer in the study area. Aquifers consist of two zones – a lower saturated zone and an upper unsaturated zone with a moving boundary between the two.

**Formats**: *Name Por WP FC Ks Kslp Tslp ETu ETs Seep Ebot Egw Umc (Epat)*

> **Remarks**: *Name* name assigned to aquifer.
>
> *Por* soil porosity (volumetric fraction).
>
> *WP* soil wilting point (volumetric fraction).
>
> *FC* soil field capacity (volumetric fraction).
>
> *Ks* saturated hydraulic conductivity (in/hr or mm/hr).
>
> *Kslp* slope of the logarithm of hydraulic conductivity versus moisture deficit (i.e.,
>
> porosity minus moisture content) curve (in/hr or mm/hr).
>
> *Tslp* slope of soil tension versus moisture content curve (inches or mm).
>
> *ETu* fraction of total evaporation available for evapotranspiration in the upper unsaturated zone.
>
> *ETs* maximum depth into the lower saturated zone over which evapotranspiration can occur (ft or m).
>
> *Seep* seepage rate from saturated zone to deep groundwater when water table is at ground surface (in/hr or mm/hr).
>
> *Ebot* elevation of the bottom of the aquifer (ft or m).
>
> *Egw* groundwater table elevation at start of simulation (ft or m).
>
> *Umc* unsaturated zone moisture content at start of simulation (volumetric fraction).
>
> *Epat* name of optional monthly time pattern used to adjust the upper zone evaporation fraction for different months of the year.
>
> Local values for *Ebot*, *Egw*, and *Umc* can be assigned to specific subcatchments in the **\[GROUNDWATER\]** section described below.

**297**

> **Section**: \[**GROUNDWATER**\]
>
> **Purpose**: Supplies parameters that determine the rate of groundwater flow between the aquifer underneath a subcatchment and a node of the conveyance system.
>
> **Format**:
>
> *Subcat Aquifer Node Esurf A1 B1 A2 B2 A3 Dsw (Egwt Ebot Egw Umc)*
>
> **Remarks**: *Subcat* subcatchment name.
>
> *Aquifer* name of groundwater aquifer underneath the subcatchment.
>
> *Node* name of node in conveyance system exchanging groundwater with aquifer.
>
> *Esurf* surface elevation of subcatchment (ft or m).
>
> *A1* groundwater flow coefficient (see below).
>
> *B1* groundwater flow exponent (see below).
>
> *A2* surface water flow coefficient (see below).
>
> *B2* surface water flow exponent (see below).
>
> *A3* surface water – groundwater interaction coefficient (see below).
>
> *Dsw* fixed depth of surface water at receiving node (ft or m) (set to zero if surface water depth will vary as computed by flow routing).
>
> *Egwt* threshold groundwater table elevation which must be reached before any flow occurs (ft or m). Leave blank (or enter \*) to use the elevation of the receiving node's invert.
>
> The following optional parameters can be used to override the values supplied for the subcatchment’s aquifer.
>
> *Ebot* elevation of the bottom of the aquifer (ft or m).
>
> *Egw* groundwater table elevation at the start of the simulation (ft or m).
>
> *Umc* unsaturated zone moisture content at start of simulation (volumetric fraction).
>
> The flow coefficients are used in the following equation that determines the lateral groundwater flow rate based on groundwater and surface water elevations:
>
> *QL = A1 (Hgw – Hcb) B1 – A2 (Hsw – Hcb) B2 + A3 Hgw Hsw*
>
> where:
>
> *QL* = lateral groundwater flow (cfs per acre or cms per hectare),
>
> *Hgw* = height of saturated zone above bottom of aquifer (ft or m),
>
> *Hsw* = height of surface water at receiving node above aquifer bottom (ft or m),
>
> *Hcb =* height of channel bottom above aquifer bottom (ft or m).

**298**

> **Section**: \[**GWF**\]
>
> **Purpose**: Defines custom groundwater flow equations for specific subcatchments.
>
> **Format**: *Subcat* **LATERAL/DEEP** *Expr*
>
> **Remarks**: *Subcat* subcatchment name.
>
> *Expr* math formula expressing the rate of groundwater flow (in cfs per acre or cms per hectare for lateral flow or in/hr or mm/hr for deep flow) as a function of the following variables:
>
> **Hgw** (for height of the groundwater table)
>
> **Hsw** (for height of the surface water)
>
> **Hcb** (for height of the channel bottom)
>
> **Hgs** (for height of ground surface)
>
> where all heights are relative to the aquifer bottom and have

units of either feet or meters;

> **Ks** (for saturated hydraulic conductivity in in/hr or mm/hr)
>
> **K** (for unsaturated hydraulic conductivity in in/hr or mm/hr)
>
> **Theta** (for moisture content of unsaturated zone)
>
> **Phi** (for aquifer soil porosity)
>
> **Fi** (for infiltration rate from the ground surface in in/hr or mm/hr)
>
> **Fu** (for percolation rate from the upper unsaturated zone in in/hr or mm/hr)
>
> **A** (for subcatchment area in acres or hectares)
>
> Use **LATERAL** to designate an expression for lateral groundwater flow (to a node of

the conveyance network) and **DEEP** for vertical loss to deep groundwater.

> See the **\[TREATMENT\]** section for a list of built-in math functions that can be used in *Expr*. In particular, the STEP(x) function is 1 when x \> 0 and is 0 otherwise.
>
> **Examples:** ;Two-stage linear reservoir for lateral flow

Subcatch1 LATERAL 0.001\*Hgw + 0.05\*(Hgw–5)\*STEP(Hgw–5)

> ;Constant seepage rate to deep aquifer  
> Subactch1 DEEP 0.002

**299**

> **Section**: \[**SNOWPACKS**\]
>
> **Purpose**: Specifies parameters that govern how snowfall accumulates and melts on the plowable, impervious and pervious surfaces of subcatchments.
>
> **Formats**: *Name* **PLOWABLE** *Cmin Cmax Tbase FWF SD0 FW0 SNN0*
>
> *Name* **IMPERVIOUS** *Cmin Cmax Tbase FWF SD0 FW0 SD100  
> Name* **PERVIOUS** *Cmin Cmax Tbase FWF SD0 FW0 SD100*
>
> *Name* **REMOVAL** *Dplow Fout Fimp Fperv Fimelt (Fsub Scatch)*
>
> **Remarks**: *Name* name assigned to snowpack parameter set .
>
> *Cmin* minimum melt coefficient (in/hr-deg F or mm/hr-deg C).
>
> *Cmax* maximum melt coefficient (in/hr-deg F or mm/hr-deg C).
>
> *Tbase* snow melt base temperature (deg F or deg C).
>
> *FWF* ratio of free water holding capacity to snow depth (fraction).
>
> *SD0* initial snow depth (in or mm water equivalent).
>
> *FW0* initial free water in pack (in or mm).
>
> *SNN0* fraction of impervious area that can be plowed.
>
> *SD100* snow depth above which there is 100% cover (in or mm water equivalent).
>
> *Dplow* depth of snow on plowable areas at which snow removal begins (in or mm).
>
> *Fout* fraction of snow on plowable area transferred out of watershed.
>
> *Fimp* fraction of snow on plowable area transferred to impervious area by plowing.
>
> *Fperv* fraction of snow on plowable area transferred to pervious area by plowing.
>
> *Fimelt* fraction of snow on plowable area converted into immediate melt.
>
> *Fsub* fraction of snow on plowable area transferred to pervious area in another subcatchment.
>
> *Scatch* name of subcatchment receiving the *Fsub* fraction of transferred snow.
>
> Use one set of **PLOWABLE**, **IMPERVIOUS**, and **PERVIOUS** lines for each snow pack parameter set created. Snow pack parameter sets are associated with specific subcatchments in the \[**SUBCATCHMENTS**\] section. Multiple subcatchments can share the same set of snow pack parameters.
>
> The **PLOWABLE** line contains parameters for the impervious area of a subcatchment that is subject to snow removal by plowing but not to areal depletion. This area is the fraction *SNN0* of the total impervious area. The **IMPERVIOUS** line contains parameter

**300**

values for the remaining impervious area and the **PERVIOUS** line does the same for the entire pervious area. Both of the latter two areas are subject to areal depletion.

The **REMOVAL** line describes how snow removed from the plowable area is transferred onto other areas. The various transfer fractions should sum to no more than 1.0. If the line is omitted then no snow removal takes place.

**301**

> **Section**: \[**JUNCTIONS**\]
>
> **Purpose**: Identifies each junction node of the drainage system. Junctions are points in space where channels and pipes connect together. For sewer systems they can be either connection fittings or manholes.
>
> **Format**: *Name Elev (Ymax Y0 Ysur Apond)*
>
> **Remarks**: *Name* name assigned to junction node.
>
> *Elev* elevation of junction invert (ft or m).
>
> *Ymax* depth from ground to invert elevation (ft or m) (default is 0).
>
> *Y0* water depth at start of simulation (ft or m) (default is 0).
>
> *Ysur* maximum additional head above ground elevation that manhole junction can sustain under surcharge conditions (ft or m) (default is 0).
>
> *Apond* area subjected to surface ponding once water depth exceeds *Ymax* (ft<sup>2</sup> or m<sup>2</sup>) (default is 0).
>
> If *Ymax* is 0 then SWMM sets the maximum depth equal to the distance from the invert to the top of the highest connecting link.
>
> If the junction is part of a force main section of the system then set *Ysur* to the maximum pressure that the system can sustain.
>
> Surface ponding can only occur when *Apond* is non-zero and the **ALLOW_PONDING** analysis option is turned on.

**302**

> **Section**: \[**DIVIDERS**\]
>
> **Purpose**: Identifies each flow divider node of the drainage system. Flow dividers are junctions with exactly two outflow conduits where the total outflow is divided between the two in a prescribed manner.
>
> **Formats**: *Name Elev DivLink* **OVERFLOW** *(Ymax Y0 Ysur Apond)*
>
> *Name Elev DivLink* **CUTOFF** *Qmin (Ymax Y0 Ysur Apond)*
>
> *Name Elev DivLink* **TABULAR** *Dcurve (Ymax Y0 Ysur Apond)*
>
> *Name Elev DivLink* **WEIR** *Qmin Ht Cd (Ymax Y0 Ysur Apond)*
>
> **Remarks**: *Name* name assigned to divider node.
>
> *Elev* invert elevation (ft or m).
>
> *DivLink* name of link to which flow is diverted.
>
> *Qmin* flow at which diversion begins for either a **CUTOFF** or **WEIR** divider (flow units).
>
> *Dcurve* name of curve for **TABULAR** divider that relates diverted flow to total flow.
>
> *Ht* height of **WEIR** divider (ft or m).
>
> *Cd* discharge coefficient for **WEIR** divider.
>
> *Ymax* depth from ground to invert elevation (ft or m) (default is 0).
>
> *Y0* water depth at start of simulation (ft or m) (default is 0).
>
> *Ysur* maximum additional head above ground elevation that node can sustain

under surcharge conditions (ft or m) (default is 0).

> *Apond* area subjected to surface ponding once water depth exceeds *Ymax* (ft<sup>2</sup> or m<sup>2</sup>) (default is 0).
>
> If *Ymax* is 0 then SWMM sets the maximum depth equal to the distance from the invert to the top of the highest connecting link.
>
> Surface ponding can only occur when *Apond* is non-zero and the **ALLOW_PONDING** analysis option is turned on.
>
> Divider nodes are only active under the Steady Flow or Kinematic Wave analysis options. For Dynamic Wave flow routing they behave the same as Junction nodes.

**304**

> **Section**: \[**STORAGE**\]
>
> **Purpose**: Identifies each storage node of the drainage system. Storage nodes can have any shape as specified by a surface area versus water depth relation.
>
> **Formats**:
>
> *Name Elev Ymax Y0* **TABULAR** *Acurve (Apond Fevap Psi Ksat IMD)*
>
> *Name Elev Ymax Y0* **FUNCTIONAL** *A1 A2 A0 (Apond Fevap Psi Ksat IMD)*
>
> **Remarks:** *Name* name assigned to storage node.
>
> *Elev* invert elevation (ft or m).
>
> *Ymax* maximum water depth possible (ft or m).
>
> *Y0* water depth at the start of the simulation (ft or m).
>
> *Acurve* name of curve in \[**CURVES**\] section with surface area (ft<sup>2</sup> or m<sup>2</sup>) as a
>
> function of depth (ft or m) for **TABULAR** geometry.
>
> *A1* coefficient of **FUNCTIONAL** relation between surface area and depth.
>
> *A2* exponent of **FUNCTIONAL** relation between surface area and depth.
>
> *A0* constant of **FUNCTIONAL** relation between surface area and depth.
>
> *Apond* this parameter has been deprecated – use 0.
>
> *Fevap* fraction of potential evaporation from surface realized (default is 0).
>
> *Psi* soil suction head (inches or mm).
>
> *Ksat* soil saturated hydraulic conductivity (in/hr or mm/hr).
>
> *IMD* soil initial moisture deficit (fraction).
>
> *A1*, *A2*, and *A0* are used in the following expression that relates surface area (ft<sup>2</sup> or
>
> m<sup>2</sup>) to water depth (ft or m) for a storage unit with **FUNCTIONAL** geometry:
>
> *Area = A0 + A1Depth<sup>A2</sup>*
>
> For **TABULAR** geometry, the surface area curve will be extrapolated outwards to meet the unit's maximum depth if need be.
>
> The parameters *Psi, Ksat*, and *IMD* need only be supplied if seepage loss through the soil at the bottom and sloped sides of the storage unit should be considered. They are the same Green-Ampt infiltration parameters described in the \[**INFILTRATION**\] section. If *Ksat* is zero then no seepage occurs while if *IMD* is zero then seepage occurs at a constant rate equal to *Ksat*. Otherwise seepage rate will vary with storage depth.

**305**

> **Section**: \[**CONDUITS**\]
>
> **Purpose**: Identifies each conduit link of the drainage system. Conduits are pipes or channels that convey water from one node to another.
>
> **Format**: *Name Node1 Node2 Length N Z1 Z2 (Q0 Qmax)*
>
> **Remarks**: *Name* name assigned to conduit link.
>
> *Node1* name of upstream node.
>
> *Node2* name of downstream node.
>
> *Length* conduit length (ft or m).
>
> *N* value of n (i.e., roughness parameter) in Manning’s equation.
>
> *Z1* offset of upstream end of conduit invert above the invert elevation of its upstream node (ft or m).
>
> *Z2* offset of downstream end of conduit invert above the invert elevation of its downstream node (ft or m).
>
> *Q0* flow in conduit at start of simulation (flow units) (default is 0).
>
> *Qmax* maximum flow allowed in the conduit (flow units) (default is no limit).
>
> The figure below illustrates the meaning of the *Z1* and *Z2* parameters.
>
> <img src="./media/image209.png" style="width:2.48681in;height:0.81667in" />

Z1

> Z2
>
> <img src="./media/image210.png" style="width:3.25347in;height:0.43681in" />
>
> These offsets are expressed as a relative distance above the node invert if the **LINK_OFFSETS** option is set to **DEPTH** (the default) or as an absolute elevation if it is set to **ELEVATION**.

**306**

**Section**: \[**PUMPS**\]

**Purpose**: Identifies each pump link of the drainage system.

**Format**: *Name Node1 Node2 Pcurve (Status Startup Shutoff)*

**Remarks**: *Name* name assigned to pump link.

> *Node1* name of node on inlet side of pump.
>
> *Node2* name of node on outlet side of pump.
>
> *Pcurve* name of pump curve listed in the \[**CURVES**\] section of the input.
>
> *Status* status at start of simulation (either **ON** or **OFF**; default is **ON**).
>
> *Startup* depth at inlet node when pump turns on (ft or m) (default is 0).
>
> *Shutoff* depth at inlet node when pump shuts off (ft or m) (default is 0).
>
> See Section 3.2 for a description of the different types of pumps available.

**307**

**Section**: \[**WEIRS**\]

**Purpose**: Identifies each weir link of the drainage system. Weirs are used to model flow diversions and storage node outlets.

**Format**:

*Name Node1 Node2 Type CrestHt Cd (Gated EC Cd2 Sur (Width Surface))*

**Remarks**: *Name* name assigned to weir link.

> *Node1* name of node on inlet side of wier.
>
> *Node2* name of node on outlet side of weir.
>
> *Type* **TRANSVERSE, SIDEFLOW, V-NOTCH**, **TRAPEZOIDAL** or **ROADWAY**.
>
> *CrestHt* amount that the weir’s crest is offset above the invert of inlet node (ft or m, expressed as either a depth or as an elevation, depending on the **LINK_OFFSETS** option setting).
>
> *Cd* weir discharge coefficient (for CFS if using US flow units or CMS if using metric flow units).
>
> *Gated* **YES** if flap gate present to prevent reverse flow, **NO** if not (default is **NO**).
>
> *EC* number of end contractions for **TRANSVERSE** or **TRAPEZOIDAL** weir (default is 0).
>
> *Cd2* discharge coefficient for triangular ends of a **TRAPEZOIDAL** weir (for CFS if using US flow units or CMS if using metric flow units) (default is value of *Cd*).
>
> *Sur* **YES** if the weir can surcharge (have an upstream water level higher than the height of the opening); **NO** if it cannot (default is **YES**).
>
> *Width* width of road lanes and shoulders for **ROADWAY** weir (ft or m). *Surface* type of road surface for **ROADWAY** weir: **PAVED** or **GRAVEL**.
>
> The geometry of a weir’s opening is described in the \[**XSECTIONS**\] section. The following shapes must be used with each type of weir:

<table>
<colgroup>
<col style="width: 40%" />
<col style="width: 59%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Weir Type</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Cross-Section Shape</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Transverse</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sideflow</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>V-Notch</p>
</blockquote></td>
<td><blockquote>
<p>TRIANGULAR</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Trapezoidal</p>
</blockquote></td>
<td><blockquote>
<p>TRAPEZOIDAL</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Roadway</p>
</blockquote></td>
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
</tr>
</tbody>
</table>

> The **ROADWAY** weir is a broad crested rectangular weir used model roadway crossings usually in conjunction with culvert-type conduits. It uses the FHWA HDS-5 method to determine a discharge coefficient as a function of flow depth and roadway width and surface. If no roadway data are provided then the weir behaves as a

**309**

**TRANSVERSE** weir with *Cd* as its discharge coefficient. Note that if roadway data are provided, then values for the other optional weir parameters (**NO** for *Gated,* **0** for *EC,* **0** for *Cd2*, and **NO** for *Sur*) must be entered even though they do not apply to **ROADWAY** weirs.

**310**

**Section**: \[**OUTLETS**\]

**Purpose**: Identifies each outlet flow control device of the drainage system. These devices are used to model outflows from storage units or flow diversions that have a user-defined relation between flow rate and water depth.

**Formats**: *Name Node1 Node2 Offset* **TABULAR/DEPTH** *Qcurve (Gated)*

> *Name Node1 Node2 Offset* **TABULAR/HEAD** *Qcurve (Gated) Name Node1 Node2 Offset* **FUNCTIONAL/DEPTH** *C1 C2 (Gated) Name Node1 Node2 Offset* **FUNCTIONAL/HEAD** *C1 C2 (Gated)*

**Remarks**: *Name* name assigned to outlet link.

> *Node1* name of node on inlet end of link.
>
> *Node2* name of node on outflow end of link.
>
> *Offset* amount that the outlet is offset above the invert of inlet node (ft or m, expressed as either a depth or as an elevation, depending on the **LINK_OFFSETS** option setting).
>
> *Qcurve* name of the rating curve listed in the \[**CURVES**\] section that describes outflow rate (flow units) as a function of:

- water depth above the offset elevation at the inlet node (ft or m) for a **TABULAR/DEPTH** outlet

- head difference (ft or m) between the inlet and outflow nodes for a **TABULAR/HEAD** outlet.

> *C1, C2* coefficient and exponent, respectively, of a power function that relates outflow (Q) to:

- water depth (ft or m) above the offset elevation at the inlet node for a **FUNCTIONAL/DEPTH** outlet

- head difference (ft or m) between the inlet and outflow nodes for a **FUNCTIONAL/HEAD** outlet.

(i.e., ***Q = C1H<sup>C2</sup>*** where ***H*** is either depth or head).

> *Gated* **YES** if flap gate present to prevent reverse flow, **NO** if not (default is **NO**).

**311**

**Section**: \[**XSECTIONS**\]

**Purpose**: Provides cross-section geometric data for conduit and regulator links of the drainage system.

**Formats**: *Link Shape Geom1 Geom2 Geom3 Geom4 (Barrels Culvert)*

> *Link* **CUSTOM** *Geom1 Curve (Barrels)  
> Link* **IRREGULAR** *Tsect*

**Remarks**: *Link* name of the conduit, orifice, or weir.

> *Shape* cross-section shape (see Tables D-1 below or 3-1 for available shapes).
>
> *Geom1* full height of the cross-section (ft or m).
>
> *Geom2-4* auxiliary parameters (width, side slopes, etc.) as listed in Table D-1.
>
> *Barrels* number of barrels (i.e., number of parallel pipes of equal size, slope, and roughness) associated with a conduit (default is 1).
>
> *Culvert* code number from Table A.10 for the conduit’s inlet geometry if it is a culvert subject to possible inlet flow control (leave blank otherwise).
>
> *Curve* name of a Shape Curve in the \[**CURVES**\] section that defines how width varies with depth.
>
> *Tsect* name of an entry in the \[**TRANSECTS**\] section that describes the cross-section geometry of an irregular channel.
>
> The *Culvert* code number is used only for conduits that act as culverts and should be analyzed for inlet control conditions using the FHWA HDS-5 method.
>
> The **CUSTOM** shape is a closed conduit whose width versus height is described by a user-supplied Shape Curve.
>
> An **IRREGULAR** cross-section is used to model an open channel whose geometry is described by a Transect object.

**312**

**Table D-1 Geometric parameters of conduit cross sections**

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 16%" />
<col style="width: 17%" />
<col style="width: 16%" />
<col style="width: 16%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Shape</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Geom1</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Geom2</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Geom3</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Geom4</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>CIRCULAR</p>
</blockquote></td>
<td><blockquote>
<p>Diameter</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>FORCE_MAIN</p>
</blockquote></td>
<td><blockquote>
<p>Diameter</p>
</blockquote></td>
<td><blockquote>
<p>Roughness<strong><sup>1</sup></strong></p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>FILLED_CIRCULAR<strong><sup>2</sup></strong></p>
</blockquote></td>
<td><blockquote>
<p>Diameter</p>
</blockquote></td>
<td><blockquote>
<p>Sediment Depth</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>RECT_CLOSED</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>RECT_OPEN</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>TRAPEZOIDAL</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Base Width</p>
</blockquote></td>
<td><blockquote>
<p>Left Slope<sup>3</sup></p>
</blockquote></td>
<td><blockquote>
<p>Right Slope<sup>3</sup></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>TRIANGULAR</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>HORIZ_ELLIPSE</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Max. Width</p>
</blockquote></td>
<td><blockquote>
<p>Size Code<sup>4</sup></p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>VERT_ELLIPSE</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Max. Width</p>
</blockquote></td>
<td><blockquote>
<p>Size Code<sup>4</sup></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>ARCH</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Max. Width</p>
</blockquote></td>
<td><blockquote>
<p>Size Code<sup>5</sup></p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>PARABOLIC</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>POWER</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td><blockquote>
<p>Exponent</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>RECT_TRIANGULAR</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td><blockquote>
<p>Triangle Height</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>RECT_ROUND</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Top Width</p>
</blockquote></td>
<td><blockquote>
<p>Bottom<br />
Radius</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>MODBASKETHANDLE</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td><blockquote>
<p>Base Width</p>
</blockquote></td>
<td><blockquote>
<p>Top Radius<strong><sup>6</sup></strong></p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EGG</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>HORSESHOE</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>GOTHIC</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>CATENARY</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SEMIELLIPTICAL</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>BASKETHANDLE</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SEMICIRCULAR</p>
</blockquote></td>
<td><blockquote>
<p>Full Height</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

> **<sup>1</sup>**C-factors are used when **H-W** is the **FORCE_MAIN_EQUATION** choice in the \[**OPTIONS**\] section while roughness heights (in inches or mm) are used for **D-W**.
>
> <sup>**2**A</sup> circular conduit partially filled with sediment to a specified depth. <sup>3</sup>Slopes are horizontal run / vertical rise.
>
> <sup>4</sup>Size code of a standard shaped elliptical pipe as listed in Appendix A11. Leave blank (or 0) if the pipe has a custom dimensions.
>
> **<sup>5</sup>**Size code of a standard arch pipe as listed in Appendix A12. Leave blank (or 0) if the pipe has custom dimensions).
>
> **<sup>6</sup>**Set to zero to use a standard modified baskethandle shape whose top radius is half the base width.

**313**

**Section**: \[**LOSSES**\]

**Purpose**: Specifies minor head loss coefficients, flap gates, and seepage rates for conduits.

**Formats**: *Conduit Kentry Kexit Kavg (Flap Seepage)*

**Remarks**: *Conduit* name of conduit.

> *Kentry* entrance minor head loss coefficient.
>
> *Kexit* exit minor head loss coefficient.
>
> *Kavg* average minor head loss coefficient across length of conduit.
>
> *Flap* **YES** if conduit has a flap valve that prevents back flow, **NO** otherwise.
>
> (Default is **NO**).
>
> *Seepage* Rate of seepage loss into surrounding soil (in/hr or mm/hr). (Default is 0.)
>
> Minor losses are only computed for the Dynamic Wave flow routing option (see \[**OPTIONS**\] section). They are computed as Kv<sup>2</sup>/<sub>2</sub>g where K = minor loss coefficient, v = velocity, and g = acceleration of gravity. Entrance losses are based on the velocity at the entrance of the conduit, exit losses on the exit velocity, and average losses on the average velocity.
>
> Only enter data for conduits that actually have minor losses, flap valves, or seepage losses.

**314**

**Section**: \[**TRANSECTS**\]

**Purpose**: Describes the cross-section geometry of natural channels or conduits with irregular shapes following the HEC-2 data format.

**Formats**: **NC** *Nleft Nright Nchanl*

> **X1** *Name Nsta Xleft Xright* **0 0 0** *Lfactor Wfactor Eoffset*
>
> **GR** *Elev Station ... Elev Station*

**Remarks:** *Nleft* Manning’s n of right overbank portion of channel (use 0 if no change from previous **NC** line).

> *Nright* Manning’s n of right overbank portion of channel (use 0 if no change from previous NC line.
>
> *Nchanl* Manning’s n of main channel portion of channel (use 0 if no change from previous NC line.
>
> *Name* name assigned to transect.
>
> *Nsta* number of stations across cross-section at which elevation data is supplied.
>
> *Xleft* station position which ends the left overbank portion of the channel (ft or m).
>
> *Xright* station position which begins the right overbank portion of the channel (ft or m).
>
> *Lfactor* meander modifier that represents the ratio of the length of a meandering main channel to the length of the overbank area that surrounds it (use 0 if not applicable).
>
> *Wfactor* factor by which distances between stations should be multiplied to increase (or decrease) the width of the channel (enter 0 if not applicable).
>
> *Eoffset* amount added (or subtracted) from the elevation of each station (ft or m).
>
> *Elev* elevation of the channel bottom at a cross-section station relative to some fixed reference (ft or m).
>
> *Station* distance of a cross-section station from some fixed reference (ft or m).
>
> Transect geometry is described as shown below, assuming that one is looking in a downstream direction:

**315**

> <img src="./media/image213.png" style="width:3.14722in;height:1.22986in" />
>
> <img src="./media/image214.png" style="width:2.11319in;height:0.17708in" />

The first line in this section must always be a **NC** line. After that, the **NC** line is only needed when a transect has different Manning’s n values than the previous one.

The Manning’s n values on the **NC** line will supersede any roughness value entered for the conduit which uses the irregular cross-section.

There should be one **X1** line for each transect. Any number of **GR** lines may follow, and each **GR** line can have any number of Elevation-Station data pairs. (In HEC-2 the **GR** line is limited to 5 stations.)

The station that defines the left overbank boundary on the **X1** line must correspond to one of the station entries on the **GR** lines that follow. The same holds true for the right overbank boundary. If there is no match, a warning will be issued and the program will assume that no overbank area exists.

The meander modifier is applied to all conduits that use this particular transect for their cross section. It assumes that the length supplied for these conduits is that of the longer main channel. SWMM will use the shorter overbank length in its calculations while increasing the main channel roughness to account for its longer length.

**316**

**Section**: \[**CONTROLS**\]

**Purpose**: Determines how pumps and regulators will be adjusted based on simulation time or conditions at specific nodes and links.

**Formats**: Each control rule is a series of statements of the form:  
**RULE** *ruleID*

> **IF** *condition_1  
> ***AND** *condition_2*
>
> **OR** *condition_3  
> ***AND** *condition_4  
> Etc*.
>
> **THEN** *action_1  
> ***AND** *action_2  
> Etc*.
>
> **ELSE** *action_3  
> ***AND** *action_4  
> Etc*.
>
> **PRIORITY** *value*

**Remarks**: *RuleID* an ID label assigned to the rule.

> *condition_n* a condition clause.
>
> *action_n* an action clause.
>
> *value* a priority value (e.g., a number from 1 to 5).
>
> A condition clause of a Control Rule has the following format:  
> *Object Name Attribute Relation Value*
>
> where *Object* is a category of object, *Name* is the object’s assigned ID name, *Attribute* is the name of an attribute or property of the object, *Relation* is a relational operator (=, \<\>, \<, \<=, \>, \>=), and *Value* is an attribute value.
>
> Some examples of condition clauses are:  
> NODE N23 DEPTH \> 10
>
> PUMP P45 STATUS = OFF  
> SIMULATION TIME = 12:45:00
>
> The objects and attributes that can appear in a condition clause are as follows:

**317**

<table>
<colgroup>
<col style="width: 21%" />
<col style="width: 36%" />
<col style="width: 41%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Object</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Attributes</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Value</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NODE</p>
</blockquote></td>
<td><blockquote>
<p>DEPTH<br />
HEAD<br />
VOLUME<br />
INFLOW</p>
</blockquote></td>
<td><blockquote>
<p>numerical value<br />
numerical value<br />
numerical value<br />
numerical value</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>LINK</p>
</blockquote></td>
<td><blockquote>
<p>FLOW</p>
<p>DEPTH<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>numerical value<br />
numerical value<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>CONDUIT</p>
</blockquote></td>
<td><blockquote>
<p>STATUS<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>OPEN or CLOSED<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>PUMP</p>
</blockquote></td>
<td><blockquote>
<p>STATUS<br />
SETTING<br />
FLOW<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>ON or OFF</p>
<p>pump curve multiplier<br />
numerical value<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>ORIFICE</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>fraction open</p>
<p>decimal hours or hr:min</p>
<p>decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>WEIR</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>fraction open</p>
<p>decimal hours or hr:min</p>
<p>decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>OUTLET</p>
</blockquote></td>
<td><blockquote>
<p>SETTING<br />
TIMEOPEN<br />
TIMECLOSED</p>
</blockquote></td>
<td><blockquote>
<p>rating curve multiplier<br />
decimal hours or hr:min<br />
decimal hours or hr:min</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SIMULATION</p>
</blockquote></td>
<td><blockquote>
<p>TIME</p>
</blockquote></td>
<td><blockquote>
<p>elapsed time in decimal hours or hr:min:sec</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SIMULATION</p>
</blockquote></td>
<td><blockquote>
<p>DATE<br />
MONTH</p>
<p>DAY</p>
<p>CLOCKTIME</p>
</blockquote></td>
<td><blockquote>
<p>month/day/year</p>
<p>month of year (January = 1) day of week (Sunday = 1) time of day in hr:min:sec</p>
</blockquote></td>
</tr>
</tbody>
</table>

> **TIMEOPEN** is the duration a link has been in an **OPEN** or **ON** state or have its **SETTING** be greater than zero; **TIMECLOSED** is the duration it has remained in a **CLOSED** or **OFF** state or have its **SETTING** be zero.
>
> An action clause of a Control Rule can have one of the following formats:

**318**

> **PUMP** id **STATUS** = **ON/OFF**
>
> **PUMP/ORIFICE/WEIR/OUTLET** id **SETTING** = value
>
> where the meaning of **SETTING** depends on the object being controlled:

- for Pumps it is a multiplier applied to the flow computed from the pump curve,

- for Orifices it is the fractional amount that the orifice is fully open,

- for Weirs it is the fractional amount of the original freeboard that exists (i.e., weir control is accomplished by moving the crest height up or down),

- for Outlets it is a multiplier applied to the flow computed from the outlet's rating curve.

> Modulated controls are control rules that provide for a continuous degree of control applied to a pump or flow regulator as determined by the value of some controller variable, such as water depth at a node, or by time. The functional relation between the control setting and the controller variable is specified by using a control curve, a time series, or a PID controller. To model these types of controls, the *value* entry on the right-hand side of the action clause is replaced by the keyword **CURVE, TIMESERIES**, or **PID** and followed by the id name of the respective control curve or time series or by the gain, integral time (in minutes), and derivative time (in minutes) of a PID controller. For direct action control the gain is a positive number while for reverse action control it must be a negative number. By convention, the controller variable used in a control curve or PID control will always be the object and attribute named in the last condition clause of the rule. The value specified for this clause will be the setpoint used in a PID controller.
>
> Some examples of action clauses are:
>
> PUMP P67 STATUS = OFF
>
> ORIFICE O212 SETTING = 0.5
>
> WEIR W25 SETTING = CURVE C25
>
> ORIFICE ORI_23 SETTING = PID 0.1 0.1 0.0
>
> Only the **RULE, IF** and **THEN** portions of a rule are required; the other portions are optional. When mixing **AND** and **OR** clauses, the **OR** operator has higher precedence than **AND**, i.e.,
>
> IF A or B and C
>
> is equivalent to
>
> IF (A or B) and C.
>
> If the interpretation was meant to be
>
> IF A or (B and C)
>
> then this can be expressed using two rules as in

**319**

> IF A THEN ...
>
> IF B and C THEN ...
>
> The **PRIORITY** value is used to determine which rule applies when two or more rules require that conflicting actions be taken on a link. A conflicting rule with a higher priority value has precedence over one with a lower value (e.g., **PRIORITY 5** outranks **PRIORITY 1**). A rule without a priority value always has a lower priority than one with a value. For two rules with the same priority value, the rule that appears first is given the higher priority.

**Examples:** ; Simple time-based pump control

> RULE R1
>
> IF SIMULATION TIME \> 8

|           |     |        |     |     |
|-----------|-----|--------|-----|-----|
| THEN PUMP | 12  | STATUS | =   | ON  |
| ELSE PUMP | 12  | STATUS | =   | OFF |

> ; Multi-condition orifice gate control

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 12%" />
<col style="width: 2%" />
<col style="width: 57%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>RULE R2A</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>IF NODE</p>
</blockquote></td>
<td>23 DEPTH</td>
<td>&gt;</td>
<td>12</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>AND LINK</p>
</blockquote></td>
<td>165 FLOW</td>
<td>&gt;</td>
<td>100</td>
</tr>
</tbody>
</table>

> THEN ORIFICE R55 SETTING = 0.5

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 12%" />
<col style="width: 2%" />
<col style="width: 57%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>RULE R2B</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>IF NODE</p>
</blockquote></td>
<td>23 DEPTH</td>
<td>&gt;</td>
<td>12</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>AND LINK</p>
</blockquote></td>
<td>165 FLOW</td>
<td>&gt;</td>
<td>200</td>
</tr>
</tbody>
</table>

> THEN ORIFICE R55 SETTING = 1.0

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 4%" />
<col style="width: 11%" />
<col style="width: 56%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>RULE R2C</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>IF NODE</p>
</blockquote></td>
<td>23</td>
<td>DEPTH &lt;=</td>
<td>12</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>OR LINK</p>
</blockquote></td>
<td>165</td>
<td>FLOW &lt;=</td>
<td>100</td>
</tr>
</tbody>
</table>

> THEN ORIFICE R55 SETTING = 0
>
> ; PID controller that attempts to keep Node 23’s depth at 12:
>
> RULE PID_1
>
> IF NODE 23 DEPTH \<\> 12
>
> THEN ORIFICE R55 SETTING = PID 0.5 0.1 0.0
>
> ; Pump station operation with a main (N1A) and lag (N1B) pump
>
> RULE R3A
>
> IF NODE N1 DEPTH \> 5
>
> THEN PUMP N1A STATUS = ON
>
> RULE R3B
>
> IF PUMP N1A TIMEOPEN \> 2:30  
> THEN PUMP N1B STATUS = ON  
> ELSE PUMP N1B STATUS = OFF

**320**

RULE R3C

IF NODE N1 DEPTH \<= 0.5 THEN PUMP N1A STATUS = OFF AND PUMP N1B STATUS = OFF

**321**

**Section**: \[**POLLUTANTS**\]

**Purpose**: Identifies the pollutants being analyzed.

**Format**:

> *Name Units Crain Cgw Cii Kd (Sflag CoPoll CoFract Cdwf Cinit)*

**Remarks**: *Name* name assigned to pollutant.

> *Units* concentration units (**MG/L** for milligrams per liter, **UG/L** for micrograms per liter, or **\#/L** for direct count per liter).
>
> *Crain* concentration of pollutant in rainfall (concentration units).
>
> *Cgw* concentration of pollutant in groundwater (concentration units).
>
> *Cii* concentration of pollutant in inflow/infiltration (concentration units).
>
> *Kdecay* first-order decay coefficient (1/days).
>
> *Sflag* **YES** if pollutant buildup occurs only when there is snow cover, **NO** otherwise (default is **NO**).
>
> *CoPoll* name of co-pollutant (default is no co-pollutant designated by a \*). *CoFract* fraction of co-pollutant concentration (default is 0).
>
> *Cdwf* pollutant concentration in dry weather flow (default is 0).
>
> *Cinit* pollutant concentration throughout the conveyance system at the start of the simulation (default is 0).
>
> **FLOW** is a reserved word and cannot be used to name a pollutant.
>
> Parameters *Sflag* through *Cinit* can be omitted if they assume their default values. If there is no co-pollutant but non-default values for *Cdwf* or *Cinit*, then enter an asterisk (\*) for the co-pollutant name.
>
> When pollutant X has a co-pollutant Y, it means that fraction CoFract of pollutant Y’s runoff concentration is added to pollutant X’s runoff concentration when wash off from a subcatchment is computed.
>
> The dry weather flow concentration can be overridden for any specific node of the conveyance system by editing the node’s Inflows property.

**322**

**Section**: \[**LANDUSES**\]

**Purpose**: Identifies the various categories of land uses within the drainage area. Each subcatchment area can be assigned a different mix of land uses. Each land use can be subjected to a different street sweeping schedule.

**Format**: *Name (SweepInterval Availability LastSweep)*

**Remarks**: *Name* land use name.

> *SweepInterval* days between street sweeping.
>
> *Availability* fraction of pollutant buildup available for removal by street sweeping.
>
> *LastSweep* days since last sweeping at start of the simulation.

**323**

**Section**: \[**COVERAGES**\]

**Purpose**: Specifies the percentage of a subcatchment’s area that is covered by each category of land use.

**Format**: *Subcat Landuse Percent Landuse Percent . . .*

**Remarks:** *Subcat* subcatchment name.

> *Landuse* land use name.
>
> *Percent* percent of subcatchment area.
>
> More than one pair of land use - percentage values can be entered per line. If more than one line is needed, then the subcatchment name must still be entered first on the succeeding lines.
>
> If a land use does not pertain to a subcatchment, then it does not have to be entered.
>
> If no land uses are associated with a subcatchment then no contaminants will appear in the runoff from the subcatchment.

**324**

**Section**: \[**LOADINGS**\]

**Purpose**: Specifies the pollutant buildup that exists on each subcatchment at the start of a simulation.

**Format**: *Subcat Pollut InitBuildup Pollut InitBuildup ...*

**Remarks**: *Subcat* name of a subcatchment.

> *Pollut* name of a pollutant.
>
> *InitBuildup* initial buildup of pollutant (lbs/acre or kg/hectare).
>
> More than one pair of pollutant - buildup values can be entered per line. If more than one line is needed, then the subcatchment name must still be entered first on the succeeding lines.
>
> If an initial buildup is not specified for a pollutant, then its initial buildup is computed by applying the **DRY_DAYS** option (specified in the \[**OPTIONS**\] section) to the pollutant’s buildup function for each land use in the subcatchment.

**325**

**Section**: \[**BUILDUP**\]

**Purpose**: Specifies the rate at which pollutants build up over different land uses between rain events.

**Format**: *Landuse Pollutant FuncType C1 C2 C3 PerUnit*

**Remarks**: *Landuse* land use name.

> *Pollutant* pollutant name.
>
> *FuncType* buildup function type: ( **POW / EXP / SAT / EXT** ).
>
> *C1,C2,C3* buildup function parameters (see Table D-2).
>
> *PerUnit* **AREA** if buildup is per unit area, **CURBLENGTH** if per length of curb.
>
> Buildup is measured in pounds (kilograms) per unit of area (or curb length) for pollutants whose concentration units are either mg/L or ug/L. If the concentration units are counts/L, then the buildup is expressed as counts per unit of area (or curb length).

**Table D-2 Pollutant buildup functions (t is antecedent dry days)**

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 30%" />
<col style="width: 45%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Name</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Function</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Equation</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>POW</p>
</blockquote></td>
<td><blockquote>
<p>Power</p>
</blockquote></td>
<td><blockquote>
<p>Min (C1, C2*t<sup>C3</sup>)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EXP</p>
</blockquote></td>
<td><blockquote>
<p>Exponential</p>
</blockquote></td>
<td><blockquote>
<p>C1*(1 – exp(-C2*t))</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SAT</p>
</blockquote></td>
<td><blockquote>
<p>Saturation</p>
</blockquote></td>
<td><blockquote>
<p>C1*t / (C3 + t)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EXT</p>
</blockquote></td>
<td><blockquote>
<p>External</p>
</blockquote></td>
<td><blockquote>
<p>See below</p>
</blockquote></td>
</tr>
</tbody>
</table>

> For the EXT buildup function, C1 is the maximum possible buildup (mass per area or curb length), C2 is a scaling factor, and C3 is the name of a Time Series that contains buildup rates (as mass per area or curb length per day) as a function of time.

**326**

**Section**: \[**WASHOFF**\]

**Purpose**: Specifies the rate at which pollutants are washed off from different land uses during rain events.

**Format**: *Landuse Pollutant FuncType C1 C2 SweepRmvl BmpRmvl*

**Remarks**: *Landuse* land use name.

> *Pollutant* pollutant name.
>
> *FuncType* washoff function type: **EXP / RC / EMC**.
>
> *C1, C2* washoff function coefficients(see Table D-3).
>
> *SweepRmvl* street sweeping removal efficiency (percent) .
>
> *BmpRmvl* BMP removal efficiency (percent).

**Table D-3 Pollutant wash off functions**

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 24%" />
<col style="width: 39%" />
<col style="width: 19%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p><strong>Name</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Function</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Equation</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Units</strong></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXP</p>
</blockquote></td>
<td><blockquote>
<p>Exponential</p>
</blockquote></td>
<td><blockquote>
<p>C1 (runoff)<sup>C2</sup> (buildup)</p>
</blockquote></td>
<td><blockquote>
<p>Mass/hour</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>RC</p>
</blockquote></td>
<td><blockquote>
<p>Rating Curve</p>
</blockquote></td>
<td><blockquote>
<p>C1 (runoff)<sup>C2</sup></p>
</blockquote></td>
<td><blockquote>
<p>Mass/sec</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EMC</p>
</blockquote></td>
<td><blockquote>
<p>Event Mean Concentration</p>
</blockquote></td>
<td><blockquote>
<p>C1</p>
</blockquote></td>
<td><blockquote>
<p>Mass/Liter</p>
</blockquote></td>
</tr>
</tbody>
</table>

> Each washoff function expresses its results in different units.
>
> For the **Exponential** function the **runoff** variable is expressed in catchment depth per unit of time (inches per hour or millimeters per hour), while for the **Rating Curve** function it is in whatever flow units were specified in the \[**OPTIONS**\] section of the input file (e.g., CFS, CMS, etc.).
>
> The buildup parameter in the **Exponential** function is the current total buildup over the subcatchment’s land use area in mass units. The units of ***C1*** in the **Exponential** function are (in/hr) <sup>-C2</sup> per hour (or (mm/hr) <sup>-C2</sup> per hour). For the **Rating Curve** function, the units of ***C1*** depend on the flow units employed. For the **EMC** (event mean concentration) function, ***C1*** is always in concentration units.

**327**

**Section**: \[**TREATMENT**\]

**Purpose**: Specifies the degree of treatment received by pollutants at specific nodes of the drainage system.

**Format**: *Node Pollut Result* **=** *Func*

**Remarks**: *Node* Name of node where treatment occurs.

> *Pollut* Name of pollutant receiving treatment.
>
> *Result* Result computed by treatment function. Choices are:

**C** (function computes effluent concentration)

> **R** (function computes fractional removal).
>
> *Func* mathematical function expressing treatment result in terms of pollutant concentrations, pollutant removals, and other standard variables (see below).
>
> Treatment functions can be any well-formed mathematical expression involving:

- inlet pollutant concentrations (use the pollutant name to represent a concentration)

- removal of other pollutants (use R\_ pre-pended to the pollutant name to represent removal)

- process variables which include:

> **FLOW** for flow rate into node (user’s flow units)
>
> **DEPTH** for water depth above node invert (ft or m)
>
> **AREA** for node surface area (ft2 or m2)
>
> **DT** for routing time step (seconds)
>
> **HRT** for hydraulic residence time (hours)

Any of the following math functions can be used in a treatment function:

- abs(x) for absolute value of x

- sgn(x) which is +1 for x \>= 0 or -1 otherwise

- step(x) which is 0 for x \<= 0 and 1 otherwise

- sqrt(x) for the square root of x

- log(x) for logarithm base e of x

- log10(x) for logarithm base 10 of x

- exp(x) for e raised to the x power

- the standard trig functions (sin, cos, tan, and cot)

- the inverse trig functions (asin, acos, atan, and acot)

- the hyperbolic trig functions (sinh, cosh, tanh, and coth)

> along with the standard operators +, -, \*, /, ^ (for exponentiation ) and any level of
>
> nested parentheses.

**328**

**Examples**: ; 1-st order decay of BOD

> Node23 BOD C = BOD \* exp(-0.05\*HRT)

; lead removal is 20% of TSS removal  
Node23 Lead R = 0.2 \* R_TSS

**329**

**Section**: \[**INFLOWS**\]

**Purpose**: Specifies external hydrographs and pollutographs that enter the drainage system at specific nodes.

**Formats**: *Node* **FLOW** *Tseries (***FLOW** *(1.0 Sfactor Base Pat))*

> *Node Pollut Tseries (Type (Mfactor Sfactor Base Pat))*

**Remarks**: *Node* name of node where external inflow enters.

> *Pollut* name of pollutant.
>
> *Tseries* name of time series in \[**TIMESERIES**\] section describing how external flow or pollutant loading varies with time.
>
> *Type* **CONCEN** if pollutant inflow is described as a concentration, **MASS** if it is described as a mass flow rate (default is **CONCEN**).
>
> *Mfactor* the factor that converts the inflow’s mass flow rate units into the project’s mass units per second, where the project’s mass units are those specified for the pollutant in the \[**POLLUTANTS**\] section (default is 1.0 - see example below).
>
> *Sfactor* scaling factor that multiplies the recorded time series values (default is 1.0).
>
> *Base* constant baseline value added to the time series value (default is 0.0).
>
> *Pat* name of optional time pattern in \[**PATTERNS**\] section used to adjust the baseline value on a periodic basis.
>
> External inflows are represented by both a constant and time varying component as follows:
>
> *Inflow = (Baseline value)\*(Pattern factor) + (Scaling factor)\*(Time series value)*
>
> If an external inflow of a pollutant concentration is specified for a node, then there must also be an external inflow of **FLOW** provided for the same node, unless the node is an Outfall. In that case a pollutant can enter the system during periods when the outfall is submerged and reverse flow occurs.

**Examples**: NODE2 FLOW N2FLOW

> NODE33 TSS N33TSS CONCEN
>
> ;Mass inflow of BOD in time series N65BOD given in lbs/hr
>
> ;(126 converts lbs/hr to mg/sec)
>
> NODE65 BOD N65BOD MASS 126
>
> ;Flow inflow with baseline and scaling factor
>
> N176 FLOW FLOW_176 FLOW 1.0 0.5 12.7 FlowPat

**330**

**Section**: \[**DWF**\]

**Purpose**: Specifies dry weather flow and its quality entering the drainage system at specific nodes.

**Format**: *Node Type Base (Pat1 Pat2 Pat3 Pat4)*

**Remarks**: *Node* name of node where dry weather flow enters.

> *Type* keyword **FLOW** for flow or pollutant name for quality constituent.
>
> *Base* average baseline value for corresponding constituent (flow or concentration units).

1.  
2.  

> etc. names of up to four time patterns appearing in the \[**PATTERNS**\] section.
>
> The actual dry weather input will equal the product of the baseline value and any adjustment factors supplied by the specified patterns. (If not supplied, an adjustment factor defaults to 1.0.)
>
> The patterns can be any combination of monthly, daily, hourly and weekend hourly patterns, listed in any order. See the **\[PATTERNS\]** section for more details.

**331**

**Section**: \[**RDII**\]

**Purpose**: Specifies the parameters that describe rainfall-dependent infiltration/inflow (RDII) entering the drainage system at specific nodes.

**Format**: *Node UHgroup SewerArea*

**Remarks**: *Node* name of a node.

> *UHgroup* name of an RDII unit hydrograph group specified in the \[**HYDROGRAPHS**\] section.
>
> *SewerArea* area of the sewershed which contributes RDII to the node (acres or hectares).

**332**

**Section**: \[**HYDROGRAPHS**\]

**Purpose**: Specifies the shapes of the triangular unit hydrographs that determine the amount of rainfall-dependent infiltration/inflow (RDII) entering the drainage system.

**Formats**: *Name Raingage*

> *Name Month* **SHORT/MEDIUM/LONG** *R T K (Dmax Drec D0)*

**Remarks**: *Name* name assigned to a unit hydrograph group.

> *Raingage* name of the rain gage used by the unit hydrograph group.
>
> *Month* month of the year (e.g., **JAN**, **FEB**, etc. or **ALL** for all months).
>
> *R* response ratio for the unit hydrograph.
>
> *T* time to peak (hours) for the unit hydrograph.
>
> *K* recession limb ratio for the unit hydrograph.
>
> *Dmax* maximum initial abstraction depth available (in rain depth units).
>
> *Drec* initial abstraction recovery rate (in rain depth units per day)
>
> *D0* initial abstraction depth already filled at the start of the simulation (in rain depth units).
>
> For each group of unit hydrographs, use one line to specify its rain gage followed by as many lines as are needed to define each unit hydrograph used by the group throughout the year. Three separate unit hydrographs, that represent the short-term, medium-term, and long-term RDII responses, can be defined for each month (or all months taken together). Months not listed are assumed to have no RDII.
>
> The response ratio (R) is the fraction of a unit of rainfall depth that becomes RDII. The sum of the ratios for a set of three hydrographs does not have to equal 1.0.
>
> The recession limb ratio (K) is the ratio of the duration of the hydrograph’s recession limb to the time to peak (T) making the hydrograph time base equal to T\*(1+K) hours. The area under each unit hydrograph is 1 inch (or mm).
>
> The optional initial abstraction parameters determine how much rainfall is lost at the start of a storm to interception and depression storage. If not supplied then the default is no initial abstraction.

**Examples**: ; All three unit hydrographs in this group have the same shapes except those in July, ; which have only a short- and medium-term response and a different shape.

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 16%" />
<col style="width: 8%" />
<col style="width: 7%" />
<col style="width: 47%" />
</colgroup>
<tbody>
<tr class="odd">
<td>UH101</td>
<td><blockquote>
<p>RG1</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>UH101</td>
<td><blockquote>
<p>ALL SHORT</p>
</blockquote></td>
<td>0.033</td>
<td>1.0</td>
<td>2.0</td>
</tr>
<tr class="odd">
<td>UH101</td>
<td><blockquote>
<p>ALL MEDIUM</p>
</blockquote></td>
<td>0.300</td>
<td>3.0</td>
<td>2.0</td>
</tr>
<tr class="even">
<td>UH101</td>
<td><blockquote>
<p>ALL LONG</p>
</blockquote></td>
<td>0.033</td>
<td>10.0</td>
<td>2.0</td>
</tr>
<tr class="odd">
<td>UH101</td>
<td><blockquote>
<p>JUL SHORT</p>
</blockquote></td>
<td>0.033</td>
<td>0.5</td>
<td>2.0</td>
</tr>
<tr class="even">
<td>UH101</td>
<td><blockquote>
<p>JUL MEDIUM</p>
</blockquote></td>
<td>0.011</td>
<td>2.0</td>
<td>2.0</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td><strong>333</strong></td>
<td></td>
</tr>
</tbody>
</table>

> **Section**: \[**CURVES**\]
>
> **Purpose**: Describes a relationship between two variables in tabular format.
>
> **Format**: *Name Type X-value Y-value ...*
>
> **Remarks**: *Name* name assigned to table
>
> *Type* **STORAGE / SHAPE / DIVERSION / TIDAL / PUMP1 / PUMP2 /**
>
> **PUMP3 / PUMP4 / RATING / CONTROL**
>
> *X-value* an x (independent variable) value
>
> *Y-value* the y (dependent variable) value corresponding to x
>
> Multiple pairs of x-y values can appear on a line. If more than one line is needed, repeat the curve's name (but not the type) on subsequent lines. The x-values must be entered in increasing order.
>
> Choices for curve type have the following meanings (flows are expressed in the user’s choice of flow units set in the \[**OPTIONS**\] section):
>
> **STORAGE** surface area in ft<sup>2</sup> (m<sup>2</sup>) v. depth in ft (m) for a storage unit node
>
> **SHAPE** width v. depth for a custom closed cross-section, both normalized with respect to full depth
>
> **DIVERSION** diverted outflow v. total inflow for a flow divider node
>
> **TIDAL** water surface elevation in ft (m) v. hour of the day for an outfall node
>
> **PUMP1** pump outflow v. increment of inlet node volume in ft<sup>3</sup> (m<sup>3</sup>)
>
> **PUMP2** pump outflow v. increment of inlet node depth in ft (m)
>
> **PUMP3** pump outflow v. head difference between outlet and inlet nodes in ft (m)
>
> **PUMP4** pump outflow v. continuous depth in ft (m)
>
> **RATING** outlet flow v. head in ft (m)
>
> **CONTROL** control setting v. controller variable
>
> See Section 3.2 for illustrations of the different types of pump curves.
>
> **Examples:** ;Storage curve (x = depth, y = surface area)
>
> AC1 STORAGE 0 1000 2 2000 4 3500 6 4200 8 5000
>
> ;Type1 pump curve (x = inlet wet well volume, y = flow )
>
> PC1 PUMP1
>
> PC1 100 5 300 10 500 20

**334**

**Section**: \[**TIMESERIES**\]

**Purpose**: Describes how a quantity varies over time.

**Formats**: *Name ( Date ) Hour Value ...*

> *Name Time Value ...*
>
> *Name* **FILE** *Fname*

**Remarks**: *Name* name assigned to time series.

> *Date* date in Month/Day/Year format (e.g., June 15, 2001 would be 6/15/2001).
>
> *Hour* 24-hour military time (e.g., 8:40 pm would be 20:40) relative to the last date specified (or to midnight of the starting date of the simulation if no previous date was specified).
>
> *Time* hours since the start of the simulation, expressed as a decimal number or as hours:minutes.
>
> *Value* value corresponding to given date and time.
>
> *Fname* name of a file in which the time series data are stored
>
> There are two options for supplying the data for a time series:

1.  directly within this input file section as described by the first two formats

2.  through an external data file named with the third format.

> When direct data entry is used, multiple date-time-value or time-value entries can appear on a line. If more than one line is needed, the table's name must be repeated as the first entry on subsequent lines.
>
> When an external file is used, each line in the file must use the same formats listed above, except that only one date-time-value (or time-value) entry is allowed per line. Any line that begins with a semicolon is considered a comment line and is ignored. Blank lines are not allowed.
>
> Note that there are two methods for describing the occurrence time of time series data:

- as calendar date/time of day (which requires that at least one date, at the start of the series, be entered)

- as elapsed hours since the start of the simulation.

> For the first method, dates need only be entered at points in time when a new day occurs.

**Examples**: ;Rainfall time series with dates specified

|     |           |      |     |      |     |       |      |         |
|-----|-----------|------|-----|------|-----|-------|------|---------|
| TS1 | 6-15-2001 | 7:00 | 0.1 | 8:00 | 0.2 | 9:00  | 0.05 | 10:00 0 |
| TS1 | 6-21-2001 | 4:00 | 0.2 | 5:00 | 0   | 14:00 | 0.1  | 15:00 0 |

**335**

;Inflow hydrograph - time relative to start of simulation

HY1 0 0 1.25 100 2:30 150 3.0 120 4.5 0

HY1 32:10 0 34.0 57 35.33 85 48.67 24 50 0

**336**

**Section**: \[**PATTERNS**\]

**Purpose**: Specifies time pattern of dry weather flow or quality in the form of adjustment factors applied as multipliers to baseline values.

**Format**: *Name* **MONTHLY** *Factor1 Factor2 ... Factor12*

> *Name* **DAILY** *Factor1 Factor2 ... Factor7*
>
> *Name* **HOURLY** *Factor1 Factor2 ... Factor24*
>
> *Name* **WEEKEND** *Factor1 Factor2 ... Factor24*

**Remarks**: *Name* name used to identify the pattern.

> *Factor1*,  
> *Factor2*,
>
> etc. multiplier values.
>
> The **MONTHLY** format is used to set monthly pattern factors for dry weather flow constituents.
>
> The **DAILY** format is used to set dry weather pattern factors for each day of the week, where Sunday is day 1.
>
> The **HOURLY** format is used to set dry weather factors for each hour of the day starting from midnight. If these factors are different for weekend days than for weekday days then the **WEEKEND** format can be used to specify hourly adjustment factors just for weekends.
>
> More than one line can be used to enter a pattern’s factors by repeating the pattern’s name (but not the pattern type) at the beginning of each additional line.
>
> The pattern factors are applied as multipliers to any baseline dry weather flows or quality concentrations supplied in the \[**DWF**\] section.

**Examples**: ; Day of week adjustment factors

> D1 DAILY 0.5 1.0 1.0 1.0 1.0 1.0 0.5
>
> D2 DAILY 0.8 0.9 1.0 1.1 1.0 0.9 0.8
>
> ; Hourly adjustment factors
>
> H1 HOURLY 0.5 0.6 0.7 0.8 0.8 0.9
>
> H1 1.1 1.2 1.3 1.5 1.1 1.0
>
> H1 0.9 0.8 0.7 0.6 0.5 0.5
>
> H1 0.5 0.5 0.5 0.5 0.5 0.5

**337**

**D3. Map Data Section**

SWMM’s graphical user interface (GUI) can display a schematic map of the drainage area being analyzed. This map displays subcatchments as polygons, nodes as circles, links as polylines, and rain gages as bitmap symbols. In addition it can display text labels and a backdrop image, such as a street map. The GUI has tools for drawing, editing, moving, and displaying these map elements. The map’s coordinate data are stored in the format described below. Normally these data are simply appended to the SWMM input file by the GUI so users do not have to concern themselves with it. However it is sometimes more convenient to import map data from some other source, such as a CAD or GIS file, rather than drawing a map from scratch using the GUI. In this case the data can be added to the SWMM project file using any text editor or spreadsheet program. SWMM does not provide any automated facility for converting coordinate data from other file formats into the SWMM map data format.

SWMM's map data are organized into the following seven sections:

> \[MAP\] X,Y coordinates of the map’s bounding rectangle
>
> \[POLYGONS\] X,Y coordinates for each vertex of subcatchment polygons
>
> \[COORDINATES\] X,Y coordinates for nodes
>
> \[VERTICES\] X,Y coordinates for each interior vertex of polyline links
>
> \[LABELS\] X,Y coordinates and text of labels
>
> \[SYMBOLS\] X,Y coordinates for rain gages
>
> \[BACKDROP\] X,Y coordinates of the bounding rectangle and file name of the backdrop image.

Figure D-2 displays a sample map and Figure D-3 the data that describes it. Note that only one link, 3, has interior vertices which give it a curved shape. Also observe that this map’s coordinate system has no units, so that the positions of its objects may not necessarily coincide to their real-world locations.

> <img src="./media/image215.png" style="width:2.95625in;height:2.45347in" />

**Figure D-2 Example study area map**

**338**

> \[MAP\]
>
> DIMENSIONS 0.00 0.00 10000.00 10000.00
>
> UNITS None

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 19%" />
<col style="width: 58%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>[COORDINATES] ;;Node</p>
</blockquote></td>
<td>X-Coord</td>
<td><blockquote>
<p>Y-Coord</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>N1</p>
</blockquote></td>
<td>4006.62</td>
<td><blockquote>
<p>5463.58</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>N2</p>
</blockquote></td>
<td>6953.64</td>
<td><blockquote>
<p>4768.21</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>N3</p>
</blockquote></td>
<td>4635.76</td>
<td><blockquote>
<p>3443.71</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>N4</p>
</blockquote></td>
<td>8509.93</td>
<td><blockquote>
<p>827.81</p>
</blockquote></td>
</tr>
</tbody>
</table>

> \[VERTICES\]
>
> ;;Link X-Coord Y-Coord
>
> 3 5430.46 2019.87
>
> 3 7251.66 927.15
>
> \[SYMBOLS\]
>
> ;;Gage X-Coord Y-Coord
>
> G1 5298.01 9139.07

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 22%" />
<col style="width: 53%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>[Polygons] ;;Subcatchment</p>
</blockquote></td>
<td>X-Coord</td>
<td>Y-Coord</td>
</tr>
<tr class="even">
<td><blockquote>
<p>S1</p>
</blockquote></td>
<td>3708.61</td>
<td>8543.05</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>S1</p>
</blockquote></td>
<td>4834.44</td>
<td>7019.87</td>
</tr>
<tr class="even">
<td><blockquote>
<p>S1</p>
</blockquote></td>
<td>3675.50</td>
<td>4834.44</td>
</tr>
<tr class="odd">
<td colspan="2"><blockquote>
<p>&lt; additional vertices not listed &gt;</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>S2</p>
</blockquote></td>
<td>6523.18</td>
<td>8079.47</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>S2</p>
</blockquote></td>
<td>8112.58</td>
<td>8841.06</td>
</tr>
</tbody>
</table>

**Figure D-3 Data for example study area map**

A detailed description of each map data section will now be given. Remember that map data are only used as a visualization aid for SWMM’s GUI and they play no role in any of the runoff or routing computations. Map data are not needed for running the command line version of SWMM.

**339**

**Section**: **\[MAP\]**

**Purpose**: Provides dimensions and distance units for the map.

**Formats**: **DIMENSIONS** *X1 Y1 X2 Y2*

> **UNITS FEET / METERS / DEGREES / NONE**

**Remarks**: *X1* lower-left X coordinate of full map extent

> *Y1* lower-left Y coordinate of full map extent
>
> *X2* upper-right X coordinate of full map extent
>
> *Y2* upper-right Y coordinate of full map extent

**Section**: \[**COORDINATES**\]

**Purpose**: Assigns X,Y coordinates to drainage system nodes.

**Format**: *Node Xcoord Ycoord*

**Remarks**: *Node* name of node.

> *Xcoord* horizontal coordinate relative to origin in lower left of map.
>
> *Ycoord* vertical coordinate relative to origin in lower left of map.

**Section**: \[**VERTICES**\]

**Purpose**: Assigns X,Y coordinates to interior vertex points of curved drainage system links.

**Format**: *Link Xcoord Ycoord*

**Remarks**: *Link* name of link.

> *Xcoord* horizontal coordinate of vertex relative to origin in lower left of map.
>
> *Ycoord* vertical coordinate of vertex relative to origin in lower left of map.
>
> Include a separate line for each interior vertex of the link, ordered from the inlet node to the outlet node.
>
> Straight-line links have no interior vertices and therefore are not listed in this section.

**340**

**Section**: \[**POLYGONS**\]

**Purpose**: Assigns X,Y coordinates to vertex points of polygons that define a subcatchment boundary.

**Format**: *Subcat Xcoord Ycoord*

**Remarks**: *Subcat* name of subcatchment.

> *Xcoord* horizontal coordinate of vertex relative to origin in lower left of map.
>
> *Ycoord* vertical coordinate of vertex relative to origin in lower left of map.
>
> Include a separate line for each vertex of the subcatchment polygon, ordered in a consistent clockwise or counter-clockwise sequence.

**Section**: \[**SYMBOLS**\]

**Purpose**: Assigns X,Y coordinates to rain gage symbols.

**Format**: *Gage Xcoord Ycoord*

**Remarks**: *Gage* name of rain gage.

> *Xcoord* horizontal coordinate relative to origin in lower left of map.
>
> *Ycoord* vertical coordinate relative to origin in lower left of map.

**Section**: \[**LABELS**\]

**Purpose**: Assigns X,Y coordinates to user-defined map labels.

**Format**: *Xcoord Ycoord Label (Anchor Font Size Bold Italic)*

**Remarks**: *Xcoord* horizontal coordinate relative to origin in lower left of map.

> *Ycoord* vertical coordinate relative to origin in lower left of map.
>
> *Label* text of label surrounded by double quotes.
>
> *Anchor* name of node or subcatchment that anchors the label on zoom-ins (use an empty pair of double quotes if there is no anchor).
>
> *Font* name of label’s font (surround by double quotes if the font name includes spaces).
>
> *Size* font size in points.
>
> *Bold* **YES** for bold font, **NO** otherwise.
>
> *Italic* **YES** for italic font, **NO** otherwise.

**341**

> Use of the anchor node feature will prevent the label from moving outside the viewing area when the map is zoomed in on.
>
> If no font information is provided then a default font is used to draw the label.

**Section**: \[**BACKDROP**\]

**Purpose**: Specifies file name and coordinates of map’s backdrop image.

**Formats**: **FILE** *Fname  
***DIMENSIONS** *X1 Y1 X2 Y2*

**Remarks**: *Fname* name of file containing backdrop image

> *X1* lower-left X coordinate of backdrop image
>
> *Y1* lower-left Y coordinate of backdrop image
>
> *X2* upper-right X coordinate of backdrop image
>
> *Y2* upper-right Y coordinate of backdrop image

**342**

**APPENDIX E – ERROR AND WARNING MESSAGES**

**ERROR 101: memory allocation error.**

> There is not enough physical memory in the computer to analyze the study area.

**ERROR 103: cannot solve KW equations for Link xxx.**

> The internal solver for Kinematic Wave routing failed to converge for the
>
> specified link at some stage of the simulation.

**ERROR 105: cannot open ODE solver.**

> The system could not open its Ordinary Differential Equation solver.

**ERROR 107: cannot compute a valid time step.**

> A valid time step for runoff or flow routing calculations (i.e., a number greater
>
> than 0) could not be computed at some stage of the simulation.

**ERROR 108: ambiguous outlet ID name for Subcatchment xxx.**

> The name of the element identified as the outlet of a subcatchment belongs to
>
> both a node and a subcatchment in the project's data base.

**ERROR 109: invalid parameter values for Aquifer xxx.**

> The properties entered for an aquifer object were either invalid numbers or were inconsistent with one another (e.g., the soil field capacity was higher than the porosity).

**ERROR 110: ground elevation is below water table for Subcatchment xxx.**

> The ground elevation assigned to a subcatchment’s groundwater parameters cannot be below the initial water table elevation of the aquifer object used by the subcatchment.

**ERROR 111: invalid length for Conduit xxx.**

> Conduits cannot have zero or negative lengths.

**ERROR 113: invalid roughness for Conduit xxx.**

> Conduits cannot have zero or negative roughness values.

**ERROR 114: invalid number of barrels for Conduit xxx.  
**Conduits must consist of one or more barrels.

**ERROR 115: adverse slope for Conduit xxx.**

> Under Steady or Kinematic Wave routing, all conduits must have positive slopes. This can usually be corrected by reversing the inlet and outlet nodes of the conduit (i.e., right click on the conduit and select **Reverse** from the popup menu that appears). Adverse slopes are permitted under Dynamic Wave routing.

**343**

**ERROR 117: no cross section defined for Link xxx.**

> Cross section geometry was never defined for the specified link.

**ERROR 119: invalid cross section for Link xxx.**

> Either an invalid shape or invalid set of dimensions was specified for a link's
>
> cross section.

**ERROR 121: missing or invalid pump curve assigned to Pump xxx.**

> Either no pump curve or an invalid type of curve was specified for a pump.

**ERROR 131: the following links form cyclic loops in the drainage system.**

> The Steady and Kinematic Wave flow routing methods cannot be applied to systems where a cyclic loop exists (i.e., a directed path along a set of links that begins and ends at the same node). Most often the cyclic nature of the loop can be eliminated by reversing the direction of one of its links (i.e., switching the inlet and outlet nodes of the link). The names of the links that form the loop will be listed following this message.

**ERROR 133: Node xxx has more than one outlet link.**

> Under Steady and Kinematic Wave flow routing, a junction node can have only a
>
> single outlet link.

**ERROR 134: Node xxx has illegal DUMMY link connections.**

> Only a single conduit with a DUMMY cross-section or Ideal-type pump can be directed out of a node; a node with an outgoing Dummy conduit or Ideal pump cannot have all of its incoming links be Dummy conduits and Ideal pumps; a Dummy conduit cannot have its upstream end connected to a storage node.

**ERROR 135: Divider xxx does not have two outlet links.**

> Flow divider nodes must have two outlet links connected to them.

**ERROR 136: Divider xxx has invalid diversion link.**

> The link specified as being the one carrying the diverted flow from a flow divider
>
> node was defined with a different inlet node.

**ERROR 137: Weir Divider xxx has invalid parameters.**

> The parameters of a Weir-type divider node either are non-positive numbers or are inconsistent (i.e., the value of the discharge coefficient times the weir height raised to the 3/2 power must be greater than the minimum flow parameter).

**ERROR 138: Node xxx has initial depth greater than maximum depth.** Self-explanatory.

**ERROR 139: Regulator xxx is the outlet of a non-storage node.**

> Under Steady or Kinematic Wave flow routing, orifices, weirs, and outlet links can
>
> only be used as outflow links from storage nodes.

**344**

**ERROR 141: Outfall xxx has more than 1 inlet link or an outlet link.**

> An outfall node is only permitted to have one link attached to it.

**ERROR 143: Regulator xxx has invalid cross-section shape.**

> An orifice must have either a CIRCULAR or RECT_CLOSED shape, while a weir
>
> must have either a RECT_OPEN, TRAPEZOIDAL, or TRIANGULAR shape.

**ERROR 145: Drainage system has no acceptable outlet nodes.**

> Under Dynamic Wave flow routing, there must be at least one node designated
>
> as an outfall.

**ERROR 151: a Unit Hydrograph in set xxx has invalid time base.**

> The time base of a Unit Hydrograph cannot be negative and if positive, must not
>
> be less than the recording interval for its rain gage.

**ERROR 153: a Unit Hydrograph in set xxx has invalid response ratios.**

> The response ratios for a set of Unit Hydrographs (the short-, medium-, and long­term response hydrographs) must be between 0 and 1.0 and cannot add up to a value greater than 1.0

**ERROR 155: invalid sewer area for RDII at Node xxx.**

> The sewer area contributing RDII inflow to a node cannot be a negative number.

**ERROR 156: inconsistent data file name for Rain Gage xxx.**

> If two Rain Gages use files for their data sources and have the same Station IDs
>
> then they must also use the same data files.

**ERROR 157: inconsistent rainfall format for Rain Gage xxx.**

> If two or more rain gages use the same Time Series for their rainfall data then
>
> they must all use the same data format (intensity, volume, or cumulative volume).

**ERROR 158: time series for Rain Gage xxx is also used by another object.**

> A rainfall Time Series associated with a Rain Gage cannot be used by another
>
> object that is not also a Rain Gage.

**ERROR 159: recording interval greater than time series interval for Rain Gage xxx.**

> The recording time interval specified for the rain gage is greater than the smallest
>
> time interval between values in the Time Series used by the gage.

**ERROR 161: cyclic dependency in treatment functions at Node xxx.**

> An example would be where the removal of pollutant 1 is defined as a function of the removal of pollutant 2 while the removal of pollutant 2 is defined as a function of the removal of pollutant 1.

**ERROR 171: Curve xxx has invalid or out of sequence data.**

> The X-values of a curve object must be entered in increasing order.

**345**

**ERROR 173: Time Series xxx has its data out of sequence.**

> The time (or date/time) values of a time series must be entered in sequential
>
> order.

**ERROR 181: invalid Snow Melt Climatology parameters.**

> The ATI Weight or Negative Melt Ratio parameters are not between 0 and 1 or
>
> the site latitude is not between -60 and +60 degrees.

**ERROR 182: invalid parameters for Snow Pack xxx.**

> A snow pack’s minimum melt coefficient is greater than its maximum coefficient; the fractions of free water capacity or impervious plowable area are not between 0 and 1; or the snow removal fractions sum to more than 1.0.

**ERROR 183: no type specified for LID xxx.**

> A named LID control has layers defined for it but its LID type was never
>
> specified.

**ERROR 184: missing layer for LID xxx.**

> A required design layer is missing for the specified LID control.

**ERROR 185: invalid parameter value for LID xxx.**

> An invalid value was supplied for an LID control's design parameter.

**ERROR 187: LID area exceeds total area for Subcatchment xxx.**

> The area of the LID controls placed within the subcatchment is greater than that
>
> of the subcatchment itself.

**ERROR 188: LID capture area exceeds total impervious area for Subcatchment xxx.**

> The amount of impervious area assigned to be treated by LID controls in the
>
> subcatchment exceeds the total amount of impervious area available.

**ERROR 191: simulation start date comes after ending date.  
**Self-explanatory.

**ERROR 193: report start date comes after ending date.  
**Self-explanatory.

**ERROR 195: reporting time step is less than routing time step.  
**Self-explanatory.

**ERROR 200: one or more errors in input file.**

> This message appears when one or more input file parsing errors (the 200-series
>
> errors) occur.

**ERROR 201: too many characters in input line.**

> A line in the input file cannot exceed 1024 characters.

**346**

**ERROR 203: too few items at line n of input file.**

> Not enough data items were supplied on a line of the input file.

**ERROR 205: invalid keyword at line n of input file.**

> An unrecognized keyword was encountered when parsing a line of the input file.

**ERROR 207: duplicate ID name at line n of input file.**

> An ID name used for an object was already assigned to an object of the same
>
> category.

**ERROR 209: undefined object xxx at line n of input file.**

> A reference was made to an object that was never defined. An example would be if node 123 were designated as the outlet point of a subcatchment, yet no such node was ever defined in the study area.

**ERROR 211: invalid number xxx at line n of input file.**

> Either a string value was encountered where a numerical value was expected or
>
> an invalid number (e.g., a negative value) was supplied.

**ERROR 213: invalid date/time xxx at line n of input file.**

> An invalid format for a date or time was encountered. Dates must be entered as
>
> month/day/year and times as either decimal hours or as hour:minute:second.

**ERROR 217: control rule clause out of sequence at line n of input file.**

> Errors of this nature can occur when the format for writing control rules is not
>
> followed correctly (see Section C.3).

**ERROR 219: data provided for unidentified transect at line n of input file.**

> A **GR** line with Station-Elevation data was encountered in the \[TRANSECTS\] section of the input file after an **NC** line but before any **X1** line that contains the transect’s ID name.

**ERROR 221: transect station out of sequence at line n of input file.**

> The station distances specified for the transect of an irregular cross section must
>
> be in increasing numerical order starting from the left bank.

**ERROR 223: Transect xxx has too few stations.**

> A transect for an irregular cross section must have at least 2 stations defined for
>
> it.

**ERROR 225: Transect xxx has too many stations.**

> A transect cannot have more than 1500 stations defined for it.

**ERROR 227: Transect xxx has no Manning's N.**

> No Manning’s N was specified for a transect (i.e., there was no **NC** line in the
>
> \[TRANSECTS\] section of the input file.

**347**

**ERROR 229: Transect xxx has invalid overbank locations.**

> The distance values specified for either the left or right overbank locations of a
>
> transect do not match any of the distances listed for the transect's stations.

**ERROR 231: Transect xxx has no depth.**

> All of the stations for a transect were assigned the same elevation.

**ERROR 233: invalid treatment function expression at line n of input file.**

> A treatment function supplied for a pollutant at a specific node is either not a correctly formed mathematical expression or refers to unknown pollutants, process variables, or math functions.

**ERROR 301: files share same names.**

> The input, report, and binary output files specified on the command line cannot
>
> have the same names.

**ERROR 303: cannot open input file.**

> The input file either does not exist or cannot be opened (e.g., it might be in use
>
> by another program).

**ERROR 305: cannot open report file.**

> The report file cannot be opened (e.g., it might reside in a directory to which the
>
> user does not have write privileges).

**ERROR 307: cannot open binary results file.**

> The binary output file cannot be opened (e.g., it might reside in a directory to
>
> which the user does not have write privileges).

**ERROR 309: error writing to binary results file.**

> There was an error in trying to write results to the binary output file (e.g., the disk
>
> might be full or the file size exceeds the limit imposed by the operating system).

**ERROR 311: error reading from binary results file.**

> The command line version of SWMM could not read results saved to the binary
>
> output file when writing results to the report file.

**ERROR 313: cannot open scratch rainfall interface file.**

> SWMM could not open the temporary file it uses to collate data together from
>
> external rainfall files.

**ERROR 315: cannot open rainfall interface file xxx.**

> SWMM could not open the specified rainfall interface file, possibly because it
>
> does not exist or because the user does not have write privileges to its directory.

**348**

**ERROR 317: cannot open rainfall data file xxx.**

> An external rainfall data file could not be opened, most likely because it does not
>
> exist.

**ERROR 318: date out of sequence in rainfall data file xxx.**

> An external user-prepared rainfall data file must have its entries appear in
>
> chronological order. The first out-of-order entry will be listed.

**ERROR 319: unknown format for rainfall data file.**

> SWMM could not recognize the format used for a designated rainfall data file.

**ERROR 320: invalid format for rainfall interface file.**

> SWMM was trying to read data from a designated rainfall interface file with the wrong format (i.e., it may have been created for some other project or actually be some other type of file).

**ERROR 321: no data in rainfall interface file for gage xxx.**

> This message occurs when a project wants to use a previously saved rainfall interface file, but cannot find any data for one of its rain gages in the interface file. It can also occur if the gage uses data from a user-prepared rainfall file and the station id entered for the gage cannot be found in the file.

**ERROR 323: cannot open runoff interface file xxx.**

> A runoff interface file could not be opened, possibly because it does not exist or
>
> because the user does not have write privileges to its directory.

**ERROR 325: incompatible data found in runoff interface file.**

> SWMM was trying to read data from a designated runoff interface file with the wrong format (i.e., it may have been created for some other project or actually be some other type of file).

**ERROR 327: attempting to read beyond end of runoff interface file.**

> This error can occur when a previously saved runoff interface file is being used in
>
> a simulation with a longer duration than the one that created the interface file.

**ERROR 329: error in reading from runoff interface file.**

> A format error was encountered while trying to read data from a previously saved
>
> runoff interface file.

**ERROR 331: cannot open hot start interface file xxx.**

> A hot start interface file could not be opened, possibly because it does not exist
>
> or because the user does not have write privileges to its directory.

**ERROR 333: incompatible data found in hot start interface file.**

> SWMM was trying to read data from a designated hot start interface file with the wrong format (i.e., it may have been created for some other project or actually be some other type of file).

**349**

**ERROR 335: error in reading from hot start interface file.**

> A format error was encountered while trying to read data from a previously saved
>
> hot start interface file.

**ERROR 336: no climate file specified for evaporation and/or wind speed.**

> This error occurs when the user specifies that evaporation or wind speed data
>
> will be read from an external climate file, but no name is supplied for the file.

**ERROR 337: cannot open climate file xxx.**

> An external climate data file could not be opened, most likely because it does not
>
> exist.

**ERROR 338: error in reading from climate file xxx.**

> SWMM was trying to read data from an external climate file with the wrong
>
> format.

**ERROR 339: attempt to read beyond end of climate file xxx.**

> The specified external climate does not include data for the period of time being
>
> simulated.

**ERROR 341: cannot open scratch RDII interface file.**

> SWMM could not open the temporary file it uses to store RDII flow data.

**ERROR 343: cannot open RDII interface file xxx.**

> An RDII interface file could not be opened, possibly because it does not exist or
>
> because the user does not have write privileges to its directory.

**ERROR 345: invalid format for RDII interface file.**

> SWMM was trying to read data from a designated RDII interface file with the wrong format (i.e., it may have been created for some other project or actually be some other type of file).

**ERROR 351: cannot open routing interface file xxx.**

> A routing interface file could not be opened, possibly because it does not exist or
>
> because the user does not have write privileges to its directory.

**ERROR 353: invalid format for routing interface file xxx.**

> SWMM was trying to read data from a designated routing interface file with the wrong format (i.e., it may have been created for some other project or actually be some other type of file).

**ERROR 355: mismatched names in routing interface file xxx.**

> The names of pollutants found in a designated routing interface file do not match
>
> the names used in the current project.

**350**

**ERROR 357: inflows and outflows interface files have same name.**

> In cases where a run uses one routing interface file to provide inflows for a set of locations and another to save outflow results, the two files cannot both have the same name.

**ERROR 361: could not open external file used for Time Series xxx.**

> The external file used to provide data for the named time series could not be
>
> opened, most likely because it does not exist.

**ERROR 363: invalid data in external file used for used for Time Series xxx.**

> The external file used to provide data for the named time series has one or more
>
> lines with the wrong format.

**WARNING 01: wet weather time step reduced to recording interval for Rain Gage xxx.**

> The wet weather time step was automatically reduced so that no period with
>
> rainfall would be skipped during a simulation.

**WARNING 02: maximum depth increased for Node xxx.**

> The maximum depth for the node was automatically increased to match the top
>
> of the highest connecting conduit.

**WARNING 03: negative offset ignored for Link xxx.**

> The link’s stipulated offset was below the connecting node's invert so its actual
>
> offset was set to 0.

**WARNING 04: minimum elevation drop used for Conduit xxx.**

> The elevation drop between the end nodes of the conduit was below 0.001 ft
>
> (0.00035 m) so the latter value was used instead to calculate its slope.

**WARNING 05: minimum slope used for Conduit xxx.**

> The conduit's computed slope was below the user-specified Minimum Conduit
>
> Slope so the latter value was used instead.

**WARNING 06: dry weather time step increased to wet weather time step.**

> The user-specified time step for computing runoff during dry weather periods was lower than that set for wet weather periods and was automatically increased to the wet weather value.

**WARNING 07: routing time step reduced to wet weather time step.**

> The user-specified time step for flow routing was larger than the wet weather runoff time step and was automatically reduced to the runoff time step to prevent loss of accuracy.

**351**

**WARNING 08: elevation drop exceeds length for Conduit xxx.**

> The elevation drop across the ends of a conduit exceeds its length. The program computes the conduit's slope as the elevation drop divided by the length instead of using the more accurate right triangle method. The user should check for errors in the length and in both the invert elevations and offsets at the conduit's upstream and downstream nodes.

**WARNING 09: time series interval greater than recording interval for Rain Gage xxx.** The smallest time interval between entries in the precipitation time series used by the rain gage is greater than the recording time interval specified for the gage. If this was not actually intended then what appear to be continuous periods of rainfall in the time series will instead be read with time gaps in between them.

**WARNING 10: crest elevation is below downstream invert for regulator Link xxx.**

> The height of the opening on an orifice, weir, or outlet is below the invert elevation of its downstream node. Users should check to see if the regulator's
>
> offset height or the downstream node's invert elevation is in error.

**WARNING 11: non-matching attributes in Control Rule xxx.**

> The premise of a control is comparing two different types of attributes to one
>
> another (for example, conduit flow and junction water depth).

**352**
