// hangar
cupholderDiameter = 126; // Physical diameter is 124.5mm
cupholderHeight = 7.5;
armWidth = 150; // Physical width of couch arm is 146mm
armWings = 40;
armBridgeWidth = armWidth + (armWings * 2);

// The top part with the cupholder cutout
$fn=50;
difference() {
    cube([armWidth, armBridgeWidth, cupholderHeight], center = true);
    cylinder(cupholderHeight, d=cupholderDiameter, center = true);
}

// Wings to hold it on the arm
wingHeight = cupholderHeight + 20;
wingWidth = 2;
offset = 6.3; // I haven't figured out why I need this offset
translate([armWidth / 2,0,offset+(cupholderHeight/2)]){
    cube([wingWidth, armBridgeWidth, wingHeight], true);
}
translate([-armWidth / 2,0,offset+(cupholderHeight/2)]){
    cube([wingWidth, armBridgeWidth, wingHeight], true);
}