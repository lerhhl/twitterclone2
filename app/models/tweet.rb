class Tweet < ApplicationRecord
  belongs_to :user

  has_many :tags, :through => :tweet_tags

  validates :body, presence: true, length: { maximum: 140 }
end
