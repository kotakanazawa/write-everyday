class UsersController < ApplicationController

  def index
    @user = User.new(:name => "Bobby")
    @user.tag_list.add("awesome")
    @user.skill_list.add("Vue.js", "Ruby", "Rails")
    @user.interest_list.add("game", "bodybuilding", "movie")
    @user.save
  end

  private
    def user_params
      params.require(:user).permit(:name, :tag_list)
    end
end
