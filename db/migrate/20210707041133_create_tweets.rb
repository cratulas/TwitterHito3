class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :content
      t.bigint :user_id
      t.bigint :like_count
      t.bigint :retweets_count
      t.bigint :rewtitted_from

      t.timestamps
    end
  end
end
