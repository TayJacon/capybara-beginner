describe 'Key presses', :key do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'Sendind keys' do
        keys = %i[tab escape enter shift control alt]

        keys.each do |k|
            find('#campo-id').send_keys k
            expect(page).to have_content 'You entered: ' + k.to_s.upcase
        end
    end

    it 'Sending letter' do
        letters = %w[a s d f g h j k l]

        letters.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end
end