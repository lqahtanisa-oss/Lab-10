

user(ali, 1234).
user(saad, 5678).
user(lujaen, 9999).


login :-
    login_attempt(3).


login_attempt(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        login_attempt(Remaining)
    ).


login_attempt(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'),
    nl.
