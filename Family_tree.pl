/*Given facts are*/

male(oldscotty).
male(quackmore).
male(scrooge).
male(donald).
female(downey).
female(matilda).
female(hortense).
female(della).

parentof(oldscotty,matilda).
parentof(oldscotty,scrooge).
parentof(oldscotty,hortense).
parentof(quackmore,della).
parentof(quackmore,donald).
parentof(downey,matilda).
parentof(downey,scrooge).
parentof(downey,hortense).
parentof(hortense,della).
parentof(hortense,donald).
parentof(della,huey).
parentof(della,dewey).
parentof(della,louie).


/*Here the rules for family tree*/

fatherof(X,Y):- male(X), parentof(X,Y).
motherof(X,Y):- female(X), parentof(X,Y).
sisterof(X,Y):- female(X), parentof(M,Y), parentof(M,X), X\=Y.
sisterof(X,Y):- %(X,Y or Y,X)%
        female(X), parentof(F,Y), parentof(F,X), X\=Y.
brotherof(X,Y):- male(X), parentof(M,Y), parentof(M,X), X\=Y.
brotherof(X,Y):- %(X,Y or Y,X)%
        male(X), parentof(F,Y), parentof(F,X), X\=Y.
siblings(X,Y):- parentof(M,X), parentof(M,Y).
grandparentof(X,Y):- parentof(X,Z), parentof(Z,Y).
auntof(X,Y):- female(X), parentof(Z,Y), sisterof(Z,X),!.
uncleof(X,Y):- male(X), parentof(Z,Y), brotherof(Z,X).







