class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date_i
      t.datetime :date_f
      t.time :hour_i
      t.time :hour_f
      t.string :name_place
      t.string :address
      t.string :img
      t.boolean :private
      t.integer :n_confirm
      t.integer :capacity
      t.boolean :need_partner
      t.text :des_partner
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
