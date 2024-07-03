# frozen_string_literal: true

class Navigation::TagComponent < ViewComponent::Base
  def initialize(tags:, current_tag:)
    @tags = tags
    @current_tag = current_tag
  end
end
