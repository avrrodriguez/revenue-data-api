class CreateMiamiRevenues < ActiveRecord::Migration[7.0]
  def change
    create_table :miami_revenues do |t|
      t.integer :unique_key
      t.string :type
      t.string :fy
      t.string :fund_type
      t.string :fund_number
      t.string :fund_description
      t.string :department_function_description
      t.string :department_description
      t.string :organization_number
      t.string :organization_description
      t.string :object_type
      t.string :object_number
      t.string :object_description
      t.integer :oct
      t.integer :nov
      t.integer :dec
      t.integer :jan
      t.integer :feb
      t.integer :mar
      t.integer :apr
      t.integer :may
      t.integer :jun
      t.integer :jul
      t.integer :aug
      t.integer :sep
      t.integer :thirteenth_month
      t.integer :total
      t.integer :encumbrance
      t.integer :adopted_budget
      t.integer :amended_budget

      t.timestamps
    end
  end
end
