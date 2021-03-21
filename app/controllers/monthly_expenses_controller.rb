class MonthlyExpensesController < ApplicationController
  def index
    @monthly_expenses = Expense.group_by_month(:date)
    if params[:expenses].present?
      @monthly_expense = Expense.where(date: params[:expenses][:date])
    end
  end


  def new
  end

  def show


  end

  def edit
  end
end
