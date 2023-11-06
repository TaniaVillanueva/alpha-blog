class ArticlesController < ApplicationController
    def show
        
        @articles = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end
end