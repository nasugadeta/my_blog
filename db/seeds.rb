# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create(name: 'sparta', description: 'hogehoge', image_url: 'http://www.nobodyeverdrownedinsweat.com/wp-content/uploads/2012/02/spartan-cam-logo1.png')

Category.create(title: '日々')
Category.create(title: '未整理')
Category.create(title: 'Rails')
