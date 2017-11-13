

isElementInList(X,[X|_]).
isElementInList(X,[_|Tail]):-isElementInList(X,Tail).

mergeLists([],L1,L1).
mergeLists([X|L1],L2,[X|L3]):-mergeLists(L1,L2,L3).



reverse([],IN,IN).
reverse([H|T],L1,L2) :-reverse(T,[H|L1],L2).

reverseList(IN,OUT) :- reverse(IN,[],OUT).

insertElementIntoListEnd(X,[],[X]).
insertElementIntoListEnd(X,[Y|Tail],[Y|Tail1]):-
    insertElementIntoListEnd(X,Tail,Tail1).
