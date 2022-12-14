class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Group, user: user
    can :manage, Expense, user: user

    can %i[create read], Group
    can %i[create read], Expense
  end
end
