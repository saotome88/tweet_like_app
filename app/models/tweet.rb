class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes
  #「誰が」いいねをしたのかを取得する
  has_many :liked_users, through: :likes, source: :user
end
