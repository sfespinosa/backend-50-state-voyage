class CreateUsStates < ActiveRecord::Migration[6.0]
  def change
    create_table :us_states do |t|
      t.string :name
      t.string :abbrv
      t.string :nickname
      t.string :capital_city
      t.float :capital_lat
      t.float :capital_lng
      t.string :flag_img_url

      t.timestamps
    end
  end
end
