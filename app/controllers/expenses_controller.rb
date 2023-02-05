class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  # GET /expenses or /expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /expenses/1 or /expenses/1.json
  def show; end

  # GET /expenses/new
  def new
    @expenses = Expense.new
  end

  # GET /expenses/1/edit
  def edit; end

  # POST /expenses or /expenses.json
  def create
    @expense = Expense.new(expense_params)
    @expense.expenses_type_id = 1
    @expense.user_id = 1
    if @expense.save
      redirect_to expenses_path, notice: 'expense was created successfully'
    else
      render :new, status: :unprocessable_entity, alert: @expense.errors
    end
  end

  # PATCH/PUT /expenses/1 or /expenses/1.json
  def update
      if @expense.update(expense_params)
        redirect_to expenses_path, notice: 'expense was updated successfully'
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense.destroy
    redirect_to expenses_url, notice: 'Expense was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(
      :user_id,
      :expenses_type_id,
      :particular,
      :amount,
      :remark
    )
  end
end
