# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.destroy_all

a1 = Account.create :name => "Yangmei", :email => "yangmei@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "34562465-an-illustration-of-cartoon-teacher-vector-Stock-Illustration_mce7rn"

a2 = Account.create :name => "Jess", :email => "jess@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "377180-78800a8f030b4686416b0e17a246de07_uvxytr", :role => 1

a3 = Account.create :name => "Kris", :email => "kris@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "livepreview_jw3pzq", :role => 1

a4 = Account.create :name => "Kirily", :email => "kirily@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "3bbf6ad9ecd10ecad802d84d4119bccf_ktgrjr", :role => 2

a5 = Account.create :name => "Robin", :email => "robin@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "cartoon-man-suit-22793564_igt3xe", :role => 2

a6 = Account.create :name => "Jo", :email => "jo@gmail.com", :password => "chicken", :password_confirmation => "chicken", :image => "cartoon-woman_aerdq1", :role => 2


Child.destroy_all

c1 = Child.create :name => "Tucky", :gender => "Male", :dob => "2012/02/17", :image => "stock-vector-school-boy-cartoon-walking-204036907_kutahp"

c2 = Child.create :name => "Banjo", :gender => "Female", :dob => "2013/05/02", :image => "5TRrxk4kc_lqzvdg"

c3 = Child.create :name => "Isis", :gender => "Female", :dob => "2014/03/02", :image => "Cute_girl_cartoon_hg5lnz"

c1.accounts << a3 << a4 << a5
c2.accounts << a2 << a3 << a6
c3.accounts << a3 << a4 << a5

Story.destroy_all

s1 = Story.create :title => "Playdough fun", :story_date => "2016/08/30", :content => "A few Butterflies asked for play dough yesterday so this morning we made some together. The children helped adding the ingredients in a big bowl and stirring with a wooden spoon. To get the right texture we mixed more flour into the dough by kneading our individual pieces. Rosaleen brought out some natural resources which the children enjoyed adding to their dough and creating different shapes. 'This is Hulk, I need another googly eye,' Isaac said as he made a face out of the resources. 'I am making a snake!' Karel told his friend Cooper. As new friends have been joining in at the table, we talked about sharing the dough to everyone. We had the play dough set up for the rest of the day. Adeline and Kobe made bird nest with eggs in it. Harry made a big Birthday cake with the dough.", :image => ["kids-featured-image_eqti3x", "two-boys-and-one-girl-visibly-happy-playing-along_c0qrge"]

s2 = Story.create :title => "Can you draw my Tigger?", :story_date => "2016/08/30", :content => "Phoenix and Kobe were enjoying themselves with the texta drawing activity. 'Can you draw around my Tigger?' Kobe asked Phoenix. Phoenix agreed and they together put Tigger on a piece of paper. Phoenix carefully traced around Tigger with a texta. 'Haha it's Tigger!' Kobe pointed to the drawing and laughed out loud when Phoeix finished tracing. Phoenix went back to her drawing and Kobe kept watching her. 'It's a funny face' Kobe pointed to Phoenix's drawing and giggled along with Phoenix. The two friends then lined up a few textas on the table and talked about the colours. When the lunch trolley was pushed in, Phoenix said, 'Kobe, lunch is here!' They together put the textas back in a pen holder before they went to wash their hands.", :image => ["Group_1_azja7b", "2722751-cute-happy-children-playing-in-spring-filed_rlyyja"]

s3 = Story.create :title => "Making Basil Bread", :story_date => "2016/08/30", :content => "The butterflies loved the herb damper we made yesterday. To extend our cooking experience, today we made basil bread to go with our lunch menu which was spaghetti bolognese. Harry, Silvie and Annabelle helped picking some basil in our vegetable garden with Rosaleen early this morning. When it was time to prepare the basil bread, Phoenix offered to go for a walk with Yangmei to get the ingredients. The children watched Yangmei cutting up the basil and had a smell and a taste. We put the finely chopped basil in the butter and mixed it up. Buttering our own bread was the fun part. Yangmei was impressed by the butterflies' fine motor skills. 'I did it!' Piper was very proud of herself. Aubree and Harry couldn't help themselves but licking the herb butter every now and then. We wrapped the herb bread in foil ad had it at lunch time after it was baked. Yum! The children again enjoyed real life experiences and showed a sense of responsibility in preparing their own food. ", :image => ["sf-children-in-field-with-magnifying-glass_lfvb84", "Phenom-Childred-Play-631.jpg__800x600_q85_crop_lpurvm"]

a2.stories << s1
a3.stories << s2
a4.stories << s3

Comment.destroy_all

t1 = Comment.create :content => "Aw this is great! its so cute to see Phoenix engaging in fun and meaningful relationships with her peers. Cant wait to see what the music drawings look like and how the children interpret this.", :account_id => 44

t2 = Comment.create :content => "My child is the best!", :account_id => 45

t3 = Comment.create :content => "You teachers are amazing! My child is happiest little girl in the whole wide world!", :account_id => 46

s1.comments << t1 << t2
s2.comments << t3
