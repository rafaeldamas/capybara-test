describe 'Caixa de seleções', :checkbox do 

  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
  end

  it 'marcando uma opção' do 
    check('thor')
  end

  it 'desmarcando uma opção' do 
    uncheck('antman')
  end

  it 'marcando uma opção com find set true pelo value' do 
    find('input[value=cap]').set(true)
  end

  it 'desmarcando uma opção com find set false pelo value' do 
    find('input[value=guardians]').set(false)
  end

  after(:each) do 
    sleep 3
  end

end
