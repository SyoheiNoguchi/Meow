# frozen_string_literal: true

class Admin::News::FormComponent < ViewComponent::Base
  def initialize(model:, url:, tag_collections:, writer_collections:)
    @model = model
    @url = url
    @tag_collections = tag_collections
    @writer_collections = writer_collections
  end
end
