menu_diretor:-
nl,
writeln('Menu Diretor'),
writeln('1-Cadastrar Diretor'),
writeln('2-Remover Diretor'),
writeln('3-Listar Todos os Diretores'),
writeln('4-Voltar para menu principal'),
write('Digite o numero da opcao desejada: '),
read(Opt),
opcoes_menu_diretor(Opt),nl.

menu_diretor:-
nl,writeln('Opcao invalida, tente novamente.'),
menu_diretor.

opcoes_menu_diretor(1):-cadastrar_diretor,menu_diretor.
opcoes_menu_diretor(2):-remover_diretor,menu_diretor.
opcoes_menu_diretor(3):-listar_todos_os_diretores,menu_diretor.
opcoes_menu_diretor(4):-menu_principal.



cadastrar_diretor:-
write('Digite o nome do diretor: '),
read(Nome),nl,
inserirDiretor(Nome),
writeln('Diretor cadastrado com sucesso').

cadastrar_diretor:-
writeln('Erro ao cadastrar diretor').



remover_diretor:-
write('Digite o nome do diretor a ser apagado: '),
read(Nome),nl,
apagarDiretor(Nome),
writeln('Diretor apagado com sucesso').

remover_diretor:-
writeln('Erro ao apagar diretor').

listar_todos_os_diretores:-mostrarDiretores.
