all_possible_lists(InList,Out) :- combinations(InList,_,SubList), permutations(SubList,Out).

combinations([], [], []).
combinations([H|T],[H|L],R) :- combinations(T,L,R).
combinations([H|T],L,[H|R]) :- combinations(T,L,R).

permutations([ ],[ ]) :- !.
permutations(L,[X|R]) :- omit(X,L,M), permutations(M,R).

omit(H,[H|T],T).
omit(X,[H|L],[H|R]) :- omit(X,L,R).