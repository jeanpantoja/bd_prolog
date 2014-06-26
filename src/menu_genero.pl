
menu_genero:-
nl,
writeln('Menu Genero'),
writeln('1-Cadastrar Genero'),
writeln('2-Remover Genero'),
writeln('3-Listar todos os generos'),
writeln('4-Voltar para menu principal'),
write('Digite o numero da opcao desejada: '),
read(Opt),
opcoes_menu_genero(Opt),nl.

menu_genero:-
nl,writeln('Opcao invalida, tente novamente.'),
menu_genero.

opcoes_menu_genero(1):-cadastrar_genero,menu_genero.
opcoes_menu_genero(2):-remover_genero,menu_genero.
opcoes_menu_genero(3):-listar_todos_os_generos,menu_genero.
opcoes_menu_genero(4):-menu_principal.


cadastrar_genero:-
write('Digite o nome do genero: '),
read(Nome),nl,
inserirGenero(Nome),
writeln('Genero cadastrado com sucesso').

cadastrar_genero:-
writeln('Erro ao cadastrar genero').



remover_genero:-
write('Digite o nome do genero a ser apagado: '),
read(Nome),nl,
apagarGenero(Nome),
writeln('Genero apagado com sucesso').

remover_genero:-
writeln('Erro ao apagar genero').

listar_todos_os_generos:-mostrarGeneros.
