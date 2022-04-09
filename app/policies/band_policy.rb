class BandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.admin?
  end

  def index?
    true
  end

  def show?
    true
  end
end
