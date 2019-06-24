describe 'Drag and Drop', :drop do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Spiderman belongs to stark team' do
        spiderQuery = 'img[alt$=Aranha]'
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')
        spiderman = find(spiderQuery)

        spiderman.drag_to stark

        expect(stark).to have_css spiderQuery
        expect(cap).not_to have_css spiderQuery
    end

end