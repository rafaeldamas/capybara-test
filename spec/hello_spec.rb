describe 'primeiro script' do

    it 'visitando a página' do
      visit 'https://training-wheels-protocol.herokuapp.com/'
      expect(page.title).to eql('Training Wheels Protocol')
    end

end
