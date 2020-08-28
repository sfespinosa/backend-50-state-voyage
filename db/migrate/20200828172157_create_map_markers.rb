class CreateMapMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :map_markers do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :establishment, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
