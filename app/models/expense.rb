# == Schema Information
#
# Table name: expenses
#
#  id               :bigint           not null, primary key
#  amount           :decimal(, )
#  date             :date
#  particular       :string
#  remark           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  expenses_type_id :bigint
#  user_id          :bigint
#
# Indexes
#
#  index_expenses_on_expenses_type_id  (expenses_type_id)
#  index_expenses_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (expenses_type_id => expenses_types.id)
#  fk_rails_...  (user_id => users.id)
#
class Expense < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :expenses_type, class_name: 'ExpensesType'

  validates :particular, presence: true
  validates :remark, presence: true
  validates :amount, presence: true
end
