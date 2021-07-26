class Like < ApplicationRecord
  belongs_to :tweet
  belongs_to :user

  #バリデーションで一つの投稿に一人一回だけいいねができる。
  validates_uniquness_of :tweet_id, scope: :user_id
end
