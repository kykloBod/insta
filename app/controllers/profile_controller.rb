class ProfileController < ApplicationController
  before_action :set_user
  def show
  end

  def follow
    current_user.send_follow_request_to(@user)
    @user.accept_follow_request_of(current_user)
    redirect_to profile_path(@user)
  end

  def unfollow
    make_it_a_unfriend_request

    current_user.unfollow(@user)
    
    redirect_to profile_path(@user)
  end

  

  private

  def make_it_a_unfriend_request
    @user.unfollow(current_user) if @user.mutual_following_with?(current_user)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
