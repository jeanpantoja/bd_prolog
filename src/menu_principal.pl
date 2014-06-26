
menu_principal:-
nl,
writeln('Menu principal'),
writeln('1-Menu Diretor'),
writeln('2-Menu Genero'),
writeln('3-Menu Filme'),
writeln('4-Sair'),
write('Digite o numero da opcao desejada: '),
read(Opt),
opcoes_menu_principal(Opt),nl.

menu_principal:-
nl,writeln('Opcao invalida, tente novamente.'),
menu_principal.

opcoes_menu_principal(1):-menu_diretor.
opcoes_menu_principal(2):-menu_genero.
opcoes_menu_principal(3):-menu_filme.
opcoes_menu_principal(4):-writeln('saindo..'),halt.


