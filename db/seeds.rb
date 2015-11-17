# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Cheerup.destroy_all

yinka = User.create(email: "a@a.com", password: "qwertyuiop", password_confirmation: "qwertyuiop")

Cheerup.create(title: "my first cheerup", content: "be happy!", user: yinka )

dave = User.create(email: "d@a.com", password: "password", password_confirmation: "password")

Cheerup.create(title: "first cheerup", content: "have fun!", user: dave )

kelly = User.create(email: "k@a.com", password: "password1", password_confirmation: "password1")

Cheerup.create(title: "my cool cheerup", content: "share some love!", user: kelly )

mati = User.create(email: "m@a.com", password: "password2", password_confirmation: "password2")

Cheerup.create(title: "cheerup people", content: "take a vaccation!", user: mati )
