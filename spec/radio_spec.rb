describe 'Radio', :radio do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Selecting an option' do
        choose('cap')
    end

    it 'Selection an option using find' do
        find('input[value=guardians]').click
    end
end