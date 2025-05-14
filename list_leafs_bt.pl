
tree1(
      t(1, t(2,nil,nil), t(3,nil,nil))
      ).
	  
	  
tree2(
     t(1, t(2, t(3,nil,nil), t(4,nil, nil)), 
	 t(5, t(6,nil,nil), t(7,nil,t(8,nil,nil))) ) 
).	  
	

/*

list_leafs(Tree, List)
  is true if Lis unify with the Tree list of leafs. 

Induction

*/

leaf(t(_, nil, nil)).
label(t(Label,_,_), Label).

list_leafs(nil, []).

list_leafs(Tree, [Label]):- leaf(Tree), label(Tree, Label).

list_leafs(t(_, Left, Right), R):- \+ leaf(t(_, Left, Right)), 
  list_leafs(Left, RL),
  list_leafs(Right, RR),
  append(RL, RR, R).
