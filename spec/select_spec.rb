describe 'Select', :select do

    describe 'Simple', :simple do

        before(:each) do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end
    
        it 'Select an actor by name' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'Search an actor' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        end
    end

    describe 'Multiple', :multiple do
        before(:each) do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def selectActor (actor)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set actor
            find('.select2-results__option').click
        end

        it 'Select actors' do
            actors = ['Jim Carrey', 'Owen Wilson', 'Kevim James']

            actors.each do |a|
                selectActor(a)
            end
        end
    end
end