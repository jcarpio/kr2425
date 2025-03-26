/*
Giuseppe Peano

Represent Numbers with a symbol 0
n(Number) -> Next to number "Number"

0 - 0
1 - n(0)
2 - n(n(0))
3 - n(n(n(0)))

...

p(n0)
P(n-1) -> P(n)
P(n):- P(n-1).


add(?X, ?Y, ?Z)
 is true if Z unify with a number in Peano Arithmetic
 that represents Y * Y

*/


add(0, Y, Y).
add(n(X), Y, n(Z)):-  add(X, Y, Z).

/*
multiply(?X, ?Y, ?R)
  is true if R unify with a number in Peano Arithmetic
  representation that represents the result of add X, 
  Y times. 
*/

multiply(_, 0, 0).
multiply(X, n(Y), R):-  multiply(X, Y, Z), add(X, Z, R).


/*

p2d(?Peano, ?Decimal) 
  is true if Decimal is the decimal number that represents Peano
  number.

  1) P(n0)
  2) P(n-1) -> P(n)
  
*/
p2d(0, 0).

p2d(n(X), R2):- p2d(X, R), R2 is R + 1.



