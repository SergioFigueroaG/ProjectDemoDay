class ChangeColumnStateToUserEvent < ActiveRecord::Migration
  def change
  	change_column :user_events, :state, :boolean
  end
end
