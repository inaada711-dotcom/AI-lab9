%  Task 1: Boolean expression
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

neg(true,  false).
neg(false, true).

logicGate(A, B, O) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, O).

% Task 2: sumlist
sumlist([], 0).
sumlist([H|T], Sum) :-
    sumlist(T, SumTail),
    Sum is H + SumTail.

% Task 3: Total and Average
total_avg :-
    write('Enter first number: '),  read(A),
    write('Enter second number: '), read(B),
    write('Enter third number: '),  read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total = '),   write(Total),   nl,
    write('Average = '), write(Average), nl.