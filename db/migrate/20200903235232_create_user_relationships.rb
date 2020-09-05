class CreateUserRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relationships do |t|
      t.integer :followed_user_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
