class CreateEstablishmentCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :establishment_collections do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :establishment, null: false, foreign_key: true
      t.string :user_comments
      t.boolean :visited

      t.timestamps
    end
  end
end
