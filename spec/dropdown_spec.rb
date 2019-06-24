# tag = , :tagName
describe 'Dropdown', :dropdown do

    before(:each) do
        visit '/dropdown'
    end

    it 'Specific item' do
        select('Loki', from: 'dropdown')
    end

    it 'Specific item using find' do
        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option
    end

    it 'Select random item' do
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end