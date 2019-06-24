describe 'Dynamic Control', :dc do

    before(:each) do
        visit '/dynamic_controls'
    end

    it 'Enable field' do
        # when has the property disable true the field is disable
        # when doesn't has the property disable the field is enable
        res = page.has_field? 'movie', disabled: true
        puts res
        
        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false
        puts res
    end

end