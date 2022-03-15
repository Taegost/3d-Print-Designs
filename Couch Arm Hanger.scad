// hangar
cupholderDiameter = 126; // Physical diameter is 124.5mm
cupholderHeight = 5;
armWidth = 150; // Physical width of couch arm is 146mm
armWings = 10;
armBridgeWidth = cupholderDiameter + (armWings * 2);

// The top part with the cupholder cutout
$fn=50;
difference() 
{
    cube([armWidth, armBridgeWidth, cupholderHeight], center = false);
    // z and height values are to remove artifacts from the preview
    translate([armWidth /2, armBridgeWidth /2, -1]) 
    { 
        cylinder(cupholderHeight+2, d=cupholderDiameter, center = false);}
} // difference

// Wings to hold it on the arm
wingHeight = cupholderHeight + 40;
wingWidth = 2;
module wing(x, y, z)
{
    linear_extrude(height = z, center = false)
    {
      square([x, y], false);
    }
} // module wing

wing (wingWidth, armBridgeWidth, wingHeight);
translate([armWidth, 0, 0])
{ 
    wing(wingWidth, armBridgeWidth, wingHeight);
}

// Slots for modules
module slot(x, y, z)
{
    translate([x,y,z])
    {
        difference()
        {
            cube([5, 10, 5], false);
            translate([1,1,-1]) { cube([4,8,7], false); }
        } // difference
    } // translate
} // module slot

slot(-5,0,0);