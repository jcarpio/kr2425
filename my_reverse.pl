/*

my_reverse(List, Result)
  is true if Result unify with a lits that 
  contains the elements of List in a 
  reverse order.
  
Induction

1) P(n0)
2) P(n-1) -> P(n)
   p(N):- P(n-1).

*/

my_reverse([], []).
my_reverse([Head|Tail], R2):- 
    my_reverse(Tail, Result),
    append(Result, [Head], R2).
