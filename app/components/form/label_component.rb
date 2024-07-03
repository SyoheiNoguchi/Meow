# frozen_string_literal: true

class Form::LabelComponent < ViewComponent::Base
  def initialize(form:, name:, title:,  id: '', additional_class: '')
    @form = form
    @title = title
    @name = name
    @id = id
    @additional_class = additional_class
  end
end
