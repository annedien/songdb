class Artist < ApplicationRecord
  has_many :songs
  has_many :photos

  scope :by_name,     -> {order(:name)}

  def self.order_by_name
         order(:name)
     end

end

