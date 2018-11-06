class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
   def show?
    is_user_owner_admin?
  end
   private
   def is_user_owner_admin?
    user == record || user.admin?
  end
end
