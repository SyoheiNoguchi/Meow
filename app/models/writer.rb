# == Schema Information
#
# Table name: writers
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Writer < ApplicationRecord
  has_many :news
end
