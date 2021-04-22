//Factorize the following matrices as A = LU, A=(2 3 1,4 7 5,1 − 2 2 )

clear; 
close; 
clc; 
A = [2 , 3 , 1;4 ,7 , 5;1 , -2 ,2]
U = A ;
disp('The given matrix is A=',A)
m = det (U (1 ,1) ) ; 
n = det (U (2 ,1) ) ; 
a = n / m ; 
U (2 ,:) = U (2 ,:) - U (1 ,:) / ( m / n ) ;
n = det (U (3 ,1) ) ;
b = n / m ;
U (3 ,:)=U(3 ,:)-U(1,:)/(m/n);
m = det(U(2 ,2));
n = det(U(3 ,2));
c = n/m ; 
U (3 ,:) = U (3 ,:) - U (2 ,:) / ( m / n ) ;
disp ('The upper-triangular matrix is-U-=',U) 
L=[1,0,0; a ,1 ,0; b ,c ,1]; 
disp('The lower triangular matrix is L =',L) 


