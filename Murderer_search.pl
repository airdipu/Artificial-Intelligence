livingat(black,tm).
livingat(butler,tm).
livingat(scarlett,tm).
person(black).
person(butler).
person(scarlett).
hates(butler,butler).
richerthan(black,butler).
richerthan(black,scarlett).
richerthan(scarlett,butler).
hates(black,scarlett).
hates(butler,scarlett).
:- person(black), murdered(black,black).

:- person(X), person(Y), not hates(X,Y), richerthan(X,Y), murdered(X,Y).
{murdered(Killer,black) : person(Killer)} == 1.
