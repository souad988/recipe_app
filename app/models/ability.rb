class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :delete, Food, user_id: user.id
      can :delete, Recipe, user_id: user.id
      can :create, Food
      can :create, Recipe
    end
  end
end