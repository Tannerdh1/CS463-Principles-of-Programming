%Testing Rules
rule('S',['A','B']).
rule('S',[]).
rule('A',['C','A']).
rule('A',['C']).
rule('B',['D','A']).
rule('B',['D']).
rule('C',['a']).
rule('D',['b']).

%Cartesian Product
product(A,B,C) :-
    findall([X,Y],(member(X,A),member(Y,B)),C).

%:- table listFromLoop/2. Was looking into this while searching memoization in prolog. I read that it's a built in way to do memoization in prolog, but I wasn't able to
%figure out how to incorporate it into the code yet.


%Trying to create a CYK Table. U Is the string and W is the list which will be the table.
cyk(U,W):-
    loop(U,W).

loop([],_).	
loop([H|T],W):-
    rule(X,[H]),
    list_concat(W,[X],Y),
    loop(T,Y).

%Concatenation
list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]) :- list_concat(L1,L2,L3).
