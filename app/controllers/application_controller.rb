class ApplicationController < ActionController::Base
  before_action :get_current_path
    
  private

  def get_current_path
    @current_path = request.path
  end
end
