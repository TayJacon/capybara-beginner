describe 'My first script' do
    it 'Visiting my first page' do
      visit 'http://training-wheels-protocol.herokuapp.com/' 
      puts page.title 
    end
end