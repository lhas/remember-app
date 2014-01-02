class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)

    respond_to do |format|
      if contact.save && ContactMailer.send_email(contact).deliver
        format.html { redirect_to root_path, notice: 'Your contact was successfully sent.' }
      else
        format.html { redirect_to root_path, alert: 'Your contact was not sent.' }
      end
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

end