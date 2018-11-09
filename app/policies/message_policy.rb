class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def update?
    true
  end

  def status?
    true
  end
end
