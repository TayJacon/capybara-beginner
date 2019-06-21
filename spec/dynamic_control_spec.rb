describe 'Dynamic Control', :dc do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'Enable field' do
        # when has the property disable true the field is disable
        # when doesn't has the property disable the field is enable
        res = page.has_field? 'movie', disabled: true
        puts res
        
        click_button 'Enable'

        res = page.has_field? 'movie', disabled: false
        puts res
    end

end