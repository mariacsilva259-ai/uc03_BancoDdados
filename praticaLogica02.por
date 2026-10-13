programa {
  funcao inicio() {
    real km
    real litro
    real rendimento
    real preco
    real custokm
    real custo
    escreva("km rodados: ")
    leia(km)
    escreva("litros consumidos: ")
    leia(litro)
    escreva("Preço do litro: ")
    leia(preco)
     rendimento = km/litro
     custo = litro*preco
     custokm = custo/km
     escreva("\nRedimento: ", rendimento,"kmw/!")
     escreva("\nCusto do diesel:R$",custo)
     escreva("\nCusto por km",custokm)
     se(rendimento >= 0.8)
     {
     escreva("\nClassifcação:Eficiente")
  }
  senao se(rendimento >= 0.6 e custokm <= 9.0)
  {
    escreva("\nClassifcação: aceitavel")
  }
  senao
  {
    escreva("\nClassifcação: revisar caminhão")
  }
  }
}

