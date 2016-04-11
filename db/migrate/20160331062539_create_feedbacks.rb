class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :score
      t.string :comment

      t.timestamps null: false
    end
  end
end
