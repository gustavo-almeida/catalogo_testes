#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da calculadora.

@blink
Cenário: PROD-CATAG-0001 - Validar catálogo quando não há produtos cadastrados
Dado que não tenha nenhum produto cadastrado
Quando eu entrar na tela de catálogo
Então é exibida a mensagem de "Não há itens cadastrados" e botão Cadastrar

@blink
Cenário: PROD-CATAG-0002 - Validar tela de cadastro de produto
Dado que eu esteja na tela de catálogo sem nenhum produto cadastrado 
Quando eu clicar em Cadastrar
Então deve ser exibido a tela de cadastrar produto

@blink
Cenário: PROD-CATAG-0003 - Cancelar cadastro de produto
Dado que eu esteja na tela de cadastrar produto
Quando eu clicar no botão de cancelar (x)
Então a tela de catálogo deve ser exibida

@blink
Cenário: PROD-CATAG-0004 - Validação de campos em branco tela de cadastro de protudo
Dado que eu esteja na tela de cadastrar produto
E não tenha preenchido nenhum dos campos
Quando eu clicar em Confirmar (check)
Então a mensagem de "Preencha todos os campos obrigatórios" deve ser exibida
 
@blink
Cenário: PROD-CATAG-0005 - Cadastro de produto com dados mínimos
Dado que eu esteja na tela de cadastrar produto
Quando eu preencher os campos obrigatórios (Produto, Preço e Categoria)
E clicar em Confirmar (check)
Então deve ser exibida a tela de catálogo com o produto listado

@blink
Cenário: PROD-CATAG-0006 - Cadastro de produto com todos os dados
Dado que eu esteja na tela de cadastrar produto
E que eu prencha todos os campos disponíveis
Quando eu clicar em Confirmar (check)
Então deve ser exibida a tela de catálogo com o produto listado

@blink
Cenário: PROD-CATAG-0007 - Cadastro de produto com código de barras
Dado que eu esteja na tela de cadastrar produto
Quando eu preencher o Código de barras com '123'
Então deve ser exibida a tela de catálogo com o produto listado

@blink
Cenário: PROD-CATAG-0008 - Produto com código de barras existente
Dado que eu tenha um produto cadastrado com código de barras '123'
E que eu esteja na tela de cadastrar produto
Quando eu preencher o Código de barras com '123'
E clicar em Confirmar
Então deve ser exibido um modal com mensagem "Já existe um produto com este código de barras. Tente novamente."
E opção FECHAR

@blink
Cenário: PROD-CATAG-0009 - Validar leitor de código de barras
Dado que eu tenha algum produto cadastrado
E que eu esteja na tela de Catálogo
Quando eu clicar na opção de barcode (Código de barras)
Então deve ser aberto a câmera para escanear o código de barra

@blink
Cenário: PROD-CATAG-0010 - Ler código de barras de produto ainda não cadastrado
Dado que eu tenha algum produto cadastrado
E que eu esteja na tela de Catálogo
Quando eu escanear um código de barra de um produto não cadastrado
Então deve ser exibido um modal com a mensagem de "Item não encontrado. Deseja cadastrar?"
E opções 'NÃO' e 'SIM'

@blink
Cenário: PROD-CATAG-0011 - Cancelar leitura de código de barras
Dado que eu tenha escaneando um código de barra de um produto não cadastrado pelo Catálogo
Quando clicar na opção 'NÃO' do modal de confirmação
Então a operação é cancelada e deve ser exibida a tela de catálogo

@blink
Cenário: PROD-CATAG-0012 - Confirmar leitura de código de barras
Dado que eu tenha escaneando um código de barra de um produto não cadastrado pelo Catálogo
Quando clicar na opção 'SIM' do modal de confirmação
Então deve ser exibida a tela de cadastrar produto
Mas com o campo Código de barras preenchido com o código escaneado