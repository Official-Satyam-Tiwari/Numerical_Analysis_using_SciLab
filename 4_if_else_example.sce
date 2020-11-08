//If_Else_example

clear;clc;

d=grand(1,3,"uin",1,6);

if d==[6,6,6] then
    w=20;
elseif length(unique(d))==1 then
    w=10;
elseif length(unique(d))==2 then
    w=5;
else
    w=0;
end;

disp("Alice wins "+string(w)+" dollars");
