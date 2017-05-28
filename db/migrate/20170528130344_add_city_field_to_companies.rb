class AddCityFieldToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :city_field, :string
  end
end
