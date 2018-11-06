class ListingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    is_user_owner_admin?
  end

  def destroy?
    is_user_owner_admin?
  end

  private

  def is_user_owner_admin?
    user == record.user
  end
end
