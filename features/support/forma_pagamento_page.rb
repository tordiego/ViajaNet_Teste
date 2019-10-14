class FormaPagamento
    include Capybara::DSL
    def preencher_forma_de_pagamento
        find('select[name="flag_card"] option[value="VI"]').click
        find('input[id="number_card-0"]').set '4485352569880900'
        find('input[id="name_card-0"]').set 'Diego Torres'
        find('select[name="month-0"] option[value="07"]').click
        find('select[name="year-0"] option[value="2021"]').click
        find('input[id="cpf_card-0"]').set '12194311173'
        find('input[id="codesecure_card-0"]').set '230'
        #Endereço da fatura do cartão
        find('input[id="zipcode-0"]').set '09854020'
        find('input[id="zipcode-0"]').send_keys:tab
        sleep 3
        find('input[id="number_address-0"]').set '106'
        find('input[id="contact_email"]').set 'diego@gmail.com'
        find('input[id="contact_email_confirm"]').set 'diego@gmail.com'
        find('input[id="contact_phonenumber_0"]').set '11900000000'
        find('input[id="accept-checkout"]').click
    end
   

end
    