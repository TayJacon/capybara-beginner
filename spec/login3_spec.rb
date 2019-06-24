describe 'Login 2', :login3 do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'Success login' do
        # scope

        # login_form = find('#login')
        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(page).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Success register', :account do
        within('#signup') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            find('.btn-primary').click
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end