class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  # 入力内容確認時
  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render :new, status: :unprocessable_entity

      # formに data: { turbo: false } をする場合は以下の手法（エラー文言はflashになる）
      # flash[:alert] = @contact.errors.full_messages.join(", ")
      # @contact = Contact.new
      # redirect_to action: :new
    end
  end

  # 戻る際
  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  # 送信時
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to done_contacts_path
    else
      flash[:alert] = @contact.errors.full_messages.join(", ")
      @contact = Contact.new
      render :new
    end
  end

  def done
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end