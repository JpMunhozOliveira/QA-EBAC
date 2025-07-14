#encoding: UTF-8
# language: pt
Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto:
    Dado que eu esteja na página de um produto da plataforma EBAC-SHOP

  Cenário: Configurar produto
    E definir uma cor, tamanho e quantidade
    Quando clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: Configurar produto com quantidade máxima
    E definir uma cor, tamanho e quantidade em 10 produtos
    Quando clicar no botão "Comprar"
    Então os produtos devem ser adicionados ao carrinho com as configurações selecionadas

  Cenário: configurar produto com quantidade acima do máximo
    E definir uma cor, tamanho e quantidade em 11 produtos
    Quando clicar no botão "Comprar"
    Então o sistema deve exibir uma mensagem de erro informando que a quantidade máxima é 10

  Cenário: Limpar configurações do produto
    E definir uma cor, tamanho e quantidade
    Quando clicar no botão "Limpar"
    Então as seleções de cor, tamanho e quantidade devem voltar ao estado original
