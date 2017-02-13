class CommentsController < ApplicationController
#        before_action :set_comment, only: [:edit,:update,:destroy]
    
    def create
        @article=Article.find(params[:article_id])
        @comment=@article.comments.create(comment_params)
        redirect_to article_path(@article.id)
    end
    
    def edit
        @article=Article.find(params[:article_id])
        @comment=Comment.find(params[:id])
    end

    def update
        @comment=Comment.find(params[:id])
        if @comment.update(comment_params)
            redirect_to article_path(@comment.article_id)
        else 
            render 'edit'
        end
    end

    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy
        redirect_to article_path(params[:article_id])
    end
    
    private
    def comment_params
        params[:comment].permit(:title,:text)
    end
end
