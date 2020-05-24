/* Insertion sort in Prolog*/

sorted([]).
sorted([X]).
sorted([X|[Y|Z]]):- X =< Y, sorted([Y|Z]).

insert(X, [], [X]).
insert(X, [Y|Z], [X|[Y|Z]]):- X =< Y.
insert(X, [Y|Z], [Y|U]):- Y<X, insert(X, Z, U).

sort(X, X):- sorted(X).
sort([X|Y], Z):- sort(Y, U), insert(X, U, Z).
