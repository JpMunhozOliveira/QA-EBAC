#encoding: UTF-8
# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
    Dado que eu esteja na página de login da plataforma EBAC-SHOP

  Cenário: Login com sucesso
    Quando preencher o email com "fulano@ebac.com"
    E a senha com "teste@123"
    Então deve ser direcionado para a página de checkout

  Cenário: Login com falha
    Quando preencher o email com "fulanojhu@ebac.com"
    E a senha com "teste@ 123"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

  Esquema do Cenário: Login com múltiplos usuários
    Quando preencher os campos com "<email>" e "<senha>"
    Então deve o sistema exibir uma mensagem de alerta "<mensagem>"

    Exemplos:
      | email             | senha               | mensagem                          |
      | "joao@ebac.com"  | ""                  | "Preencha o campo de senha"       |
      | ""               | ""                  | "Preencha os campos obrigatórios" |
      | "jorge@ebac.com" | "##ygtyf455rdasd#2" | "Usuário ou senha incorretos"     |
      | "sofia@ebac.com" | "teste#123"         | "Login realizado com sucesso"     |
