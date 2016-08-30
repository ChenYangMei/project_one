# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.destroy_all

a1 = Account.create :name => "Yangmei", :email => "yangmei@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://vignette2.wikia.nocookie.net/the-legendary-moonlight-sculptor/images/3/3c/Red_dragon.jpg/revision/latest?cb=20150920021344"

a2 = Account.create :name => "Austin", :email => "austin@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "https://s3.amazonaws.com/faithandreasoninstitute/thecatholicthing/wp-content/uploads/2015/08/laughing_donkey.jpg", :status => 1

a3 = Account.create :name => "Ginger", :email => "ginger@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://www.dogtricktips.com/wp-content/uploads/2015/11/34.jpg", :status => 2

a4 = Account.create :name => "Oreo", :email => "oreo@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "https://s-media-cache-ak0.pinimg.com/564x/91/91/8e/91918e98e954b717157d8f9e159d9e76.jpg", :status => 2


Child.destroy_all

c1 = Child.create :name => "Tucky", :gender => "Male", :dob => "2012/02/17", :image => "https://cdn.vectorstock.com/i/composite/87,74/simple-child-cartoon-vector-908774.jpg"
c2 = Child.create :name => "Banjo", :gender => "Female", :dob => "2013/05/02", :image => "https://cdn.vectorstock.com/i/composite/53,55/cute-cartoon-children-vector-965355.jpg"
