#language: pt

Funcionalidade: Configurar produto
como cliente da EBAC-SHOP
quero configurar meu produto de acordo com meu tamanho e gosto
escolher a quantidade
Para depois inserir no carrinho 

Contexto:
Dado que eu acesse a pagina de configuração do meu produto

Cenario: Seleção de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar cor, tamanho e quantidade
E escolher a quantidade menor do que 10
Então deve aparecer a mensagem 'integrado ao carrinho'

Cenario: limite de 10 produtos por venda
Quando eu selecionar cor, tamanho e quantidade
E escolher a quantidade maior do que 10
Então deve aparecer a mensagem de alerta: 'quantidade maxima de 10 produtos'

Cenario: Quanto eu clicar no botão 'limpar' deve voltar ao estado original
Quando eu selecionar cor,tamanho e quantidade
E selecionar a opção de 'limpar'
Entao deve se esvaziar os filtros

Esquema do Cenário:
Quando eu selecionar os <filtros>
E a <quantidade>
Então deve aparecer a <mensagem> de integrado ao carrinho

Exemplos:
|filtros|quantidade|mensagem|
|vermelho,M|4|integrado ao carrinho|
|rosa,P|5|integrado ao carrinho|
|preto,G|2|integrado ao carrinho|