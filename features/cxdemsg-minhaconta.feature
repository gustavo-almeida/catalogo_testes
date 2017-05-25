#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da Caixa de Mensagem.

@blink
Cenário: CXDEMSG-MINHACONTA-0001 - Validar Caixa de mensagens
Dado que eu esteja em Minha Conta  
Quando eu clicar na opção Caixa de mensagens
Então é exibido a tela Caixa de mensagens com uma lista de mensagens e opção Voltar

@non-blink #não temos mensagens pré cadastradas
Cenário: CXDEMSG-MINHACONTA-0002 - Validar exibição da mensagem
Dado o usuário esteja na tela Caixa de mensagens 
Quando eu clicar em uma mensagem qualquer 
Então é exibido a tela da mensagem com o Título da tela Mensagem 
E título da mensagem 
E data e hora 
E conteúdo da mensagem 
E opção Voltar

@blink
Cenário: CXDEMSG-MINHACONTA-0003 - Voltar da Caixa de mensagens
Dado o usuário esteja na tela Caixa de mensagens 
Quando eu clicar na opção Voltar
Então é exibido tela Minha conta  