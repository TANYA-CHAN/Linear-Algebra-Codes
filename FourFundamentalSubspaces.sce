//1. Find the four fundamental subspaces of A=( 1 2 0 1, 0 1 1 0, 1 2 0 1 )

clear; 
close; 
clc; 
A=[1 2 0 1;0 1 1 0;1  2 0 1]; 
disp('A=',A); 
[m,n]=size(A); 
disp('m=',m); 
disp('n=',n); 
[v,pivot]=rref(A); 
disp(rref(A));
disp(v); 
r=length(pivot); 
disp('rank=',r)
cs=A(:,pivot); 
disp('Column Space',cs);
ns=kernel(A); 
disp('Null space=',ns); 
rs= v(1:r, :)'; 
disp('Row Space =',rs)
lns = kernel(A');
disp('Left Null Space =',lns); 
