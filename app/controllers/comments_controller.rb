class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        
        @comment = @post.comments.create(body: comment_params[:body], user:current_user)
        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
