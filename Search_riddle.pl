
/* A riddle in prolog. */
/* Here every friend in the list represented as ,  */
/* h('Name', 'ColorShirt', 'Kindercrypt', 'Amount', 'Password', 'Sold') */



crypto(L):-
    length(L, 5),
    L = [h(charles, blackshirt, _, _, _, bike), _, _, _, _],
    L = [_, _, h(_, _, _, 100, hashtag, _), _, _],
    L = [_, _, _, h(_, yellowshirt, _, _, _, _), _],
    L = [_, _, _, _, h(_, _, _, _, 1234, _)],
    L = [_, _, _, _, h(_, _, _, _, _, computer)],
    L = [h(_, _, _, _, brainzilla, _), _, _, _, _],
    nextto(h(_, _, _, _, _, boat), h(russell, _, _, _, _, _), L),
    nextto(h(russell, _, _, _, _, _), h(_, _, _, 400, _, _), L),
    nextto(h(_, _, _, _, _, jewelry), h(leslie, _, _, _, _, _), L),
    nextto(h(_, _, coinzillas, _, _, _), h(_, _, _, _, _, jewelry), L),
    nextto(h(oliver, _, _, _, _, _), h(_, _, sudocoins, _, _, _), L),
    next(h(_, _, _, _, _, jewelry), h(_, whiteshirt, _, _, _, _), L),
    next(h(_, _, _, 500, _, _), h(_, _, _, _, _, computer), L),
    member(h(eugene, greenshirt, _, _, _, _), L),
    member(h(_, _, iqcoins, 300, _, _), L),
    member(h(_, _, braincoins, 200, _, _), L),
    member(h(_, _, _, _, qwert, car), L),
    member(h(_, blueshirt, logicoins, _, _, _), L),
    betw(h(_, _, braincoins, _, _, _), h(_, greenshirt, _, _, _, _), h(_, _, _, _, _, computer), L),
    someleft(h(_, whiteshirt, _, _, _, _), h(_, _, _, _, rex, _), L).

next(A, B, L) :- append(_, [A, B|_], L).
next(A, B, L) :- append(_, [B, A|_], L).

betw(A, B, C, L):- append(_, [A, B, C|_], L).
betw(A, B, C, L):- append(_, [A, _, B, _, C|_], L).
betw(A, B, C, L):- append(_, [A, _, _, B, C|_], L).
betw(A, B, C, L):- append(_, [A, B, _, _, C|_], L).

someleft(A, B, L):- append(_, [A, B|_], L).
someleft(A, B, L):- append(_, [A, _, B|_], L).
someleft(A, B, L):- append(_, [A, _, _, B|_], L).
someleft(A, B, L):- append(_, [A, _, _, _, B|_], L).
