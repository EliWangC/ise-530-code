reset;
var x {1..2};

maximize obj_f: sum {i in 1..2} x[i];

s.t. c {i in 1..2}: x[i] >= 0;
s.t. c3: x[1] + x[2] <= 4;
s.t. c4: -x[1] + x[2] >= 2;

solve;
display obj_f, x;
