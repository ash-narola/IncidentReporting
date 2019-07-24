# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team = Team.create(name: "Ruby on Rails")
team.users.create(email: "ash@narola.email", password: 'password', type: 'Manager')
team.users.create(email: "bj@narola.email", password: 'password', type: 'Member')
team.users.create(email: "cha@narola.email", password: 'password', type: 'Member')

team = Team.create(name: "Java")
team.users.create(email: "vishal@narola.email", password: 'password', type: 'Manager')
team.users.create(email: "vsp@narola.email", password: 'password', type: 'Member')
team.users.create(email: "bm@narola.email", password: 'password', type: 'Member')
