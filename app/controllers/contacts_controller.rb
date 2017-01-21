class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save # if save to database is successful...
      
      # pull params for email
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:body]
      # send email
      ContactMailer.contact_email(name, email, body).deliver
      
      # display flash message
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      # calling this one danger so that we can use the variable name for the 
      # bootstrap class on the alert "alert-danger" in 
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end