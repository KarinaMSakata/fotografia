require 'rails_helper'

describe 'Usuário visita página sobre mim' do
  it 'e vê informações adicionais' do
    visit root_path
    click_on 'Vem me conhecer'

    expect(page).to have_text 'Oi, meu nome é Karina!'
  end


end