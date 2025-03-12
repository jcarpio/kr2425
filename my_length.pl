/*

List

[1,2,3,4]
[]
[a,[], 1, 1+1]

"|"


p(n-1) -> p(n)


my_length(List, N).
  is true if N unify with the number of elements
  in List.
  
Induction

1) P(n0)
2) P(n-1) -> p(n)
  
*/


my_length([], 0).

my_length([_|Tail], R):- my_length(Tail, L), R is L + 1.
