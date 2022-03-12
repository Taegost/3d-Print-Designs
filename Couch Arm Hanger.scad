// hangar
cupholderDiameter = 124.5;
cupholderHeight = 7.5;
armWidth = 146;
armWings = 40;
armBridgeWidth = armWidth + (armWings * 2);

// The top part with the cupholder cutout
difference() {
    cube([armWidth, armBridgeWidth, cupholderHeight], center = true);
    cylinder(cupholderHeight, d=cupholderDiameter, center = true);
}

// Wings to hold it on the arm
wingHeight = cupholderHeight + 10;
wingWidth = 2;
translate([armWidth / 2,-(armBridgeWidth / 2),-(cupholderHeight)]){
    cube([wingWidth, armBridgeWidth, wingHeight], false);
}