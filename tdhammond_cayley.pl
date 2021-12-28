% Parameters are N, the number of elements and L, a list. L can just be a variable which will return the cayley table or can be a cayley table
% and it will check if it's true or not. Checks to make sure that N is an integer greater than 0. If both are true, then it calls jvalues.
cayley(N,L) :-
    N > 0,
    integer(N),
    jvalues(0,N,L).

% Base case is when J is equal to N and the list is empty which means all of the Cayley table has been gone through.
% H is the head of the list and T is the tail. It calls ivalues to get the row of values and once the ivalues reach
% its base case jvalues uses K to increment J to go to the next row and do a recursive call with the new J and new list.
jvalues(N,N,[]).
jvalues(J,N,[H|T]) :-
    ivalues(0,J,N,H),
    K is J + 1,
    jvalues(K,N,T).

% Base case is when I is equal to N and the list is empty which means it has reached the end of the row.
% H2 is the head of the list and T2 is the tail. The value of the (i,j)th element is I*J mod N, so the head
% gets set to that value. M is used to increment I to go to the next element in the row and does a recursive
% call with the new I and new list.
ivalues(N,_,N,[]).
ivalues(I,J,N,[H2|T2]) :-
    H2 is I * J mod N,
    M is I + 1,
    ivalues(M,J,N,T2).
    
