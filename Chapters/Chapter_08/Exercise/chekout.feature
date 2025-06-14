#encoding: UTF-8
# language: pt
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Contexto:
    Dado que eu esteja na página de cadastro da plataforma EBAC-SHOP

  Esquema do Cenário: Cadastro de cliente
    Dado que eu tenha preenchido o campo "Nome" com <nome>
    E eu tenha preenchido o campo "Sobrenome" com <sobrenome>
    E eu tenha preenchido o campo "Pais" com <pais>
    E eu tenha preenchido o campo "endereço" com <endereco>
    E eu tenha preenchido o campo "Cidade" com <cidade>
    E eu tenha preenchido o campo "CEP" com <cep>
    E eu tenha preenchido o campo "Telefone" com <telefone>
    E eu tenha preenchido o campo "Endereço  de E-mail" com <email>
    Então deve ser exibida a mensaagem de alerta "<mensagem>"

    Exemplos:
      | nome  | sobrenome | pais   | endereco   | cidade         | cep       | telefone        | email               | mensagem                                             |
      | João  | Silva     | Brasil | Rua A, 123 | São Paulo      | 12345-678 | (11) 91234-5678 | joao@ebac.com       | "Cadastro realizado com sucesso"                     |
      | Ana   | Souza     | " "    | Rua B, 456 | " "            | 23456-789 | (21) 98765-4321 | ana@gmail.com       | "Todos os campos obrigatórios devem ser preenchidos" |
      | Maria | Oliveira  | Brasil | Rua C, 789 | Belo Horizonte | 34567-890 | (31) 99876-5432 | asdasdasd@mfkam.com | "O e-mail inserido é inválido"                       |
