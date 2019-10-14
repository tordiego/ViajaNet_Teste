class SearchPage
    include Capybara::DSL
        def botao_comprar
            first('a[class="content-price-recommendation__btn-buy"]').click
        end
    end
