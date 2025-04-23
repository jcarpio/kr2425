/*-----------------------------------------------------
 bubble_sort(+List, -ListR).
 it is true when ListR unifies with a list containing the
 same elements as List ordered from lowest to highest.

 Induction
 1) P(n0)
 2) n > n0, P(n-1) -> P(n)

----------------------------------------------------- */

bubble_sort(List, List) :- sorted(List).

bubble_sort(List, R) :- append(L1, [E1,E2|L2], List), E1 > E2, 
    append(L1, [E2,E1|L2], List2),
	bubble_sort(List2, R).

bubble_sort(List, R) :- append(_, [E1,E2|_], List), E1 =< E2, 
	bubble_sort(List, R).	

/*
sorted(+List)
  is true if all elements in List are sorted form lowest to highest element.
*/


sorted([]).
sorted([_]).
sorted([H1, H2|Tail]):-  H1 =< H2, sorted([H2|Tail]).
