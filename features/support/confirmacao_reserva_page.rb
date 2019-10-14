class ConfirmacaoReserva
    include Capybara::DSL
    def confirmar_reserva
        find('button[class="btn-default ng-scope"]').click 
    end
   

end