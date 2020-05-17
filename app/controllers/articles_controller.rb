class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
      end

    def new
    end

    def create
  
     @article.save
    redirect_to @article
    end

    private
     def article_params
     params.require(:article).permit(:title, :text)
     end
end
