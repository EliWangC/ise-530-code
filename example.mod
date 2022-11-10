var X;
var Y;
maximize Profit: 25 * X + 30 * Y;
subject to First_constraint: (1/200) * X + (1/140) * Y <= 40;
subject to X_limit: 0 <= X <= 6000;
subject to Y_limit: 0 <= Y <= 4000;
