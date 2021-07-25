class Tweet < ApplicationRecord
  belongs_to :user
  # 親のtweetを消したら子のlikesも消える
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
end
