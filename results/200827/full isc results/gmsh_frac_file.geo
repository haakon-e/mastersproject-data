Geometry.Tolerance = 3.3333333333333334e-13;
// Define points
p0 = newp; Point(p0) = {1086.9386500225864, 9569.772585839028, 3441.036276209486, 500.0 };
p1 = newp; Point(p1) = {7547.721099067369, 13376.440049383833, 3425.3381883676852, 500.0 };
p2 = newp; Point(p2) = {5389.513578395076, 11447.522931102889, 859.4096929400415, 500.0 };
p3 = newp; Point(p3) = {4842.258592286496, 10995.228536778566, 352.7949943271373, 500.0 };
p4 = newp; Point(p4) = {4980.187849124779, 10011.836735120962, 691.5861750940504, 500.0 };
p5 = newp; Point(p5) = {7201.962225046807, 10604.324971438462, 3300.662822226959, 500.0 };
p6 = newp; Point(p6) = {5577.074911231655, 10897.85527778389, 3546.2759608147803, 500.0 };
p7 = newp; Point(p7) = {2235.900789492364, 11273.750663428578, 3376.6781261255546, 500.0 };
p8 = newp; Point(p8) = {-10000.0, 0.0, 20000.0, 1500.0 };
p9 = newp; Point(p9) = {-10000.0, 0.0, -10000.0, 1500.0 };
p10 = newp; Point(p10) = {-10000.0, 30000.0, -10000.0, 1500.0 };
p11 = newp; Point(p11) = {-10000.0, 30000.0, 20000.0, 1500.0 };
p12 = newp; Point(p12) = {20000.0, 0.0, 20000.0, 1500.0 };
p13 = newp; Point(p13) = {20000.0, 0.0, -10000.0, 1500.0 };
p14 = newp; Point(p14) = {20000.0, 30000.0, -10000.0, 1500.0 };
p15 = newp; Point(p15) = {20000.0, 30000.0, 20000.0, 1500.0 };
p16 = newp; Point(p16) = {3691.8736943998124, 11104.590010243175, 3434.7069346055346, 500.0 };
p17 = newp; Point(p17) = {3540.1271484092294, 10674.024260096861, 2100.58432742511, 500.0 };
// End of point specification

// Define lines 
frac_line_0 = newl; Line(frac_line_0) = {p0, p3};
Physical Line("FRACTURE_TIP_0") = {frac_line_0};

frac_line_1 = newl; Line(frac_line_1) = {p0, p16};
Physical Line("FRACTURE_TIP_1") = {frac_line_1};

frac_line_2 = newl; Line(frac_line_2) = {p1, p2};
Physical Line("FRACTURE_TIP_2") = {frac_line_2};

frac_line_3 = newl; Line(frac_line_3) = {p1, p16};
Physical Line("FRACTURE_TIP_3") = {frac_line_3};

frac_line_4 = newl; Line(frac_line_4) = {p2, p3};
Physical Line("FRACTURE_TIP_4") = {frac_line_4};

frac_line_5 = newl; Line(frac_line_5) = {p4, p5};
Physical Line("FRACTURE_TIP_5") = {frac_line_5};

frac_line_6 = newl; Line(frac_line_6) = {p4, p17};
Physical Line("FRACTURE_TIP_6") = {frac_line_6};

frac_line_7 = newl; Line(frac_line_7) = {p5, p6};
Physical Line("FRACTURE_TIP_7") = {frac_line_7};

frac_line_8 = newl; Line(frac_line_8) = {p6, p7};
Physical Line("FRACTURE_TIP_8") = {frac_line_8};

frac_line_9 = newl; Line(frac_line_9) = {p7, p17};
Physical Line("FRACTURE_TIP_9") = {frac_line_9};

frac_line_10 = newl; Line(frac_line_10) = {p8, p9};
Physical Line("DOMAIN_BOUNDARY_10") = {frac_line_10};

frac_line_11 = newl; Line(frac_line_11) = {p8, p11};
Physical Line("DOMAIN_BOUNDARY_11") = {frac_line_11};

frac_line_12 = newl; Line(frac_line_12) = {p8, p12};
Physical Line("DOMAIN_BOUNDARY_12") = {frac_line_12};

frac_line_13 = newl; Line(frac_line_13) = {p9, p10};
Physical Line("DOMAIN_BOUNDARY_13") = {frac_line_13};

frac_line_14 = newl; Line(frac_line_14) = {p9, p13};
Physical Line("DOMAIN_BOUNDARY_14") = {frac_line_14};

frac_line_15 = newl; Line(frac_line_15) = {p10, p11};
Physical Line("DOMAIN_BOUNDARY_15") = {frac_line_15};

