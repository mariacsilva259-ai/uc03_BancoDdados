/**
 * O programa recebe a quantidade de caixas, o peso, a temperatura
 * calcula o peso total os paletes completos , 
 * as caixas restantes e verifica se o carregamento pode ser lberado.
 */
programa {
  funcao inicio() {
    inteiro quantidadeCaixa
    real temperatura
    real pesoTotal
    inteiro paletes
    inteiro sobra
    escreva ("quantidade de caixas?")
    leia(quantidadeCaixa)
    escreva("peso das caixas?")
    leia(pesoTotal)
    escreva("temperatura da camara?")
    leia(temperatura)
     pesoTotal = quantidadeCaixa * pesoTotal
     paletes  = quantidadeCaixa / 40
     sobra = quantidadeCaixa % 40
     escreva("\n pesoTotal", pesoTotal,"kg")
     escreva("\n paletes completos", paletes)
     escreva("\n total de caixas que sobraram",sobra)
     se(temperatura >- 18){
      escreva("carregamento bloqueado, câmara acima de −18 °C!")
      se(paletes == 0){
      escreva("nenhum palete completo.")
      se(temperatura <= 18){
        escreva("Carregamento liberado!")
      }
      }
     }
  }
}
