class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    authorize @contact
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end
end
