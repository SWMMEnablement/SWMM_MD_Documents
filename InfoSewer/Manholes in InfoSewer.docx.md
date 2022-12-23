# Manholes in InfoSewer

Manholes are points in the network where links join together and where loads enter the network. They are also placed at locations where pipe characteristics change (e.g., diameter and slope). The basic input data required for manholes is:

-  The rim elevation, i.e. the top elevation of the manhole structure

-  The diameter of the manhole structure

-  The baseline load at the manhole

The manhole diameter and rim elevation parameters are used in the determination of manhole surcharge and flooding. The loads on the system, i.e., wastewater flows collected, accumulated and conveyed by the collection system are assumed to be positive. Manholes can have their load vary with time and different types of loading (e.g., low density residential, medium density residential, high density residential, industrial, commercial, etc.) can be assigned to them. A manhole can also have no loading defined.

The results computed for manholes for a simulation are:

-  The base load

-  The total load

-  The overload storage  

-  The hydraulic grade

<img src="./media/image1.gif" style="width:6.5in;height:0.33056in" />

Two other types of manhole can also be modeled:

- ** Junction chambers**  represent nodes in a pressurized sewer collection system connecting pumps to force mains. No loads can be defined for a junction chamber <img src="./media/image2.gif" style="width:0.40486in;height:0.38681in" />.

- **Outlets** designated Facilities where flows exit the collection system. These nodes define the discharge end or the most downstream element of a sewer network. The exit condition can be grouped into four cases as shown below: <img src="./media/image3.gif" style="width:0.43542in;height:0.40486in" />

  - Nonsubmerged, free fall

  - Nonsubmerged, continuous

  - Nonsubmerged, hydraulic jump, Submerged

<img src="./media/image4.gif" style="width:6.5in;height:0.61181in" />

 

<img src="./media/image5.gif" style="width:6.5in;height:1.55347in" />

<img src="./media/image6.gif" style="width:6.5in;height:1.85556in" />

 

Flow splits (bifurcations) can also be modeled and represent points in the conveyance system where multiple pipes separate flows to different parts of the system. A flow split occurs whenever two or more pipes exit the same manhole. InfoSewerPro provides four practical methods of allocating flows to the downstream (outgoing) pipes <img src="./media/image7.gif" style="width:1.12292in;height:0.47847in" />:

- ** Fixed flow split percentage method**  - The user specifies the percentage of the total flow in the manhole which is assigned to each of the downstream pipes.

- ** Variable flow split percentage method** - The user defines a curve representing the percentage of the total flow in the manhole which is assigned to a downstream pipe as a function of the total incoming flow (See CURVE section).

-   **Inflow-outflow flow split method ** - The user supplies an inflow-outflow curve for each of the downstream pipes splitting from a manhole. The curve defines the amount of the incoming flow to be diverted to a downstream pipe. This flow split method is designed to accommodate flow conditions where hydraulic structures such as weirs and dams are used to regulate downstream flows.

- ** Automatic flow split method** - automatically computes the fraction of the total flow in the manhole assigned to each of the downstream (outgoing) pipes based on their invert levels and diameters.

Note that InfoSewerchecks that the sum of the fractions leaving a manhole equals 100 percent. In case, the sum is less or greater than 100%, InfoSewer will automatically adjust the flow allocations for the outgoing pipes proportionally to satisfy flow balance. Finally, note that InfoSewerassumes that a pipe is closed if its flow split percentage is zero.

**<u>HEADLOSS AT MANHOLES</u>**

Manhole structures can induce backwater effects to their connecting sewer pipes. However, the precise hydraulic description of the flow in manhole structures is complicated because of the complex degree of mixing, separation, turbulence, and energy losses. These losses are commonly estimated as a function of headloss coefficients and are used to calculate hydraulic grade lines for upstream pipes during backwater analysis.

The headloss at a sewer manhole is determined based on the exit pipe’s velocity from the following equation:

<img src="./media/image8.jpeg" style="width:3.83403in" />

<img src="./media/image9.gif" style="width:6.5in;height:2.32917in" />

 

The headloss coefficient, used for estimating headloss through a manhole, depends on the type of manhole and typically ranges from 0.5 to 1.0.

<img src="./media/image8.jpeg" style="width:3.83403in" />

**Other Related Topics -  [<u>Physical Components</u>](javascript:BSSCPopup('../Users_Guide/Chapter_4_Methodology/41_PHYSICAL_COMPONENTS.htm');). [<u>Non Physical Components</u>](javascript:BSSCPopup('../Users_Guide/Chapter_4_Methodology/42_NON_PHYSICAL_COMPONENTS.htm');), [<u>Hydraulic Simulation (Transport) Model</u>](javascript:BSSCPopup('../Users_Guide/Chapter_4_Methodology/43_HYDRAULIC_SIMULATION_MODEL.htm');), [<u>Quality Model</u>](javascript:BSSCPopup('../Users_Guide/Chapter_4_Methodology/44_Water_Quality.htm');),  [<u>Stormwater Modeling</u>](javascript:BSSCPopup('../Extended_Stormwater_Modeling.htm');), [<u>References</u>](javascript:BSSCPopup('References.htm');)**

<img src="./media/image8.jpeg" style="width:3.83403in" />
