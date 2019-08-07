use <lib/lumber.scad>;

color("blue")
    rotate([-90, 0, -90])
    translate([-lumberSize(3), -lumberSize(1), 0])
    lumber([1, 3], 22);

translate([0, 0, lumberSize(1)]) {
    color("brown") {
        translate([3/4, 0, 31 + 1/4])
            rotate([0, 90, 0])
            translate([-2.5, 0, 0])
            lumber([1, 3], 18+3/4);

        translate([3/4, 26+7/8, 31 + 1/4])
            rotate([0, 90, 0])
            translate([-lumberSize(3), 0, 0])
            lumber([1, 3], 23 + 3/4);
    }

    color("red")
        translate([0, 0, 31 + 1/4])
        rotate([-90, -90, 0])
        lumber([1, 3], 27 + 5/8);

    color("green") {
        translate([3/4, 3/4, 0])
        lumber([2, 2], 33+3/4);

        translate([3/4, 26+7/8-1.5, -1])
        lumber([2, 2], 34+3/4);
    }

    color("yellow")
        translate([19+1/2, 0, 0]) {
        lumber([1, 3], 33+3/4);

        translate([lumberSize(3), 0, 0])
        difference() {
            lumber([1, 3], 33+3/4);
            translate([0, -.1, -.1])
            cube([
                lumberSize(3) + .1,
                lumberSize(1) + .5,
                3.6]);
        }
    }
}

color("pink")
    translate([23+3/4, lumberSize(1), 33+3/4])
    rotate([-90, 0, 0])
    translate([-lumberSize(1), -lumberSize(1), 0])
    lumber([1, 2], 26+1/16);
