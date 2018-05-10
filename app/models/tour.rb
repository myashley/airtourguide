class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def price_in_cents
    price * 100.00
  end

end
