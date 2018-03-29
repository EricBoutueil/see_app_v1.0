class MovementPolicy < ApplicationPolicy
  class Scope < Scope # for index
    def resolve
      scope.all
      # scope ~ Restaurant
      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end

  def edit?  # => update
    user_is_owner?
  end

  def create? # => new
    return true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end
end
