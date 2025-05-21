:- use_module(library(lists)).


/*

anagram("ant", ["tan", "stand", "at"], Anagrams).

Anagrams == ["tan"].
		
		
*/


convert(String, List):-
 string_lower(String, SL),
 string_chars(SL, List).
 
anagram(_, [], []).
anagram(String, [Head|Tail], [Head|R]):-
  convert(String, WordList),
  convert(Head, HeadList),
  permutation(WordList, HeadList),
  WordList \= HeadList,
  anagram(String, Tail, R).
  
anagram(String, [Head|Tail], R):-
  convert(String, WordList),
  convert(Head, HeadList),
  \+ permutation(WordList, HeadList),
  anagram(String, Tail, R).
