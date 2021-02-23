class UsersController < ApplicationController
  def index
    @users = User.all
    @friends = current_user.friends
    @pending_requests =current_user.pending_requests
    @friend_request - current_user.received_requests
  end

  def show
    @user = user.find(params[:id])
  end

  def update_img
    @user = User.find(params[:id])
    if image
      @user.image =imge
      if @user.save
        flash[:success] = "Image uploaded"
      else
        flash[:danger] = "Image upload failed"
      end
    end
    redirect_back(fallback_location: root_path)
  end

end
