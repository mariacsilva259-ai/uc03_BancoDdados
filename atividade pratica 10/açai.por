programa {
  funcao real calcularPrecoCopo(inteiro tamanho, inteiro adicionais){
    real base
    se(tamanho == 300){
      base = 12.0
    }senao{
      se (tamanho == 500){
        base = 18.0
      }senao{
        base = 24.0
      }
    }
    retorne base + adicionais * 3.0
  }
  funcao real aplicarDesconto(real valor, real percentual){
    retorne valor - (valor * percentual / 100.0)
  }
  funcao logico temFreteGratis(real subTotal){
    retorne subTotal >= 35.0
  }
  funcao real calcularFrete(real distancia){
    se (distancia <= 3.0){
      retorne 5.0
    }
    se (distancia <= 8.0){
      retorne 8.0
    }
    retorne 12.0
  }
  funcao real calcuarTroco(real total, real pago){
    retorne pago - total
  }
  funcao vazio exibirCabecalho(){
    escreva("==============\n")
    escreva("AÇAI DO BIU  \n")
    escreva("==============\n")
  }
  funcao vazio exibirRecibo(cadeia cliente, real subtotal, real frete, real valorTotal){
    escreva("\n---- recibo: ", cliente, "-----\n")
    escreva("\n---- subTotal: ", subtotal, "-----\n")
    escreva("\n---- frete: ", frete, "-----\n")
    escreva("\n---- total: ", valorTotal, "-----\n")
  }
  funcao inicio() {
    cadeia cliente
    inteiro quantidade, tamanho, adicionais
    real distancia, cupom, pago
    real subTotal, frete, total
    exibirCabecalho()
    escreva("quantos pedidos? ")
    leia(quantidade)
    para(inteiro i = 1; i <= quantidade; i++){
      escreva("\n==== Pedido ",i,"===\n")
      escreva("cliente: ")
      leia(cliente)
      escreva("tamanho do pote(300, 500 ou 700ml): ")
      leia(tamanho)
      escreva("distancia da entrega (km): ")
      leia(distancia)
      escreva("cupom de desconto em %(0 se não tem desconto): ")
      leia(cupom)
      escreva(" quantidade de adicionais: ")
      leia(adicionais)
      subTotal = aplicarDesconto(calcularPrecoCopo(tamanho, adicionais), cupom)
      se(temFreteGratis(subTotal)){
      frete = 0.0
    }senao{
      frete = calcularFrete(distancia)
    }
    total = subTotal + frete
    exibirRecibo(cliente, subTotal, frete, total)
    escreva("valor pago (pix/ dinheiro): ")
    leia(pago)
    se(pago >= total){
      escreva("troco R$: ", calcuarTroco(total, pago), "\n")
    }senao{
    escreva("pagamento insuficiente faltam R$ ", total - pago, "\n")
    }
    }
  }
}
