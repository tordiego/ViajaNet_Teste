class DadosPassageiro
    include Capybara::DSL
    def preencher_dados_passageiro
        page.driver.browser.switch_to.window(page.driver.browser.window_handles[1])
        find('input[id="my-account_email"]').click
        find('input[id="my-account_email"]').set 'diego@gmail.com'
        find('input[id="nome_0"]').set 'Diego'
        find('input[id="lastName_0"]').set 'Torres'
        find('input[id="birth_0"]').set '21121981'
        find('select[name="gender_0"] option[value="0"]').click
    end
   

end