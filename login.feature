#language: pt

Funcionalidade: login
Como cliente da EBAC-SHOP
Quero entrar na minha conta
Para ver minhas meus pedidos

Contexto:
Dado que eu acesse a pagina de login

Cenario: Dados válidos
Quando eu digitar o usuario eduardo123@gmail.com
E a senha xxx123
Então deve se exibir a mensagem ''login valido''

Cenario: Dados inválidos
Quando eu digitar o usuário 'edrado23@yahoo.com.br'
E a senha 'yyy321'
Então deve se exibir a mensagem 'usuario ou senha inválidos'

Esquema do cenario:
Quando eu digitar o <usuario>
E a <senha>
Então deve ser exibida a <mensagem> correta

Exemplos:
|usuario|senha|mensagem|
|eduardo123@gmail.com|xxx123|login valido|
|edrado23@yahoo.com.br|yyy321|usuário ou senha inválidos|
|jorge222@hotmail.com|xyz324|usuário ou senha inválidos|