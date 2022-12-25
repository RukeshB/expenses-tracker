# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create!(email: 'rukesh@gmail.com', password: '12345678')
user.confirm
type = ExpensesType.create(name: 'test type', creator_id: user.id)
Expense.create!(particular: 'test', expenses_type_id: type.id, user_id: user.id, amount: 1000, remark: 'test')