frac_line_16 = newl; Line(frac_line_16) = {p10, p14};
Physical Line("DOMAIN_BOUNDARY_16") = {frac_line_16};

frac_line_17 = newl; Line(frac_line_17) = {p11, p15};
Physical Line("DOMAIN_BOUNDARY_17") = {frac_line_17};

frac_line_18 = newl; Line(frac_line_18) = {p12, p13};
Physical Line("DOMAIN_BOUNDARY_18") = {frac_line_18};

frac_line_19 = newl; Line(frac_line_19) = {p12, p15};
Physical Line("DOMAIN_BOUNDARY_19") = {frac_line_19};

frac_line_20 = newl; Line(frac_line_20) = {p13, p14};
Physical Line("DOMAIN_BOUNDARY_20") = {frac_line_20};

frac_line_21 = newl; Line(frac_line_21) = {p14, p15};
Physical Line("DOMAIN_BOUNDARY_21") = {frac_line_21};

frac_line_22 = newl; Line(frac_line_22) = {p16, p17};
Physical Line("FRACTURE_LINE_22") = {frac_line_22};

// End of line specification 

// Start domain specification
// Start boundary surface specification
frac_loop_2 = newll; 
Line Loop(frac_loop_2) = { frac_line_10, frac_line_13, frac_line_15, -frac_line_11};
boundary_surface_2 = news; Plane Surface(boundary_surface_2) = {frac_loop_2};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_2") = {boundary_surface_2};

frac_loop_3 = newll; 
Line Loop(frac_loop_3) = { frac_line_18, frac_line_20, frac_line_21, -frac_line_19};
boundary_surface_3 = news; Plane Surface(boundary_surface_3) = {frac_loop_3};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_3") = {boundary_surface_3};

frac_loop_4 = newll; 
Line Loop(frac_loop_4) = { frac_line_10, frac_line_14, -frac_line_18, -frac_line_12};
boundary_surface_4 = news; Plane Surface(boundary_surface_4) = {frac_loop_4};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_4") = {boundary_surface_4};

frac_loop_5 = newll; 
Line Loop(frac_loop_5) = { frac_line_15, frac_line_17, -frac_line_21, -frac_line_16};
boundary_surface_5 = news; Plane Surface(boundary_surface_5) = {frac_loop_5};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_5") = {boundary_surface_5};

frac_loop_6 = newll; 
Line Loop(frac_loop_6) = { frac_line_13, frac_line_16, -frac_line_20, -frac_line_14};
boundary_surface_6 = news; Plane Surface(boundary_surface_6) = {frac_loop_6};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_6") = {boundary_surface_6};

frac_loop_7 = newll; 
Line Loop(frac_loop_7) = { frac_line_11, frac_line_17, -frac_line_19, -frac_line_12};
boundary_surface_7 = news; Plane Surface(boundary_surface_7) = {frac_loop_7};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_7") = {boundary_surface_7};

domain_loop = newsl;
Surface Loop(domain_loop) = { boundary_surface_2, boundary_surface_3, boundary_surface_4, boundary_surface_5, boundary_surface_6, boundary_surface_7};
Volume(1) = {domain_loop};
Physical Volume("DOMAIN") = {1};
// End of domain specification

// Start fracture specification
frac_loop_0 = newll; 
Line Loop(frac_loop_0) = { frac_line_0, -frac_line_4, -frac_line_2, frac_line_3, -frac_line_1};
fracture_0 = news; Plane Surface(fracture_0) = {frac_loop_0};
Physical Surface("FRACTURE_0") = {fracture_0};
Surface{fracture_0} In Volume{1};

Line{frac_line_22} In Surface{fracture_0};

frac_loop_1 = newll; 
Line Loop(frac_loop_1) = { frac_line_5, frac_line_7, frac_line_8, frac_line_9, -frac_line_6};
fracture_1 = news; Plane Surface(fracture_1) = {frac_loop_1};
Physical Surface("FRACTURE_1") = {fracture_1};
Surface{fracture_1} In Volume{1};

Line{frac_line_22} In Surface{fracture_1};

// End of fracture specification

// Start physical point specification
Physical Point("DOMAIN_BOUNDARY_POINT_0") = {p8};
Physical Point("DOMAIN_BOUNDARY_POINT_1") = {p9};
Physical Point("DOMAIN_BOUNDARY_POINT_2") = {p10};
Physical Point("DOMAIN_BOUNDARY_POINT_3") = {p11};
Physical Point("DOMAIN_BOUNDARY_POINT_4") = {p12};
Physical Point("DOMAIN_BOUNDARY_POINT_5") = {p13};
Physical Point("DOMAIN_BOUNDARY_POINT_6") = {p14};
Physical Point("DOMAIN_BOUNDARY_POINT_7") = {p15};
// End of physical point specification

