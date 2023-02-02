require 'rails_helper'

describe 'Usuário envia uma mensagem' do
  it 'a partir da tela de contato' do
    visit root_path
    click_on 'Vamos conversar?'

    expect(page).to have_content 'Contato'
    expect(page).to have_field 'Nome'
    expect(page).to have_field 'E-mail'
    expect(page).to have_field 'Mensagem'
    expect(page).to have_button 'Enviar'
    expect(page).to have_content 'E-mail: karina.msakata@hotmail.com'
    expect(page).to have_content 'Endereço: Sorocaba/SP'
    expect(page).to have_content 'Telefone: (15) 9 8129-6577'
  end

  it 'com sucesso' do
    visit root_path
    click_on 'Vamos conversar?'
    fill_in 'Nome', with: 'Ana'
    fill_in 'E-mail', with: 'ana@gmail.com'
    fill_in 'Mensagem', with: 'Olá! Gostaria de saber mais sobre seu trabalho.'
    click_on 'Enviar'

    expect(page).to have_content 'Mensagem enviada com sucesso!'
  end

  it 'com dados incompletos' do
    visit root_path
    click_on 'Vamos conversar?'
    fill_in 'Nome', with: ''
    fill_in 'E-mail', with: ''
    fill_in 'Mensagem', with: ''
    click_on 'Enviar'

    expect(page).to have_content 'Não foi possível enviar a mensagem. Por favor, verifique os erros abaixo.'
    expect(page).to have_content 'Nome não pode ficar em branco'
    expect(page).to have_content 'E-mail não pode ficar em branco'
    expect(page).to have_content 'Mensagem não pode ficar em branco'
  end
end
