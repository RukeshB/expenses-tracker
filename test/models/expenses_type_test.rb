# == Schema Information
#
# Table name: expenses_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :bigint           not null
#
# Indexes
#
#  index_expenses_types_on_creator_id  (creator_id)
#
require "test_helper"

class ExpensesTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
