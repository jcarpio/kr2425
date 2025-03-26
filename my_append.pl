/*

my_append(?List1, ?List2, ?Result)
  is true when Result unify with a list
  with elements of List1 followed by elements
  in List2 in same order.

  append([1,2,3], [4,5,6], R).
  R = [1,2,3,4,5,6]
  
  Induction
  1) P(n0)
  2) P(n-1) -> P(n)
     p(N):- N2 is N1, P(N). 
  
  In case of Lists n0 = []
  n-1 -> [Head|Tail] -> Tail is n-1

  append([1,2,3], [4,5,6], R).
  R=[1,2,3,4,5,6]
  
  append([2,3], [4,5,6], R).
  R=[2,3,4,5,6]   
  
*/

my_append([], List2, List2).
my_append([Head|Tail], List2, [Head|R]):- my_append(Tail, List2, R). 
