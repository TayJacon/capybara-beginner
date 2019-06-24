describe 'Dinamyc ids', :dynamic_id do

    before(:each) do
        visit '/access'
    end

    it 'Register' do
        find('input[id$=UsernameInput]').set 'Taynara'
        find('input[id^=PasswordInput]').set '1234567890'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end