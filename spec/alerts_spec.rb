describe 'JS alerts', :alerts do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end

    it 'Alert' do
        click_button 'Alerta'

        message = page.driver.browser.switch_to.alert.text
        expect(message).to eql 'Isto é uma mensagem de alerta'
    end

    it 'Confirm' do
        click_button 'Confirma'

        message = page.driver.browser.switch_to.alert.text
        expect(message).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'Not confirm' do
        click_button 'Confirma'

        message = page.driver.browser.switch_to.alert.text
        expect(message).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'Prompt', :accept_prompt do
        accept_prompt(with: 'Taynara') do
            click_button 'Prompt'
        end
        
        expect(page).to have_content 'Olá, Taynara'
    end

    it 'Prompt', :dismiss_prompt do
        dismiss_prompt() do
            click_button 'Prompt'
        end
        
        expect(page).to have_content 'Olá, null'
    end
end