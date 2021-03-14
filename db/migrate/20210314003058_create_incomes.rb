class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.string :name
      t.integer :amount
      t.string :category
      t.date :date
      t.string :owner

      t.timestamps
    end
  end
end
