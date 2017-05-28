class AddCountryFieldToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :country_field, :string
  end
end
