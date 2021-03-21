class AddColumnToExpense < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :YYYYMM, :int
  end
end
