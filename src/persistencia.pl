
%inicio definicoes de leitura
lerBancoEmDisco:-
arquivoDeDados(Arquivo),
open(Arquivo,read,Stream),
lerLinha(Stream),
close(Stream),!.

lerLinha(Stream):-
read(Stream,Linha),
\+fimArquivo(Linha),
asserta(Linha),
lerLinha(Stream).

lerLinha(_).

fimArquivo(end_of_file).
%fim definicoes de leitura


salvarBancoEmDisco:-
arquivoDeDados(Arquivo),
open(Arquivo,write,Stream),
escreverDiretoresEmDisco(Stream),
escreverGenerosEmDisco(Stream),
escreverFilmesEmDisco(Stream),
close(Stream).

limparMemoria:-
apagarTodosOsDiretores,
apagarTodosOsFilmes,
apagarTodosOsGeneros.


