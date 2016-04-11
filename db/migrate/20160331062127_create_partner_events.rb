class CreatePartnerEvents < ActiveRecord::Migration
  def change
    create_table :partner_events do |t|
      t.integer :event_id
      t.integer :user_id
      t.text :description
      t.integer :state
      t.string :type_partners
      t.string :correo

      t.timestamps null: false
    end
  end
end
