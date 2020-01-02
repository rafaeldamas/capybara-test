describe 'Caixa de opções', :dropdown do 

  it 'selecionando uma opção' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    select('Loki', from: 'dropdown')
  end

  it 'selecionando uma opção com find' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3 
  end

  it 'selecionando uma opção randômica' do 
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option
  end

end