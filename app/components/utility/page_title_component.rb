# frozen_string_literal: true

class Utility::PageTitleComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
