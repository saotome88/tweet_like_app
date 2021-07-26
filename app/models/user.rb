class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy
  # ユーザーを消したらユーザーの持つlikesも消える
#  has_many :likes, dependent: :destroy
#  has_many :like_tweets, through: :likes, source: :tweet
end
