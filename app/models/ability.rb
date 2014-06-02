class Ability
  include CanCan::Ability

  def initialize(user)
    # Guest User 
    unless user 
      can :read, :all
    else
      # All registered users
      can :create, Post
      can :create, Component
      can :manage, Post do |p|
      	p.try(:user) == user
    end
      
      can :read, :all
      # Admins 
      if user.is_admin?
        can :manage, :all
      end
    end  
end
end