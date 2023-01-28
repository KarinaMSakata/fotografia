require 'rails_helper'

describe 'Usuário visita tela inicial' do
  it 'e vê o nome da app' do
    visit root_path
    
    within 'nav' do
      expect(page).to have_content('Galeria')
      expect(page).to have_content('Vem me conhecer')
      expect(page).to have_content('Vamos conversar?')
    end
  end 

  it 'e vê links para acessar os álbuns' do
    visit root_path
    
    expect(page).to have_link 'Natureza'
    expect(page).to have_link 'Paisagem'
    expect(page).to have_link 'Família'
    expect(page).to have_link 'Retrato/Ensaios'
    expect(page).to have_link 'Casais'
  end 

  it 'e vê aviso de direitos autorais' do
    visit root_path

    expect(page).to have_content 'Created with by Karina Sakata'
    expect(page).to have_content 'Copyright 2022 Karina Sakata'
  end 
end