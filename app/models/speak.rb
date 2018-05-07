class Speak < ApplicationRecord
  belongs_to :user
  belongs_to :language

  def speaked_by?(user)
    speakers.exists?(user.id)
  end

  def add_speaking_language(user)
      if speaked_by?(user)
          flash[:notice] = 'Language already existed.'
      else
        speakers << user
        flash[:notice] = 'Language has been added.'
      end
  end

end
