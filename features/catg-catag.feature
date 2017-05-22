#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da Cadastro de Categoria.

@blink
Cenário: CATG-CATAG-0001 - Validar menu de opções do Catálogo
Dado que eu tenha um produto cadastrado
E que eu esteja na tela de Catálogo
Quando eu clicar na opção '...' no cabeçalho
Então deve aparecer um menu com opções "Cadastrar produto", "Cadastrar categoria" e "Editar categoria"

@blink
Cenário: CATG-CATAG-0002 - Exibir opção de cadastrar categoria
Dado eu esteja na tela de Catálogo com o menu de opções (...) sendo exibido
Quando eu clicar na opção Cadastrar categoria
Então é exibido um modal Cadastrar categoria com campo para preenchimento 
E opções CANCELAR e CONTINUAR

@blink
Cenário: CATG-CATAG-0003 - Cancelar cadastro de categoria
Dado que eu esteja no modal de cadastrar categoria
Quando eu preencher o campo Categoria com dados válidos
E clicar em CANCELAR
Então a operação é cancelada
E o modal é fechado exibindo a tela de Catálogo

@blink
Cenário: CATG-CATAG-0004 - Validar obrigatoriedade do campo Categoria
Dado que eu esteja no modal de cadastrar categoria
Quando eu clicar em CONTINUAR sem prencher o campo Categoria
Então a operação é cancelada
E o modal é fechado exibindo mensagem "Nome de categoria inválido"

@blink
Cenário: CATG-CATAG-0005 - Cadastrar categoria
Dado que eu esteja no modal de cadastrar categoria
Quando eu preencher o campo Categoria com dados válidos
E clicar em CONTINUAR
Então a operação é concluída com sucesso
E a tela de Catálogo é exibida