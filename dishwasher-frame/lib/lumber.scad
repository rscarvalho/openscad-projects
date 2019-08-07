LUMBER_SIZES = [
  3/4, 1 + 1/2, 2 + 1/2
];

function lumberSize(size) = LUMBER_SIZES[size - 1];

module lumber(shape, length) {
    cube([lumberSize(shape[1]), lumberSize(shape[0]), length]);
}
