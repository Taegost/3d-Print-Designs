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
offset = -1.27; // I haven't figured out why I need this offset
translate([armWidth / 2,0,offset-(cupholderHeight/2)]){
    cube([wingWidth, armBridgeWidth, wingHeight], true);
}
translate([-armWidth / 2,0,offset-(cupholderHeight/2)]){
    cube([wingWidth, armBridgeWidth, wingHeight], true);
}