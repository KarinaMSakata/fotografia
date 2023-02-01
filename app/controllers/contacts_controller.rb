class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      redirect_to new_contact_path, notice: 'Mensagem enviada com sucesso!'
    else
      flash.now.alert = 'Não foi possível enviar a mensagem. Por favor, verifique os erros abaixo.'
      render 'new' 
    end

  end

end