
menu_filme:-
nl,
writeln('Menu Filme'),
writeln('1-Cadastrar Filme'),
writeln('2-Remover Filme'),
writeln('3-Listar Todos Os Filmes'),
writeln('4-Listar Filme Por Diretor'),
writeln('5-Listar Filme Por Genero'),
writeln('6-Voltar para menu principal'),
write('Digite o numero da opcao desejada: '),
read(Opt),
opcoes_menu_filme(Opt),nl.

menu_filme:-
nl,writeln('Opcao invalida, tente novamente.'),
menu_filme.

opcoes_menu_filme(1):-cadastrar_filme,menu_filme.
opcoes_menu_filme(2):-remover_filme,menu_filme.
opcoes_menu_filme(3):-listar_todos_os_filmes,menu_filme.
opcoes_menu_filme(4):-listar_filme_por_diretor,menu_filme.
opcoes_menu_filme(5):-listar_filme_por_genero,menu_filme.
opcoes_menu_filme(6):-menu_principal.



%inicio cadastro de filme
cadastrar_filme:-
write('Digite o nome do filme: '),
read(Nome),nl,
write('Digite o nome do genero: '),
read(Genero),nl,
write('Digite o nome do diretor: '),
read(Diretor),nl,
inserirFilme(Nome,Genero,Diretor),
writeln('Filme cadastrado com sucesso').


cadastrar_filme:-
writeln('Erro ao cadastrar filme').
%fim cadastro de filme



%inicio remover filme
remover_filme:-
write('Digite o nome do filme a ser apagado: '),
read(NomeFilme),nl,
apagarFilme(NomeFilme),
writeln('Filme apagado com sucesso').

remover_filme:-
writeln('Erro ao apagar Filme').
%fim remover filme


listar_todos_os_filmes:-mostrarFilmes.


listar_filme_por_diretor:-
write('Digite o nome do diretor: '),
read(NomeDiretor),nl,
listarFilmesPorDiretor(NomeDiretor).




listar_filme_por_genero:-
write('Digite o nome do genero: '),
read(NomeGenero),nl,
listarFilmesPorGenero(NomeGenero).



