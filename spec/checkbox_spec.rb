describe 'Checkbox', :checkbox do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'Checkinh an option' do
        check('thor')
    end

    it 'Unchecking an option' do
        uncheck('ant-man')
    end

    it 'Checking an option using find' do
        find('input[value=cap]').set(true)
    end

    it 'Unchecking an option using find' do
        find('input[value=guardians]').set(false)
    end
end