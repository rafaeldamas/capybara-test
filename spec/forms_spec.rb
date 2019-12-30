describe 'Formulários' do

  it 'login com sucesso' do 
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'username', with: 'stark'
    fill_in 'password', with: 'jarvis!'

    click_button 'Login'

    expect(find('#flash').visible?).to be(true)
    expect(find('#flash').text).to include('Olá, Tony Stark. Você acessou a área logada!') 
    
  end

  it 'falha no login' do 
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'username', with: 'stark123'
    fill_in 'password', with: 'jarvis!123'

    click_button 'Login' 

    expect(find('#flash').visible?).to be(true)
    expect(find('#flash').text).to include('O usuário informado não está cadastrado!') 

  end

  it 'login sem senha' do 
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'username', with: 'stark'
    fill_in 'password', with: '1234'

    click_button 'Login'

    expect(find('#flash').visible?).to be(true)
    expect(find('#flash').text).to include('Senha é invalida!')

  end

  it 'login em branco' do 
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'username', with: ''
    fill_in 'password', with: ''

    click_button 'Login'

    expect(find('#flash').visible?).to be(true)
    expect(find('#flash').text).to include('O usuário informado não está cadastrado!')

  end

end
