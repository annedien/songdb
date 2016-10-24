class Artist < ApplicationRecord
  has_many :songs

  scope :by_name,     -> {order(:name)}

  def self.order_by_name
         order(:name)
     end

end

