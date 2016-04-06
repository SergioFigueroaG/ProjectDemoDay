class CreateInviteds < ActiveRecord::Migration
  def change
    create_table :inviteds do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :correo

      t.timestamps null: false
    end
  end
end
