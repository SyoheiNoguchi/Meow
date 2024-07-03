# frozen_string_literal: true

class Form::SelectComponent < ViewComponent::Base
  def initialize(form:, name:, collection:, selected: nil, id: '', additional_class: '')
    @form = form
    @name = name
    @collection = collection
    @selected = selected
    @id = id    
    @additional_class = additional_class
  end
end
