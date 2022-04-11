class BandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    if user.nil?
      false
    else
      user.admin?
    end  end

  def index?
    true
  end

  def show?
    true
  end
end
