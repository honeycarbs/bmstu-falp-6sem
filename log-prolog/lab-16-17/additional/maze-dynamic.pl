:- dynamic p/2.

w(0,0).
w(0,1). w(1,1). w(2,1). w(3,1). w(4,1). w(5,1).
        w(1,2).         w(3,2).         w(5,2).
        w(1,3).         w(3,3).         w(5,3).
w(0,4). w(1,4). w(2,4).         w(4,4). w(5,4).
                w(2,5). w(3,5). w(4,5).

t(w(1, 1), w(3, 3)).
t(w(3, 3), w(5, 3)).

path_exists(X0,Y0,X,Y) :- next_cell(X0,Y0,X,Y), w(X,Y).
next_cell(X0, Y0, X, Y) :- t(w(X0, Y0), w(X_to, Y_to)), X is X_to, Y is Y_to.
next_cell(X0,Y0,X0,Y) :- Y is Y0+1.
next_cell(X0,Y0,X,Y0) :- X is X0+1.
next_cell(X0,Y0,X0,Y) :- Y is Y0-1.
next_cell(X0,Y0,X,Y0) :- X is X0-1.

go(X,Y,X,Y,Path) :- listing(p).
go(X0,Y0,X,Y,Path) :-
    (path_exists(X0,Y0,X1,Y1) -> 
    \+ p(X1,Y1),
    assertz(p(X1, Y1)),
    go(X1,Y1,X,Y,Path) ;
    retract(p(X0, Y0))).