use <rounded_square.scad>;

$fa=0.1;
$fs=0.1;

h=75;
w=100;

d=6.5;

line_height = 2.6;
	line_width = .2;

module poti_bottom() {
	circle(r=3.4);
	translate([-3.4-4-1.1,-2.6/2]) square([1.1,2.6]);
rotate(-150)
	for (i=[0:10]) {
		rotate(i*30) translate([-line_width/2,8.8]) square([line_width,line_height]);
	}
}

module poti_top() {
	circle(r=5.8);
/*
	rotate(-150)
	for (i=[0:10]) {
		rotate(i*30) translate([-line_width/2,8]) square([line_width,line_height]);
	}
*/
}

difference() {
	rounded_square([w,h],[5,5,5,5]);
	translate([20,55]) poti_bottom();
	translate([35,35]) poti_bottom();
	translate([50,55]) poti_bottom();
	translate([65,35]) poti_bottom();
	translate([80,55]) poti_bottom();
	translate([d,d]) circle(r=1.5);
	translate([w-d,d]) circle(r=1.5);
	translate([d,h-d]) circle(r=1.5);
	translate([w-d,h-d]) circle(r=1.5);
	
	translate([w/2,15]) circle(r=3.5);
}

translate([w+10,0]) difference() {
	rounded_square([w,h],[5,5,5,5]);
	translate([20,55]) poti_top();
	translate([35,35]) poti_top();
	translate([50,55]) poti_top();
	translate([65,35]) poti_top();
	translate([80,55]) poti_top();
	translate([d,d]) circle(r=1.5);
	translate([w-d,d]) circle(r=1.5);
	translate([d,h-d]) circle(r=1.5);
	translate([w-d,h-d]) circle(r=1.5);
}


/*
difference() {
	rounded_square([30,30],[5,5,5,5]);
	translate([15,15]) poti_bottom();
}

translate([40,0]) difference() {
	rounded_square([30,30],[5,5,5,5]);
	translate([15,15]) poti_top();
}
*/