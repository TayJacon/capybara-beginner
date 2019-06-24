describe 'iframes', :iframes do

    describe 'Good one', :nice_iframe do
        before(:each) do
            visit '/nice_iframe'
        end

        it 'Add to cart' do
            within_frame('burgerId') do
                product = find('.menu-item-info-box', text: 'REFRIGERANTE')
                product.find('a').click

                expect(find('#cart')).to have_content 'R$ 4,50'
            end
        end
    end

    describe 'Bad one', :bad_iframe do
        before(:each) do
            visit '/bad_iframe'
        end

        it 'Add to cart' do
            page.execute_script('$(".box-iframe").attr("id", "tempId");')
            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end
        end
    end
end