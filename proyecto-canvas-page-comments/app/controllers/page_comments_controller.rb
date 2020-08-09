class PageCommentsController < ApplicationController
    def index
        @page_comments = PageComment.all
    end
    def new
        @page_comment = PageComment.new
    end
    def create
        @page_comment = PageComment.new(page_comment_params)
        if @page_comment.save
            redirect_to page_comments_path
        else
            render :new
        end
    end
    def edit
        @page_comment = PageComment.find(params[:id])
    end
    def update
        @page_comment = PageComment.find(params[:id])
        if @page_comment.update(page_comment_params)
            redirect_to page_comments_path
        else
            render :edit
        end
    end
    def destroy
        @page_comment = PageComment.find(params[:id])
        @page_comment.destroy
        redirect_to page_comments_path
    end
    private
        def page_comment_params
            params.require(:page_comment).permit(:message, :page_id, :page_type, :user_id)
        end
end
