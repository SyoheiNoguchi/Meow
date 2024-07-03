class Admin::NewsController < Admin::Base
  before_action :set_select_collections, only: [:index, :new, :create, :edit, :update]

  def index
    query = params[:query]
    tag_id = params[:tag_id]

    @current_tag = tag_id
        
    # News.joins(:tags).select('tags.name').where('title LIKE ? and tag LIKE ? ', "%#{query}%", "%#{tag_id}%") :
    # Newsのtag_idがtagsのidと紐づいている。Newsには関連するテーブルの名前 + _idが必要。あとhas_manyとbelongs_to。joinsは必要ないのか
    if tag_id.present? && query.present?
      @news = News.where('title LIKE ? and tag_id = ? ', "%#{query}%", tag_id).order(created_at: :desc)
    else
      if query.present?
        @news = News.where('title LIKE ?', "%#{query}%").order(created_at: :desc)
      elsif tag_id.present?
        @news = News.where('tag_id = ?', tag_id).order(created_at: :desc)
      else
        @news = News.order(created_at: :desc)
      end
    end
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)

    if @news.save
      redirect_to admin_news_index_path, notice: '登録しました'
    else
      render :new
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to admin_news_index_path, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    news = News.find(params[:id])
    news.destroy!
    redirect_to admin_news_path, notice: '削除しました'
  end

  private

  def news_params
    params.require(:news).permit(:title, :description, :tag_id, :writer_id, :publish, :image)
  end

  # selectの値を渡すために、、（左側のnameが表示内容で右側のidがvalueになる
  def set_select_collections
    @tag_collections = Tag.all.map { |c| [ c.name, c.id ] }
    @writer_collections = Writer.all.map { |c| [ c.name, c.id ] }
  end
end
