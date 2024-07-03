class NewsController < ApplicationController
  def index
    tag_id = params[:tag_id]
    @news = tag_id.nil? ? News.where(publish: true) : News.where(tag_id: tag_id, publish: true)

    @tags = Tag.all
    @current_tag = tag_id
  end

  def show
    @news = News.find(params[:id])
  end
end
