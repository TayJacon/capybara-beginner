describe 'Mouse over', :hovers do

    before(:each) do
        visit '/hovers'
    end

    it 'Blade card' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'Pantera negra card' do
        # card = find('img[alt="Pantera Negra"]')
        card = find('img[alt^=Pantera]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Homem Aranha card' do
        # card = find('img[alt="Homem Aranha"]')
        # card = find('img[alt$=Aranha]')
        card = find('img[alt*=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end


end