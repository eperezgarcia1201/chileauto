class AddStateFieldToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :state_field, :string
  end
end
