#utf:8

Dado("que preenchi todos os campos obrigatórios") do
    visit 'https://www.viajanet.com.br/'
    @home_page = HomePage.new
    @home_page.preencher_campos_tela_de_passagens_aereas
      
  end
  
Quando("realizar a pesquisa") do
  @home_page.botao_pesquisar
  end
  
Quando("escolher o primeiro resultado") do
    search_page = SearchPage.new
    search_page.botao_comprar 

  end
  
Quando("preencher os dados referente a passageiros") do
    dados_passageiro = DadosPassageiro.new
    dados_passageiro.preencher_dados_passageiro

  end
  
Quando("forma de pagamento com cartão de crédito") do
    forma_pagamento = FormaPagamento.new
    forma_pagamento.preencher_forma_de_pagamento

  end
  
Quando("confirmo a compra da reserva") do
    reserva_page = ConfirmacaoReserva.new
    reserva_page.confirmar_reserva
  end
  
Então("visualizo a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end