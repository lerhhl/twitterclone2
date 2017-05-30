class TweetTag < ApplicationRecord
  belongs_to :tag_id
  belongs_to :tweet_id
end
