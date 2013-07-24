# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(role: 'administrator')
Role.create(role: 'user')
Role.create(role: 'experts')

Status.create(status: 'user')

role_id = Role.select("id").where("role = 'administrator'").limit(1)
status_id = Status.select("id").where("status = 'user'").limit(1)
user_id = User.create(first_name: 'first_name', last_name: 'last_name', role_id: role_id.first.id, status_id: status_id.first.id).id
Authentication.create(email: 'email@example.com', password: 'password', user_id: user_id)