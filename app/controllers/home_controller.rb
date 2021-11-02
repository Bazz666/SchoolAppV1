class HomeController < ApplicationController

  # before_action :authenticate_user!
  
  def index
    # @user = User.all
    @user_role = User.group(:role).count
    @course_users= Course.group(:name).sum(:id)
    # @courses_avg = Course.group(:id).count(:user)

    
    
  end

 

  
end
