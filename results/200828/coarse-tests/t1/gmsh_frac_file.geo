Geometry.Tolerance = 3.3333333333333334e-13;
// Define points
p0 = newp; Point(p0) = {1086.9386500225864, 9569.772585839028, 3441.036276209486, 1000.0 };
p1 = newp; Point(p1) = {7547.721099067369, 13376.440049383833, 3425.3381883676852, 1000.0 };
p2 = newp; Point(p2) = {5389.513578395076, 11447.522931102889, 859.4096929400415, 872.1907427899883 };
p3 = newp; Point(p3) = {4842.258592286496, 10995.228536778566, 352.7949943271373, 872.1907427899883 };
p4 = newp; Point(p4) = {-10000.0, 0.0, 20000.0, 3000.0 };
p5 = newp; Point(p5) = {-10000.0, 0.0, -10000.0, 3000.0 };
p6 = newp; Point(p6) = {-10000.0, 30000.0, -10000.0, 3000.0 };
p7 = newp; Point(p7) = {-10000.0, 30000.0, 20000.0, 3000.0 };
p8 = newp; Point(p8) = {20000.0, 0.0, 20000.0, 3000.0 };
p9 = newp; Point(p9) = {20000.0, 0.0, -10000.0, 3000.0 };
p10 = newp; Point(p10) = {20000.0, 30000.0, -10000.0, 3000.0 };
p11 = newp; Point(p11) = {20000.0, 30000.0, 20000.0, 3000.0 };
// End of point specification

// Define lines 
frac_line_0 = newl; Line(frac_line_0) = {p0, p1};
Physical Line("FRACTURE_TIP_0") = {frac_line_0};

frac_line_1 = newl; Line(frac_line_1) = {p0, p3};
Physical Line("FRACTURE_TIP_1") = {frac_line_1};

frac_line_2 = newl; Line(frac_line_2) = {p1, p2};
Physical Line("FRACTURE_TIP_2") = {frac_line_2};

frac_line_3 = newl; Line(frac_line_3) = {p2, p3};
Physical Line("FRACTURE_TIP_3") = {frac_line_3};

frac_line_4 = newl; Line(frac_line_4) = {p4, p5};
Physical Line("DOMAIN_BOUNDARY_4") = {frac_line_4};

frac_line_5 = newl; Line(frac_line_5) = {p4, p7};
Physical Line("DOMAIN_BOUNDARY_5") = {frac_line_5};

frac_line_6 = newl; Line(frac_line_6) = {p4, p8};
Physical Line("DOMAIN_BOUNDARY_6") = {frac_line_6};

frac_line_7 = newl; Line(frac_line_7) = {p5, p6};
Physical Line("DOMAIN_BOUNDARY_7") = {frac_line_7};

frac_line_8 = newl; Line(frac_line_8) = {p5, p9};
Physical Line("DOMAIN_BOUNDARY_8") = {frac_line_8};

frac_line_9 = newl; Line(frac_line_9) = {p6, p7};
Physical Line("DOMAIN_BOUNDARY_9") = {frac_line_9};

frac_line_10 = newl; Line(frac_line_10) = {p6, p10};
Physical Line("DOMAIN_BOUNDARY_10") = {frac_line_10};

frac_line_11 = newl; Line(frac_line_11) = {p7, p11};
Physical Line("DOMAIN_BOUNDARY_11") = {frac_line_11};

frac_line_12 = newl; Line(frac_line_12) = {p8, p9};
Physical Line("DOMAIN_BOUNDARY_12") = {frac_line_12};

frac_line_13 = newl; Line(frac_line_13) = {p8, p11};
Physical Line("DOMAIN_BOUNDARY_13") = {frac_line_13};

frac_line_14 = newl; Line(frac_line_14) = {p9, p10};
Physical Line("DOMAIN_BOUNDARY_14") = {frac_line_14};

frac_line_15 = newl; Line(frac_line_15) = {p10, p11};
Physical Line("DOMAIN_BOUNDARY_15") = {frac_line_15};

// End of line specification 

// Start domain specification
// Start boundary surface specification
frac_loop_1 = newll; 
Line Loop(frac_loop_1) = { frac_line_4, frac_line_7, frac_line_9, -frac_line_5};
boundary_surface_1 = news; Plane Surface(boundary_surface_1) = {frac_loop_1};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_1") = {boundary_surface_1};

frac_loop_2 = newll; 
Line Loop(frac_loop_2) = { frac_line_12, frac_line_14, frac_line_15, -frac_line_13};
boundary_surface_2 = news; Plane Surface(boundary_surface_2) = {frac_loop_2};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_2") = {boundary_surface_2};

frac_loop_3 = newll; 
Line Loop(frac_loop_3) = { frac_line_4, frac_line_8, -frac_line_12, -frac_line_6};
boundary_surface_3 = news; Plane Surface(boundary_surface_3) = {frac_loop_3};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_3") = {boundary_surface_3};

frac_loop_4 = newll; 
Line Loop(frac_loop_4) = { frac_line_9, frac_line_11, -frac_line_15, -frac_line_10};
boundary_surface_4 = news; Plane Surface(boundary_surface_4) = {frac_loop_4};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_4") = {boundary_surface_4};

frac_loop_5 = newll; 
Line Loop(frac_loop_5) = { frac_line_7, frac_line_10, -frac_line_14, -frac_line_8};
boundary_surface_5 = news; Plane Surface(boundary_surface_5) = {frac_loop_5};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_5") = {boundary_surface_5};

frac_loop_6 = newll; 
Line Loop(frac_loop_6) = { frac_line_5, frac_line_11, -frac_line_13, -frac_line_6};
boundary_surface_6 = news; Plane Surface(boundary_surface_6) = {frac_loop_6};
Physical Surface("DOMAIN_BOUNDARY_SURFACE_6") = {boundary_surface_6};

domain_loop = newsl;
Surface Loop(domain_loop) = { boundary_surface_1, boundary_surface_2, boundary_surface_3, boundary_surface_4, boundary_surface_5, boundary_surface_6};
Volume(1) = {domain_loop};
Physical Volume("DOMAIN") = {1};
// End of domain specification

// Start fracture specification
frac_loop_0 = newll; 
Line Loop(frac_loop_0) = { frac_line_0, frac_line_2, frac_line_3, -frac_line_1};
fracture_0 = news; Plane Surface(fracture_0) = {frac_loop_0};
Physical Surface("FRACTURE_0") = {fracture_0};
Surface{fracture_0} In Volume{1};


// End of fracture specification

// Start physical point specification
Physical Point("DOMAIN_BOUNDARY_POINT_0") = {p4};
Physical Point("DOMAIN_BOUNDARY_POINT_1") = {p5};
Physical Point("DOMAIN_BOUNDARY_POINT_2") = {p6};
Physical Point("DOMAIN_BOUNDARY_POINT_3") = {p7};
Physical Point("DOMAIN_BOUNDARY_POINT_4") = {p8};
Physical Point("DOMAIN_BOUNDARY_POINT_5") = {p9};
Physical Point("DOMAIN_BOUNDARY_POINT_6") = {p10};
Physical Point("DOMAIN_BOUNDARY_POINT_7") = {p11};
// End of physical point specification

