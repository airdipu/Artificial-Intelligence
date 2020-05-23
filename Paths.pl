/* Given a directed graph with nodes k1, ...., kn */
/*  Is there a path between any ki and kj (for arbitrary i, j) ? */

edge(k1, k3).
edge(k2, k5).
edge(k4, k2).
edge(k5, k1).

path(X, Y):- edge(X, Y).
path(X, Y):- edge(X, Z), path(Z, Y).

