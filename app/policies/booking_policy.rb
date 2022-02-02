class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
    # unless user(current_user) == dress.user_id(owner_id) | So that the owner cannot book their own dress
  end

  def update?
    record.dress.user == user || record.user == user
    # the owner and renter can see it
  end

  def destroy?
    false
    # only admin can destroy and have the status of the booking go to completed or cancelled? Similar to Amazon,order history can't be deleted
  end

  def profile?
    true
  end

  def index?
    true
  end
end
