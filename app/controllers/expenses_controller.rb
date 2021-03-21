class ExpensesController < ApplicationController
  def index
    @expenses = Expense.paginate(page: params[:page], per_page: 20)
    @monthly_expenses = Expense.group_by_month(:date).count
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(category: params[:expense][:category], amount: params[:expense][:amount], YYYYMM: params[:expense][:YYYYMM])
    @expense.save
    redirect_to '/expenses'
  end


  def show
    @expense = Expense.find(params[:id])
  end

  def edit
  end

  def destroy
    @expense = Expense.find(params[:id])
    if @expense.destroy
       redirect_to '/expenses'
    end
  end


  def import
    Expense.import(params[:file])
    redirect_to '/expenses'
  end


end
