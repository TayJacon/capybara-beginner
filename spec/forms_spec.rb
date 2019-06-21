describe 'Forms' do

    it 'Sucess login' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'
        
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Wrong password' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'test!'

        click_button 'Login'
        
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'Uset not register' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'username', with: 'abc'
        fill_in 'password', with: 'test!'

        click_button 'Login'
        
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end