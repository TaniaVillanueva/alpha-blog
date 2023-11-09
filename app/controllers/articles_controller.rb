class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :destroy, :update]
    def show
        
       
    end

    def index
        @articles = Article.all
    end

    def edit
        
    end

    def new
        @article = Article.new
    end
  

    def create
        @article = Article.new(article_params)
        if @article.save
          flash[:notice] = "Article was created successfully."
          redirect_to @article
        else
          render 'new', status: :unprocessable_entity
          
        end
    end

    def update
        
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully"
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        
        @article.destroy
        redirect_to article_path
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end
end