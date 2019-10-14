#language: pt

Funcionalidade: Comprar reserva

    Sendo uma pessoa interessada em reservar uma viagem
    Posso preencher os campos de pesquisa
    Para realizar uma possível finalização da compra 

    @temp
    Cenário: Comprar uma reserva de Passagens Aéreas com sucesso

        Dado que preenchi todos os campos obrigatórios
        Quando realizar a pesquisa
        E escolher o primeiro resultado 
        E preencher os dados referente a passageiros
        E forma de pagamento com cartão de crédito
        E confirmo a compra da reserva
        Então visualizo a mensagem "Reserva em processamento."



