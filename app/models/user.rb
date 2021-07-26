class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  # ユーザーがどの投稿に「いいねをした」かを取得する
  has_many :liked_tweets, through: :likes, source: :tweet

  # ユーザーがすでにいいねをしているかどうかの判定をする。
  def already_liked?(tweet)
    self.likes.ecists?(tweet_id: tweet.id)
  end
end
