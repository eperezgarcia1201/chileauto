class RemoveCompanyIdFromParts < ActiveRecord::Migration[5.0]
  def change
    remove_column :parts, :company_id, :integer
  end
end
