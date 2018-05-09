class PhotoPolicy < ApplicationPolicy
    def index?
      false
    end
   
    def create?
      user.present?
    end

    def edit?
        return true if user.present? && user == photo.user
    end
   
    def update?
      return true if user.present? && user == photo.user
    end
   
    def destroy?
      return true if user.present? && user == photo.user
    end
   
    private
   
      def photo
        record
      end
  end