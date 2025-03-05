
chatty(gustavo).
chatty(valeria).

blue_eyes(esteban).
blue_eyes(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

pairing(A,B):- blue_eyes(A), blu_eyes(B).
pairing(A, _):- chatty(A).
pairing(_, A):- chatty(A).
/*
% a /\ b -> c
  c:- a, b.

  We only write Rules and Facts!
*/
pairing(A, B):- likes(A,B), likes(B,A). 

seating(A, B, C, D, E):- pairing(A,B), pairing(B, C), pairing(C,D), pairing(D, E).
