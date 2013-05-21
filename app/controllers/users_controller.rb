class UsersController < ApplicationController

before_filter :authorize_user, except: [:new, :create]

  def authorize_user
    @user = User.find_by_id(params[:id])
    if current_user.blank? || current_user != @user
      logger.info "Not authorized! #{current_user.inspect}"
      redirect_to root_url, notice: "Nice try"
    end
  end

  def show
    @user = User.find_by_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end
