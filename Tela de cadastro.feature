#language: pt

Funcionalidade: Cadastro na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero concluir o meu Cadastro
Para finalizar minhas compras

Contexto:
Dado que eu acesse a pagina de Cadastro

Cenario: Cadastro válido
Quando eu preencher todos os campos Obrigatórios corretamente
E clicar em 'finalizar compra'
Então deve aparecer a mensagem 'compra finalizada'

Cenario: Cadastro inválido
Quando eu preencher o campo e-mail com formato incorreto
E clicar em 'finalizar compra'
Então deve exibir uma mensagem de 'e-mail inválido'

Cenario: Cadastro vazio
Quando eu deixar os campos em branco
E clicar em 'finalizar compra'
Então deve exibir uma mensagem de 'preencha os campos obrigatórios'

Esquema do Cenario
Quando eu preencher todos os <campos>
E clicar em <finalizar compra>
Então deve exibir uma <mensagem>
|campos|finalizar compra|mensagem
|preenchidos|permissão|compra finalizada|
|e-mail fora do formato|sem permissão|e-mail inválido|
|nenhum campo preenchido|sem permissão|preencha os campos obrigatórios|
|apenas alguns campos preenchidos|sem permissão|preencha os campos obrigatórios|