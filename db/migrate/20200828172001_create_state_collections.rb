class CreateStateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :state_collections do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :us_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
