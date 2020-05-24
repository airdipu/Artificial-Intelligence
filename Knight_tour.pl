/* Is there a sequence of moves of a knight on a chessboard such that the knight visits every square exactly once (i.e., is there a Hamilton tour for a knight ?) */

legal(1). legal(2). legal(3). legal(4). legal(5). legal(6). legal(7). legal(8).
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1+1, Y2 is Y1+2.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1+1, Y2 is Y1-2.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1-1, Y2 is Y1+2.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1-1, Y2 is Y1-2.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1+2, Y2 is Y1+1.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1+2, Y2 is Y1-1.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1-2, Y2 is Y1+1.
move(X1, Y1, X2, Y2):- legal(X1), legal(X2), legal(Y1), legal(Y2),
    X2 is X1-2, Y2 is Y1-1.


path(X1, Y1, X1, Y1, L).
path(X1, Y1, X2, Y2, L):- legal(X3), legal(Y3), move(X1, Y1, X3, Y3),
    not(member([X3, Y3], L)), path(X3, Y3, X2, Y2, [[X3, Y3]|L]).
path(X1, Y1, X2, Y2):- path(X1, Y1, X2, Y2, [[X1, Y1]]).
