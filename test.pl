:- use_module(prolog/si).

:- begin_tests(si).

test(atom_si, [error(instantiation_error,context(system:functor/3,_))]) :-
    atom_si(X).

test(atom_si) :-
    atom_si(foo),
    not(atom_si(123)).

test(integer_si, [error(instantiation_error,context(system:functor/3,_))]) :-
    integer_si(X).

test(integer_si) :-
    integer_si(123),
    not(integer_si(foo)).

test(atomic_si, [error(instantiation_error,context(system:functor/3,_))]) :-
    atomic_si(X).

test(atomic_si) :-
    atomic_si(123),
    atomic_si(foo),
    not(atomic_si(foo(bar))).

test(list_si, [error(instantiation_error,context(system:sort/2,_))]) :-
    list_si(X).

test(list_si, [error(type_error(list,foo),context(length/2,_))]) :-
    list_si(foo).

test(list_si) :-
    list_si([1,2,3]).

:- end_tests(si).
