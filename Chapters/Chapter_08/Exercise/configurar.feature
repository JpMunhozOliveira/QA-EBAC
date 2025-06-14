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
    Dado que eu tenha selecionado uma cor, tamanho e quantidade
    Quando eu clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: Configurar produto com quantidade máxima
    Dado que eu tenha selecionado uma cor, tamanho e quantidade de 10 produtos
    Quando eu clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: configurar produto com quantidade acima do máximo
    Dado que eu tenha selecionado uma cor, tamanho e quantidade de 11 produtos
    Quando eu clicar no botão "Comprar"
    Então deve ser exibida uma mensagem de erro informando que a quantidade máxima é 10

  Cenário: Limpar configurações do produto
    Dado que eu tenha selecionado uma cor, tamanho
    Quando eu clicar no botão "Limpar"
    Então as seleções de cor, tamanho devem voltar ao estado original
