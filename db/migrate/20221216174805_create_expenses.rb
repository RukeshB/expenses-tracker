class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :particular
      t.date :date
      t.belongs_to :expenses_type, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.decimal :amount
      t.string :remark
      t.timestamps
    end
  end
end
