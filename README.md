# graphql-bank-api
create a small scale bank API application using graphql with rspec.
bundle exec rails g model role name
bundle exec rails g model user email user_name password first_name last_name contact address:text gender role:references status:integer information:references{polymorphic}

bundle exec rails g model customer status:integer birthdate:datetime is_handicap:boolean

bundle exec rails g model employee status:integer salary date_of_joining:datetime position:integer

bundle exec rails g model account type:integer balance:float customer:references status:integer description

bundle exec rails g model card name csv:integer pin number type:integer expired_at:datetime status:integer account:references

bundle exec rails g model transaction narration:text credit_amount debit_amount closing_balance customer:references account:references

Role.create(name: "SuperAdmin")
Role.create(name: "Admin")
Role.create(name: "User")

c1 = Customer.create(status: 0,
                birthdate: Date.today - 24.year,
                is_handicap: false)

c2 = Customer.create(status: 0,
                birthdate: Date.today - 24.year,
                is_handicap: false)

e1 = Employee.create(status: 1,
                date_of_joining: Date.today - 1.year,
                salary: "85000",
                position: "manager")


User.create(email: "demo@gmail.com",
            user_name: "demo10025",
            password: "123456",
            first_name: "jasson",
            last_name: "demo",
            contact: "703042995",
            address: "text",
            gender: "male",
            role_id: 1,
            status: 1,
            information_type: "Customer",
            information_id: c1.id)

User.create(email: "demo2@gmail.com",
            user_name: "demo25555",
            password: "123456",
            first_name: "jasson2",
            last_name: "demo2",
            contact: "9696969696",
            address: "text",
            gender: "female",
            role_id: 3,
            status: 1,
            information_type: "Customer",
            information_id: c2.id)

User.create(email: "employee1@bank.com",
            user_name: "emp364",
            password: "65431",
            first_name: "emp1",
            last_name: "emplast",
            contact: "7894568587",
            address: "text",
            gender: "female",
            role_id: 2,
            status: 2,
            information_type: "Employee",
            information_id: e1.id)
