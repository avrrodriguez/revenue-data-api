class ChangeTypetoRevenueType < ActiveRecord::Migration[7.0]
  def change
    rename_column :miami_revenues, :type, :revenue_type
  end
end
