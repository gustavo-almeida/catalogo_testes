#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de Keyboard.

@blink
Cenário: KEYBOARD-0001 - Habilitar botão Pagar
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1000"
Então o valor "R$ 10,00" deve ser exibido no display 
E o botão Pagar deve exibir "Pagar R$10,00" e ficar habilitado

@blink
Cenário: KEYBOARD-0002 - Desabilitar botão Pagar
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1000"
E eu tocar '4' vezes na função 'BCK' do teclado virtual
Então o valor "R$ 0,00" deve ser exibido no display
E o botão Pagar deve estar desabilitado

@blink
Cenário: KEYBOARD-0003 - Habilitar botão Pagar R$999.999,99
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '8' vezes no número '9' do teclado virtual
Então o valor "R$ 999.999,99" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$999.999,99" e ficar habilitado

@blink
Cenário: KEYBOARD-0004 - Validar limpar valores no display 
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '9' vezes no número '9' do teclado virtual 
E eu tocar '9' vezes na função 'BCK' do teclado virtual
Então o valor "R$ 0,00" deve ser exibido no display
E o botão Pagar deve estar desabilitado

@blink
Cenário: KEYBOARD-0005 - Validar limite de caracteres no display
Dado que eu esteja na tela inicial da Cielo LIO 
Quando eu tocar '15' vezes no número '9' do teclado virtual
Então o valor "R$ 9.999.999,99" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$ 9.999.999,99" e ficar habilitado

@blink
Cenário: KEYBOARD-0006 - Validar botão Pagar R$95,57
Dado que eu esteja na tela inicial da Cielo LIO 
Quando eu entrar pelo teclado virtual com o valor "9557"
Então o valor "R$ 95,57" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$ 95,57" e ficar habilitado

@blink
Cenário: KEYBOARD-0007 - Validar exclusão de caractere
Dado que eu esteja na tela inicial da Cielo LIO  
Quando eu entrar pelo teclado virtual com o valor "955"
E tocar na função 'BCK' do teclado virtual
Então o valor "R$ 0,95" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$ 0,95" e ficar habilitado

@blink
Cenário: KEYBOARD-0008 - Long Press na função BCK
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "9559"
E fizer on Long Press na função 'BCK' do teclado virtual
Então o valor "R$ 0,00" deve ser exibido no display
E o botão Pagar deve estar desabilitado

@blink
Cenário: KEYBOARD-0009 - Validar valor total acima do limite
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '9' vezes no número '9' do teclado virtual
E tocar na função 'Qtd'
E tocar no número '2'
E tocar no botão Pagar
Então uma mensagem de Atenção com mensagem "Não é possível enviar um valor maior do que 9.999.999,99."
E com opção FECHAR

@blink
Cenário: KEYBOARD-0010 - Validar valor limite usando função Enter
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '9' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
E tocar no número '1'
E tocar no botão Pagar
Então uma mensagem de Atenção é exibida "Não é possível enviar um valor maior do que 9.999.999,99."
E com opção FECHAR

@blink
Cenário: KEYBOARD-0011 - Validar ícone de carrinho
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '2' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
Então o valor "R$ 0,00" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$ 0,99" e ficar habilitado
E o ícone carrinho deve exibir um círculo vermelho com o número '1'

@blink
Cenário: KEYBOARD-0012 - Validar multiplicador do carrinho
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '2' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
E eu tocar '2' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
Então o valor "R$ 0,00" deve ser exibido no display
E o botão Pagar deve exibir "Pagar R$ 1,98" e ficar habilitado
E o ícone carrinho deve exibir um círculo vermelho com o número '2'

@blink
Cenário: KEYBOARD-0013 - Validar mensagem "Deseja limpar o carrinho?"
Dado que eu esteja na tela inicial da Cielo LIO
Quando tocar no número '1'
E tocar na função 'Enter'
E tocar na função 'BCK'
Então uma mensagem é exibida "Deseja limpar o carrinho?"
E com opções NÃO e SIM

@blink
Cenário: KEYBOARD-0014 - Cancelar limpeza de carrinho
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '2' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
E eu tocar '3' vezes no número '1' do teclado virtual
E tocar na função 'Enter'
E tocar na função 'BCK'
E eu toque na opção NÃO no mensagem exibida
Então o pedido é mantido
E a mensagem é fechada
E o botão Pagar deve exibir "Pagar R$ 2,10" e ficar habilitado
E o ícone carrinho deve exibir um círculo vermelho com o número '2'

@blink
Cenário: KEYBOARD-0015 - Confirmar limpeza de carrinho
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu tocar '2' vezes no número '9' do teclado virtual
E tocar na função 'Enter'
E eu tocar '3' vezes no número '1' do teclado virtual
E tocar na função 'Enter'
E tocar na função 'BCK'
E eu toque na opção SIM no mensagem exibida
Então o pedido é cancelado
E a mensagem é fechada
E o botão Pagar deve estar desabilitado
E o ícone carrinho não deve exibir um círculo vermelho

@blink
Cenário: KEYBOARD-0016 - Validar função Qtd
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1015"
E tocar na função 'Qtd'
E tocar no número '2'
Então o valor "R$ 10,15 x 2" deve ser exibido no display
Mas o botão Pagar deve exibir "Pagar R$ 20,30" e ficar habilitado