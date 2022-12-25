class CreateExpensesTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses_types do |t|
      t.string :name
      t.bigint "creator_id", null: false
      t.timestamps

      t.index ["creator_id"], name: "index_expenses_types_on_creator_id"
    end
  end
end
