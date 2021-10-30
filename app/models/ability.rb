# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new  #guest user (not logged in)
    if user.is? :admin
      can :access, :rails_admin
      # can :dashboard
      can :manage, :all

      # can :manage, users_courses_departaments, user_id: user.id
    else
      can :read, :all
    end
  end

end
