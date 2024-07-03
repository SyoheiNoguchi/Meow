# frozen_string_literal: true

class Form::FileInputComponent < ViewComponent::Base
  def initialize(form:, name:, id: '', additional_class: '')
    @form = form
    @name = name
    @id = id
    @additional_class = additional_class
  end
end
