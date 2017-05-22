#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de Edição de Categoria.

@blink
Cenário: EDCATG-CATAG-0001 - Exibir tela Editar categoria
Dado eu esteja na tela de Catálogo com o menu de opções (...) sendo exibido
Quando eu clicar na opção Editar categoria
Então é exibida a tela de Editar categoria com lista de categorias cadastradas
E opção Cancelar (x)

@blink
Cenário: EDCATG-CATAG-0002 - Cancelar edição de categoria
Dado que eu esteja na tela de Editar categoria
Quando eu clicar na opção Cancelar 
Então a operação é cancelada
E é exibida a tela de catálogo com seus produtos listados

@blink
Cenário: EDCATG-CATAG-0003 - Exibir opções extras na edição de categoria
Dado que eu esteja na tela de Editar categoria
Quando eu selecionar alguma categoria
Então são exibidas as opções Excluir e Editar

@blink
Cenário: EDCATG-CATAG-0004 - Cancelar edição de categoria após seleção
Dado que eu esteja na tela de Editar categoria
Quando eu selecionar alguma categoria
E clicar em Cancelar 
Então a operação é cancelada
E é exibida a tela de catálogo com seus produtos listados

@blink
Cenário: EDCATG-CATAG-0005 - Iniciar edição de categoria
Dado que eu esteja na tela de Editar categoria
E com uma categoria selecionada
Quando eu clicar em Editar
Então um campo para edição do nome é exibido
Mas com opções Cancelar e Confirmar

@blink
Cenário: EDCATG-CATAG-0006 - Iniciar exclusão de categoria
Dado que eu esteja na tela de Editar categoria
E com uma categoria com produtos associados selecionada
Quando eu clicar em Excluir
Então é exibido um alerta dizendo essa ação irá deletar também os produtos com opções NÃO e SIM

@blink
Cenário: EDCATG-CATAG-0007 - Cancelar exclusão de categoria
Dado que eu esteja na tela de confirmação de exclusão de categoria associada
Quando eu clicar em NÃO
Então a operação é cancelada
E volto para a lista de categorias cadastradas

@blink
Cenário: EDCATG-CATAG-0008 - Confirmar exclusão de categoria
Dado que eu esteja na tela de confirmação de exclusão de categoria associada
Quando eu clicar em SIM
Então a operação é concluída
E volto para a lista de categorias cadastradas