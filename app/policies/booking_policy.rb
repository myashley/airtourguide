class BookingPolicy < ApplicationPolicy
    def index?
      false
    end
   
    def create?
      user.present?
    end

    def edit?
        return true if user.present? && user == booking.traveller
    end
   
    def update?
      return true if user.present? && user == booking.user
    end
   
    def destroy?
      return true if user.present? && user == booking.tour_guide
    end
   
    private
   
      def booking
        record
      end
  end