describe 'Upload', :upload do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @file = Dir.pwd + '/spec/files/arquivo.txt'
        @image = Dir.pwd + '/spec/files/image.png'
    end

    it 'Upload txt file' do
        attach_file('file-upload', @file)
        click_button 'file-submit'

        div_file = find('#uploaded-file')
        expect(div_file.text).to eql 'arquivo.txt'
    end

    it 'Upload image' do
        attach_file('file-upload', @image)
        click_button 'file-submit'

        sleep 5
        img = find('#new-image')
        expect(img[:src]).to include 'image.png'
    end
end