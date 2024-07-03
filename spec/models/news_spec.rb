# == Schema Information
#
# Table name: news
#
#  id          :bigint           not null, primary key
#  description :string(255)      not null
#  publish     :boolean          default(FALSE), not null
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tag_id      :integer          not null
#  writer_id   :integer          not null
#
require 'rails_helper'

RSpec.describe News, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
