class Like < ApplicationRecord
  # counter_cacheとは、リレーションされているlikeの数の値をリレーション先のlikes_countに代入するという意味
  # likes_countはTweetモデルのカラムに追加しておく
  belongs_to :tweet
  belongs_to :user
end
