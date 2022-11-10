reset; 

var t1;
var t2;
var t3;
var t4;
var t5;
var y1;
var y2;
var y3;
var y4;
var y5;

minimize total_distance: t1 + t2 + t3 + t4 + t5;
s.t. t1_pos: y1 + 2 <= t1;
s.t. t1_neg: - y1 - 2 <= t1;
s.t. t2_pos: y2 <= t2;
s.t. t2_neg: - y2 <= t2;
s.t. t3_pos: y3 - 1 <= t3;
s.t. t3_neg: - y3 + 1 <= t3;
s.t. t4_pos: y4 - 3 <= t4;
s.t. t4_neg: - y4 + 3 <= t4;
s.t. t5_pos: y5 <= t5;
s.t. t5_neg: - y5 <= t5;
s.t. convex_c1: - y1 + 2 * y2 - y3  <= 0;
s.t. convex_c2: - y2 + 2 * y3 - y4  <= 0;
s.t. convex_c3: - y3 + 2 * y4 - y5  <= 0;

solve;
display total_distance, y1, y2, y3, y4, y5;
