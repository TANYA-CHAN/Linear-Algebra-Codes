//Find the inverse of the following matrices: A=[1 0 0, 1 1 1, 0 0 1]
 
clc;
clear;
A= [1 0 0; 1 1 1; 0 0 1];
n = length ( A (1 ,:) ) ; 
Aug = [A ,eye(n , n ) ]; // ForwardElimination 
for j = 1: n -1
     for i = j +1: n
          Aug(i,j:2*n )=Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
       end 
   end 
//BackwardElirination 
for j = n : -1:2 
     Aug(1:j -1 ,:) = Aug(1: j -1 ,:)-Aug(1: j -1 , j )/Aug(j,j)*Aug(j,:); 
 end
// DiagonalNormalization 
for j =1: n 
    Aug (j ,:) = Aug (j ,:) / Aug (j , j ) ; 
end 
B=Aug (:,n +1:2*n) ; 
disp('The Inverse of A is',B); 


