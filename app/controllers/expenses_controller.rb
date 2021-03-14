class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(category: params[:expense][:category], amount: params[:expense][:amount], date: params[:expense][:date])
    @expense.save
    redirect_to '/expenses' 
  end


  def show
    @expense = Expense.find(params[:id])
   end

  def edit
  end




end
