class Language < ApplicationRecord
    #belongs_to :users
    has_and_belongs_to_many :speakers, class_name: 'User', join_table: :speaks

    
    def add_speaker(user)
        if speakers.exists?(user.id)
            flash[:notice] = 'Language has already existed.'
        else
            speakers << user   
        end
    end
end
