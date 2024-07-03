# == Schema Information
#
# Table name: rescude_cats
#
#  id          :bigint           not null, primary key
#  title       :string(255)      not null
#  description :string(255)      not null
#  address     :string(255)      not null
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe RescudeCat, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
