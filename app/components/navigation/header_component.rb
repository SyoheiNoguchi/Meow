# frozen_string_literal: true

class Navigation::HeaderComponent < ViewComponent::Base
  def initialize(current_path:)
    @current_path = current_path
  end
end
