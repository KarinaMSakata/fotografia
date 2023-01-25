require  'rails_helper'

describe 'Usuário visita tela inicial' do
  it 'e vê o nome da app' do
    visit root_path
    
    within 'nav' do
      expect(page).to have_content('Galeria')
      expect(page).to have_content('Vem me conhecer')
      expect(page).to have_content('Vamos conversar?')
    end
  end 


end