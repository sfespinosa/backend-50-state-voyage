class CreateUsStates < ActiveRecord::Migration[6.0]
  def change
    create_table :us_states do |t|
      t.string :name
      t.string :abbrv
      t.string :nickname
      t.string :capital_city
      t.integer :capital_lat
      t.integer :capital_lng
      t.string :flag_img_url

      t.timestamps
    end
  end
end
