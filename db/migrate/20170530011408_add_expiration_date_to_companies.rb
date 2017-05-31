class AddExpirationDateToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :expiration_date, :date
  end
end
