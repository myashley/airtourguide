class Language < ApplicationRecord
    belongs_to :users
    has_and_belongs_to_many :speakers, class_name: 'User', join_table: :speaks
end
