duplica([], []).
duplica([X|C], [X,X|D]) :- duplica(C,D).

igual([], []) :- true.
igual([X|C], [Y|D]):- X == Y, igual(C, D). 

tamanho([], 0).
tamanho([_|C], T) :- tamanho(C, TC), T is TC+1.

separa([], [], []).
separa([H|C], [H|P], N) :- H>=0, separa(C, P, N), !.
separa([H|C], P, [H|N]) :- H<0, separa(C, P, N), !.

segundo([_,O|_], O).

ultimo([X], X):- !.
ultimo([_|C], Y):- ultimo(C, Y).

soma([], 0).
soma([X|T], S):- soma(T, ST), S is ST+X.

contiguo([]):- false, !.
contiguo([X,X|_]):- true, !.
contiguo([_|T]):- contiguo(T).

fatorial(0, 1):- !.
fatorial(N,_) :- N < 0.
fatorial(N, F) :- M is N - 1, fatorial(M, F1), F is F1*N.

produto(X,X,X).
produto(X,Y,R):- X\==Y, Y1 is Y-1,produto(X,Y1,R), R is Y1*Y.

conc([],L,L).
conc([X|L1],L2,[X|L3]):- conc(L1,L2,L3).
inverter([],[]).
inverter([X|Y],Z):- inverter(Y,Y1), conc(Y1,[X],Z).

enesimo(1,X,[X|_]).
enesimo(N,X,[_|Y]):- enesimo(M,X,Y), N is M + 1.

remover(X,[X|C],C).
remover(X,[Y|C],[Y|D]):- remover(X,C,D).

insere(X,[X|_]).
insere(X,[_|Y]):- insere(X,Y).

intersec([X|Y],L,[X|Z]):- insere(X,L), intersec(Y,L,Z).
intersec([_|X],L,Y) :- intersec(X, L, Y).
inersec(_,_,[]).

mdc(X, X, X).
mdc(X, Y, Z) :- X > Y, W is X-Y, mdc(W, Y, Z).
mdc(X, Y, Z) :- Y > X, W is Y-X, mdc(X, W, Z).

particiona([], [], []).
particiona([X], [X], []).
particiona([X,Y|T], [X|L1], [Y|L2]):- particiona(T, L1, L2).

insereOrdenado([], X, [X]).
insereOrdenado([H|T], X, [H|R]) :- X > H, insereOrdenado(T, X, R).
insereOrdenado([H|T], X, [X|R]) :- X < H.

