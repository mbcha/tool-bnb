class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user == record.user
  end

  def new?
    create?
  end

  def create?
    user == record.user ? false : true
  end

end
