class AddCompanyIdToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :company_id, :integer
  end
end
