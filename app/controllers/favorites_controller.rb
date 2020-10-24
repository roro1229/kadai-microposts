class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:micropost_id])
    current_user.like(user)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unlike(user)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to root_url
  end
end
