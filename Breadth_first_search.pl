edge(a, b). edge(a, c). edge(a, d). edge(a, e). edge(a, f). edge(a, g). edge(a, h).
edge(a, i). edge(a, j). edge(a, k). edge(a, l). edge(a, m). edge(a, n). edge(a, o). edge(a, p). edge(a, q). edge(a, r). edge(a, s). edge(a, t). edge(a, u). edge(a, v). edge(a, w). edge(a, x). edge(a, y). edge(a, z).

edge(b, c). edge(b, d). edge(b, e). edge(b, f). edge(b, g). edge(b, h). edge(b, i). edge(b, j). edge(b, k). edge(b, l). edge(b, m). edge(b, n). edge(b, o). edge(b, p).
edge(b, q). edge(b, r). edge(b, s). edge(b, t). edge(b, u). edge(b, v). edge(b, w). edge(b, x). edge(b, y). edge(b, z).

edge(c, i). edge(d, j). edge(d, k). edge(e, l). edge(e, m). edge(e, n). edge(e, o).

bfs(Goals, [X|_], _):- member(X, Goals), !, write(X).
bfs(Goals, [X|RestFrontier], Explored):- member(X, Explored),
    !, bfs(Goals, RestFrontier, Explored).
bfs(Goals, [X|RestFrontier], Explored):- write(X),
    succ(X, L),
    append(RestFrontier, L, Frontier),
    bfs(Goals, Frontier, [X|Explored]).

succ(X, L):- findall(Y, edge(X, Y), L).


/* ?- bfs([h], [a], []). */
