class RemoveCountryFieldFromCompanies < ActiveRecord::Migration[5.0]
  def change
    remove_column :companies, :country_field, :string
  end
end
