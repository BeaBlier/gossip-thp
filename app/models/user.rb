class User < ApplicationRecord
  validates :content, length: { maximum: 140 },
                      presence: true
  has_many :gossip
end
