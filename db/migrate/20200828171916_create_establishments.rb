class CreateEstablishments < ActiveRecord::Migration[6.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.float :lat
      t.float :lng
      t.float :rating
      t.string :img_url
      t.string :website_url
      t.string :reference_id
      t.belongs_to :us_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
