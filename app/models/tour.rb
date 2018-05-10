class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def to_cents
    self.price * 100
  end

end
