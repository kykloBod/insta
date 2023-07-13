class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    
    if !@like.save
      flash[:alert] = "Вы уже лайкнули этот пост"
    end
  end

  def destroy
    
    like =  Like.find_by(user_id: current_user.id, post_id: params.dig(:id))
    like.destroy
  end

  def like_params
    params.require(:like).permit(:post_id )
  end
end
