reset;
var x1;
var x2;

maximize obj_f: x1 + x2;

s.t. c1: x1 + x2 <= 4;
s.t. c2: -x1 + x2 >= 2;
s.t. c3: x1 >= 0;
s.t. c4: x2 >= 0;

solve;
display obj_f, x1, x2;