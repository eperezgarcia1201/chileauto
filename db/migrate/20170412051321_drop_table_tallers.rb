class DropTableTallers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :tallers
  end
end
