class Admin::Base < ApplicationController
  layout 'application_admin'

  before_action :authenticate_user! # ログインしてないユーザーを弾く

  private

end
