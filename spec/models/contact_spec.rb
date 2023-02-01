require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe '#valid?' do 
    context 'presence' do 
      it 'false when name is empty' do
        contact = Contact.new(name:'', email:'ana@gmail.com', message:'Teste')

        expect(contact.valid?).to eq false
      end

      it 'false when email is empty' do
        contact = Contact.new(name:'Ana', email:'', message:'Teste')

        expect(contact.valid?).to eq false
      end

      it 'false when message is empty' do
        contact = Contact.new(name:'Ana', email:'ana@gmail.com', message:'')

        expect(contact.valid?).to eq false
      end
    end
  end
end
