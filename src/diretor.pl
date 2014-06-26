:-dynamic diretor/1.


inserirDiretor(Nome):-
\+diretor(Nome),
assertz(diretor(Nome)),
salvarBancoEmDisco.



escreverDiretoresEmDisco(Stream):-
diretor(Nome),
writeq(Stream,diretor(Nome)),
write(Stream,'.\n'),
fail.
escreverDiretoresEmDisco(_).


mostrarDiretores:-
listing(diretor).


apagarDiretor(Nome):-
diretor(Nome),
retract(diretor(Nome)),
salvarBancoEmDisco.



apagarTodosOsDiretores:-
retractall(diretor(_)).
