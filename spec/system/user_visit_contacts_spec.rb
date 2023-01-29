require 'rails_helper'

describe 'Usuário visita página de contatos' do
  it 'e vê detalhes para contato' do
    visit root_path
    click_on 'Vamos conversar?'

    expect(page).to have_content 'Contato'
    expect(page).to have_field 'Nome'
    expect(page).to have_field 'E-mail'
    expect(page).to have_field 'Mensagem'
    expect(page).to have_button 'Enviar'

  end
end
