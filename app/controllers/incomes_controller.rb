class IncomesController < ApplicationController
  def index
    @incomes = Income.all
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.create(category: params[:income][:category], amount: params[:income][:amount], date: params[:income][:date])
    @income.save
    redirect_to '/incomes'
  end

  def show
  end

  def edit
  end



end
