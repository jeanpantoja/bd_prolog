:-dynamic genero/1.


inserirGenero(Nome):-
\+genero(Nome),
assertz(genero(Nome)),
salvarBancoEmDisco.

escreverGenerosEmDisco(Stream):-
genero(Nome),
writeq(Stream,genero(Nome)),
write(Stream,'.\n'),
fail.
escreverGenerosEmDisco(_).


mostrarGeneros:-
listing(genero).

apagarGenero(Nome):-
genero(Nome),
retract(genero(Nome)),
salvarBancoEmDisco.


apagarTodosOsGeneros:-
retractall(genero(_)).
