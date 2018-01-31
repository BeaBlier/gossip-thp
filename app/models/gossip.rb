class Gossip < ApplicationRecord
  validates :content, length: { maximum: 140 },
                      presence: true
  belongs_to :user      #relier User à Gossip 
end
