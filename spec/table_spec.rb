describe 'Table', :tabs do

    before(:each) do
        visit '/tables'
    end

    it 'Should display the Roberts salary' do
        actors = all('table tbody tr')

        stark = actors.detect{ |actor| actor.text.include?('Robert Downey Jr')}
        expect(stark.text).to include '10.000.000'
    end

    it 'Should disply the Vin Diesels salary' do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'Should display the film: Velozes e Furiosos' do
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text

        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'Should display Chris Evans instagram' do
        chris = find('table tbody tr', text: 'Chris Evans')
        instagram = chris.all('td')[4].text

        expect(instagram). to eql '@teamcevans'
    end

    it 'Should remove Chris Pratt' do
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'delete').click
        message = page.driver.browser.switch_to.alert.text
        
        expect(message). to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'Should edit Chris Pratt' do
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'edit').click
        message = page.driver.browser.switch_to.alert.text
        
        expect(message). to eql 'Chris Pratt foi selecionado para edição!'
    end
end