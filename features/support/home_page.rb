
class HomePage
    include Capybara::DSL
    def preencher_campos_tela_de_passagens_aereas
        find('a[class="btn-close-modal"]').click
        find('input[id=inptorigin]').set 'São Paulo, Brasil - (SAO - Todos os Aeroportos)'
        find('input[id=inptorigin]').send_keys:tab
        find('input[id=inptdestination]').click
        find('input[id=inptdestination]').set 'Curitiba'
        sleep 1
        find('input[id=inptdestination]').send_keys:enter
        sleep 1
        find('input[id=inptdestination]').send_keys:tab
        sleep 1
        find('div[class="day-20112019"]').click
        find('div[class="day-22112019"]').click
    end

    def botao_pesquisar
        find('button[class*="btn-default btn-submit"]').click
    end

end
    