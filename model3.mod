reset;
param m;
param n;
param A {i in 1..m, j in 1..n};
param c {j in 1..n};
param b {i in 1..m};

var x {1..n} >= 0;
minimize obj_f: sum {j in 1..n} c[j] * x[j];
s.t. constraint{i in 1..m}: sum {j in 1..n} A[i, j] * x[j] == b[i];
