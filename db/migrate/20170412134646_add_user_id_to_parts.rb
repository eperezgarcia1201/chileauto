class AddUserIdToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :user_id, :integer
  end
end
