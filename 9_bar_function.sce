//USING BAR FUNCTION

x=[1:10];
n=grand(1,10,"uin",1,10);
clf;
bar(x,n,"k");

//BAR GRAPH REPRESENTING 2 SETS
//x-m,n but m &n should be column vectors
//hence m and are transposed

m=grand(1,10,"uin",1,10);
clf;
scf(5);
bar(x,[n',m']);
