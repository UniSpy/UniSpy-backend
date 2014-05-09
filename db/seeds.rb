# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.create(:name => "Fleuri", :email => "laur1.suomalainen@gmail.com", :password => "Moikka")
@user.tags << Tag.create(:content => "Liha")
@user.tags << Tag.create(:content => "Kasvis")
@user.tags << Tag.create(:content => "Kala")

