class LocationPolicy < ApplicationPolicy
    def index?
      false
    end
   
    def create?
      user.present?
    end

    def edit?
        return true if user.present? && user == location.user
    end
   
    def update?
      return true if user.present? && user == location.user
    end
   
    def destroy?
      return true if user.present? && user == location.user
    end
   
    private
   
      def location
        record
      end
  end