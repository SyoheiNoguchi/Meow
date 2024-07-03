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
require 'rails_helper'

RSpec.describe Contact, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
