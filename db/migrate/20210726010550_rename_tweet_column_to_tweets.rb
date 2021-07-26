class RenameTweetColumnToTweets < ActiveRecord::Migration[6.0]
  def change
    rename_column :tweets, :tweet, :text
  end
end
