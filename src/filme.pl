%filme(nome,genero,diretor).
:-dynamic filme/3.

inserirFilme(Nome,Genero,Diretor):-
genero(Genero),
diretor(Diretor),
\+filme(Nome,_,_),
assertz(filme(Nome,genero(Genero),diretor(Diretor))),
salvarBancoEmDisco.


apagarFilme(Nome):-
filme(Nome,Genero,Diretor),
retract(filme(Nome,Genero,Diretor)),
salvarBancoEmDisco.


escreverFilmesEmDisco(Stream):-
filme(Nome,Genero,Diretor),
writeq(Stream,filme(Nome,Genero,Diretor)),
write(Stream,'.\n'),
fail.
escreverFilmesEmDisco(_).

mostrarFilmes:-
listing(filme).


listarFilmesPorGenero(Genero):-
genero(Genero),
filme(Nome,genero(Genero),Diretor),
writeq(filme(Nome,genero(Genero),Diretor)),
write('.\n'),
fail.
listarFilmesPorGenero(_).

listarFilmesPorDiretor(Diretor):-
diretor(Diretor),
filme(Nome,Genero,diretor(Diretor)),
writeq(filme(Nome,Genero,diretor(Diretor))),
write('.\n'),
fail.
listarFilmesPorDiretor(_).


apagarTodosOsFilmes:-
retractall(filme(_,_,_)).
