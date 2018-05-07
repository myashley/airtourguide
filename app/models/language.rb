class Language < ApplicationRecord
    has_many :speaks
    has_many :users, through: :speaks
    #has_and_belongs_to_many :speakers, class_name: 'User', join_table: :speaks



end
