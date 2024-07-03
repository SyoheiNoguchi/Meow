# frozen_string_literal: true

class Form::PasswordInputComponent < ViewComponent::Base
  def initialize(form:, name:, autocomplete:, id: '', additional_class: '', placeholder: '')
    @form = form
    @name = name
    @autocomplete = autocomplete
    @id = id
    @additional_class = additional_class
    @placeholder = placeholder
  end
end
