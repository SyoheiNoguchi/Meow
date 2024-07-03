# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  email      :string(255)      not null
#  subject    :string(255)      not null
#  message    :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
    
    validates :name, presence: { message: 'は１文字以上入力してください。' }
    validates :email, presence: { message: 'は１文字以上入力してください。' }
    validates :subject, presence: { message: 'は１文字以上入力してください。' }
    validates :message, presence: { message: 'は１文字以上入力してください。' }

end
