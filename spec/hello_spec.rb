describe 'My first script', :hello do
  before(:each) do
    page.current_window.resize_to(1280, 800)

  end
  it 'Visiting my first page' do
    visit '/' 
    puts page.title 
  end
end