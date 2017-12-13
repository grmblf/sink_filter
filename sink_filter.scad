// sink filter 38/62

// Tapa gran
difference() {
    union() {
        cylinder(h=2, d=62, d2=37, center=true, $fn=180);
        translate([0,0,-1.99])
        cylinder(h=1, d=62, center=false, $fn=180);
    }
    for(i=[9:2:17]) {
        for (j=[0:10:359]) {
            rotate(j)
            translate([0,i,0])
            cube([1,1,4],true);
        }
    }
    
    for(i=[5:2:7]) {
        for (j=[5:20:364]) {
            rotate(j)
            translate([0,i,0])
            cube([1,1,4],true);
        }
    }
}

//Tapa petita
difference() {
    translate([0,0,4])
    cylinder(h=2.5, d=38, center=true, $fn=80);
    for(i=[9:2:17]) {
        for (j=[5:10:364]) {
            rotate(j)
            translate([0,i,4])
            cube([1,1,4],true);
        }
    }
    for(i=[5:2:7]) {
        for (j=[10:20:369]) {
            rotate(j)
            translate([0,i,4])
            cube([1,1,4],true);
        }
    }
    translate([0,0,4])
    cylinder(h=3, d=6, center=true, $fn=80);
}

// Cilindre interior
difference() {
    cylinder(h=5, d=38, center=false, $fn=80);
    cylinder(h=20, d=36, center=true, $fn=80);
}



