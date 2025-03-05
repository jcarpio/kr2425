/*
Mathematic Induction


We want to demonstrate if the program P is true
for all elements in S. Elements in S have the concept of order.

For example , S is Nutural Numbers Set

n0 = 1 < 2 < 3 < 4 ....

n0 = [] < [_] < [_,_] < [_, _, _]


1) P(n0) is true.
2) For all n > n0, P(n-1) is true then P(n) is true.
   
   P(n-1) -> P(n)
   
   P(n)   -> P(n+1)
   
*/
% First
natural(1).

/* natural(n-1) -> natural(n) */

% Second
natural(N):- N > 1, N2 is N - 1, natural(N2).  
