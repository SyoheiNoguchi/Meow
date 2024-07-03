# frozen_string_literal: true

class Form::TextInputComponent < ViewComponent::Base
  def initialize(form:, name:, id: '', additional_class: '', placeholder: '')
    @form = form
    @name = name
    @id = id
    @additional_class = additional_class
    @placeholder = placeholder
  end
end
