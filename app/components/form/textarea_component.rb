# frozen_string_literal: true

class Form::TextareaComponent < ViewComponent::Base
  def initialize(form:, name:, id: '', size: '', additional_class: '', placeholder: '')
    @form = form
    @name = name
    @id = id
    @size = size
    @additional_class = additional_class
    @placeholder = placeholder
  end
end
