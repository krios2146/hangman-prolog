hangman :-
    Words = ["apple", "bananums", "orange", "grape", "melon"],
    random_member(Word, Words),
    atom_chars(Word, Letters),
    length(Letters, N),
    length(Guessed, N), % create a list of underscores with same length as the word
    maplist(=(' _ '), Guessed),
    play_hangman(Letters, Guessed, 6).

play_hangman(Letters, Guessed, Lives) :-
    write('Word: '), write(Guessed), nl,
    (Guessed == Letters -> 
        write('Congratulations, you won!'), nl;   
    Lives =< 0 ->
        write('Game over! The word was: '), write(Letters), nl;
    write('Enter a letter: '), read(Char),
        (member(Char, Letters) ->
            update_guessed(Char, Letters, Guessed, NewGuessed),
            play_hangman(Letters, NewGuessed, Lives); 
            NewLives is Lives - 1,
            write('Wrong guess! Lives left: '), write(NewLives), nl,
            play_hangman(Letters, Guessed, NewLives)
        )
    ).

update_guessed(_, [], [], []).
update_guessed(Char, [Char|T], [_|GT], [Char|GT2]) :-
    update_guessed(Char, T, GT, GT2).
update_guessed(Char, [H|T], [G|GT], [G|GT2]) :-
    H \= Char,
    update_guessed(Char, T, GT, GT2).
