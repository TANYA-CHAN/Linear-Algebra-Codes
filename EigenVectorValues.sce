//Find the Eigen values and the corresponding Eigen vectors of the following matrices: A=[2,2,1;1,3,1;1,2,2];


clc;
clear;
close;
A=[2,2,1;1,3,1;1,2,2];
lam= poly(0,'lam');
lam=lam ;
charMat=A-lam*eye(3,3);
disp('The characteristic Matrix.is',charMat);
charPoly = poly(A,'lam');
disp('the characteristic polynomial is',charPoly);
lam=spec(A);
disp('The eigen values of A are',lam);
[evec,eval]=spec(A);
disp('the eigen vectors of A are',evec);
function[x,lam]=eigenvectors(A) 
[n,m]=size(A);
lam=spec(A)'; 
x =[];
for k=1:3 
    B=A-lam(k)*eye(3,3);//characteristic matrix 
    C=B(1:n-1,1:n-1);//coeff matrix for the reduced systf 
    b=-B(1:n-1,n);//RHS vector for the reduced system 
    y=C\b;//solution for the reduced system 
    y=[y;1];//complete eicen vector 
    y=y/norm(y);//make unot eigen vector 
    x=[x y];
 end 
endfunction 

