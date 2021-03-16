class Expense < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      expense = find_by(id: row["id"]) || new
      expense.attributes = row.to_hash.slice(*updatable_attributes)
      expense.save
    end
  end

  def self.updatable_attributes
    ["id", "category", "amount", "date"]
  end

end
