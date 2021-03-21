class RemoveColumnFromExpense < ActiveRecord::Migration[6.1]
  def change
    remove_column :expenses, :date
  end
end
