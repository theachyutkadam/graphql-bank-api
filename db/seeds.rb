# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: 'SuperAdmin')
Role.create(name: 'Admin')
Role.create(name: 'User')
c1 = Customer.create(status: 0, birthdate: Date.today - 24.years)
c2 = Customer.create(status: 0, birthdate: Date.today - 24.years)
e1 = Employee.create(status: 1, date_of_joining: Date.today - 1.year, salary: '85000', position: 'manager')
User.create(email: 'demo@gmail.com', user_name: 'demo10025', password: '123456', first_name: 'jasson',
            last_name: 'demo', contact: '703042995', address: 'text', gender: 'male', role_id: 1, status: 1, information_type: 'Customer', information_id: c1.id)
User.create(email: 'demo2@gmail.com', user_name: 'demo25555', password: '123456', first_name: 'jasson2',
            last_name: 'demo2', contact: '9696969696', address: 'text', gender: 'female', role_id: 3, status: 1, information_type: 'Customer', information_id: c2.id)
User.create(email: 'employee1@bank.com', user_name: 'emp364', password: '65431', first_name: 'emp1',
            last_name: 'emplast', contact: '7894568587', address: 'text', gender: 'female', role_id: 2, status: 2, information_type: 'Employee', information_id: e1.id)

p '===================='
p '===================='
puts 'seed file upload successfully.'
p '===================='
p '===================='
