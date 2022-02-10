class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  # Form with checkboxes
  # => params { title: 'h', body: 'b', status: 'public', keyword_ids: [1, 3, 4] }
  # article.update(params)
  # => article.title = 'h', article.body = 'b', article.status = 'public', article.keyword_ids = [1, 3, 4]
    def article_params
      params.require(:article).permit(:title, :body, :status, { keyword_ids: [] })
    end
end
