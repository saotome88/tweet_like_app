class Like < ApplicationRecord
  # counter_cacheとは、リレーションされているlikeの数の値をリレーション先のlikes_countに代入するという意味
  # likes_countはTweetモデルのカラムに追加しておく
  belongs_to :tweet, counter_cache: :likes_count
  belongs_to :user
end
