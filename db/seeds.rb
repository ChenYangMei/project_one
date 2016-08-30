# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.destroy_all

a1 = Account.create :name => "Yangmei", :email => "yangmei@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://vignette2.wikia.nocookie.net/the-legendary-moonlight-sculptor/images/3/3c/Red_dragon.jpg/revision/latest?cb=20150920021344"

a2 = Account.create :name => "Jess", :email => "jess@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://previews.123rf.com/images/sahnisa/sahnisa1412/sahnisa141200051/34562465-an-illustration-of-cartoon-teacher-vector-Stock-Illustration.jpg", :role => 1

a3 = Account.create :name => "Kris", :email => "kris@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "https://s3.amazonaws.com/user-media.venngage.com/377180-78800a8f030b4686416b0e17a246de07.jpg", :role => 1

a4 = Account.create :name => "Kirily", :email => "kirily@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://anthillonline.com/wp-content/uploads/2013/03/cartoon-woman.jpg", :role => 2

a5 = Account.create :name => "Robin", :email => "robin@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "https://thumbs.dreamstime.com/x/cartoon-man-suit-22793564.jpg", :role => 2

a6 = Account.create :name => "Jo", :email => "jo@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "http://i.istockimg.com/file_thumbview_approve/10294933/3/stock-illustration-10294933-cartoon-girl-portrait.jpg", :role => 2




Child.destroy_all

c1 = Child.create :name => "Tucky", :gender => "Male", :dob => "2012/02/17", :image => "http://image.shutterstock.com/z/stock-vector-school-boy-cartoon-walking-204036907.jpg"

c2 = Child.create :name => "Banjo", :gender => "Female", :dob => "2013/05/02", :image => "http://cliparts.co/cliparts/5TR/rxk/5TRrxk4kc.jpg"

c3 = Child.create :name => "Isis", :gender => "Female", :dob => "2014/03/02", :image => "http://www.hdiphonewallpaper.com/uploads/image/Cartoon/Cute%20girl%20cartoon.jpg"
