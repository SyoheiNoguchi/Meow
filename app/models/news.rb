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
class News < ApplicationRecord
  belongs_to :tag
  belongs_to :writer
  has_one_attached :image

  validates :title, presence: { message: 'は１文字以上入力してください。' }
  validates :description, presence: { message: 'は１文字以上入力してください。' }
end
