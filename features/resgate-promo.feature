#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de utilizar a extensão PROMO

@blink
Cenário: RESGATE-PROMO-0001 - Validar Mensagem Resgate não efetuado com o botão Cancelar  
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
E clicar em Confirmar
Então a tela de Resgate de Prêmios com as opções 'Não' e 'Sim' deve ser exibida
Quando eu clicar em 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '1' na página de seleção de quantidade de cupons
E clicar em Cancelar
Então devo voltar para a tela de seleção de E-Cupom
Quando clicar em Cancelar na página de seleção de E-Cupom
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a tela inicial

@blink
Cenário: RESGATE-PROMO-0002 - Validar botão Fechar (X) do Resgate
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
E clicar em Confirmar
Então a tela de Resgate de Prêmios com as opções 'Não' e 'Sim' deve ser exibida
Quando eu clicar em 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '1' na página de seleção de quantidade de cupons
E clicar no botão Fechar 'X' no cabeçalho
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a tela inicial