class ProfilePolicy < ApplicationPolicy
    def index?
      true
    end
   
    def create?
      user.present?
    end

    def edit?
      return true if user.present? && user == profile.user
    end
   
    def update?
      return true if user.present? && user == profile.user
    end
   
    def destroy?
      return true if user.present? && user == profile.user
    end
   
    private
   
      def profile
        record
      end
  end