class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def show
    @user = User.find_by(params[:id])
    @events = @user.events
  end

  def new
    @user = user.new()
  end

  def create
    @user = user.new(user_params)
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:factoid).permit(:text, :url)
    end

end
