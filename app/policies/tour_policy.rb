class TourPolicy < ApplicationPolicy
    def index?
      false
    end
   
    def create?
      user.present?
    end

    def edit?
        return true if user.present? && user == tour.user
    end
   
    def update?
      return true if user.present? && user == tour.user
    end
   
    def destroy?
      return true if user.present? && user == tour.user
    end
   
    private
   
      def tour
        record
      end
  end