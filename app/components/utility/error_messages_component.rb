# frozen_string_literal: true

class Utility::ErrorMessagesComponent < ViewComponent::Base
  def initialize(model:)
    @model = model
  end
end
