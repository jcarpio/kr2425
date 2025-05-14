

/*

create_bt(LabelList, BinaryTree)
  is true if BinaryTree unify with a tree that
  contains all label in LabelList.
  
  LeftHeight - RightHeight = {0,1}

*/

create_bt([], nil).

create_bt([Head|LabelList], a(Head, Left, Right)):-
  length(LabelList, L),
  Mid is L div 2,
  length(LeftList, Mid),
  append(LeftList, RightList, LabelList),   
  create_bt(LeftList, Left),
  create_bt(RightList, Right).
