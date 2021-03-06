include <plate.scad>

//poker keyboard layout layer
key_holes = [
//start ROW 0
[0,0,1], [1,0,1], [2,0,1], [3,0,1], [4,0,1], [5,0,1], [6,0,1], [7,0,1], [8,0,1], [9,0,1], [10,0,1], [11,0,1], [12,0,1], [13,0,2],
//start ROW 1
[0,1,1.5], [1.5,1,1], [2.5,1,1], [3.5,1,1], [4.5,1,1], [5.5,1,1], [6.5,1,1], [7.5,1,1], [8.5,1,1], [9.5,1,1], [10.5,1,1], [11.5,1,1], [12.5,1,1], [13.5,1,1.5],
//start ROW 2
[0,2,1.75], [1.75,2,1], [2.75,2,1], [3.75,2,1], [4.75,2,1], [5.75,2,1], [6.75,2,1], [7.75,2,1], [8.75,2,1], [9.75,2,1], [10.75,2,1], [11.75,2,1], [12.75,2,2.25],
//start ROW 3
[0,3,2.25], [2.25,3,1], [3.25,3,1], [4.25,3,1], [5.25,3,1], [6.25,3,1], [7.25,3,1], [8.25,3,1], [9.25,3,1], [10.25,3,1], [11.25,3,1], [12.25,3,2.75],
//start ROW 4
[0,4,1.25], [1.25,4,1.25], [2.5 ,4,1.25], [3.75,4,6.25], [10,4,1.25], [11.25,4,1.25], [12.5,4,1.25], [13.75,4,1.25],
];

/* full_plate(width, height, pokerkeyboard); */


module left() {
    translate([0, 0, 0]) {
        scale([1.01,1.01, 1]){
            translate([0,0,7]) linear_extrude(height=3) {
                import("operation_trogdor_left_revised.dxf");
            }

            translate([1,1,0]) linear_extrude(height=7) {
                difference() {
                    offset(1, $fn=48) square([152.402 - 2,  95.252 - 2]);
                    square([152.402 - 2,  95.252 - 2]);
                }
            }
        }
    }
}


module right() {
    translate([170, 0, 0]) {
        scale([1.01,1.01, 1]){
            translate([0,0,7]) linear_extrude(height=3) {
                import("operation_trogdor_right.dxf");
            }

            translate([1,1,0]) linear_extrude(height=7) {
                difference() {
                    offset(1, $fn=48) square([152.402 - 2,  95.252 - 2]);
                    square([152.402 - 2,  95.252 - 2]);
                }
            }
        }
    }
}

left();
