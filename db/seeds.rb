
User.destroy_all


u1 = User.create :name => "Priyanka", :email => "priyanks@ga.co",:password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "JongBAE", :email => "jongbae@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Lucas", :email => "lucas@ga.co", :password => "chicken", :password_confirmation => "chicken"

p "User Count: #{User.all.count} "

Shop.destroy_all



s1 = Shop.create :name => "Dymocks Sydney ", :description => "It's very good" ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325016/6d68bbd502a2dbbcde2d44b4af84b1ed_ksxswl.jpg"
s2 = Shop.create :name => "7 eleven ", :description => "It's very cheap " ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325030/ultimo-coffee_q5c15s.jpg"
s3 = Shop.create :name => "Type B ", :description => "Joes Gilfriend Cafe !! " ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325024/cabukee-counter_kqvvgl.png"

s1 = Shop.create :name => "Sardough Coffee", :description => "It's very good" ,:image => "http://fillmurray.com/200/300.jpg"
s2 = Shop.create :name => "7 eleven ", :description => "It's very cheap " ,:image => "http://fillmurray.com/200/300.jpg"
s3 = Shop.create :name => "Type B ", :description => "Joes Gilfriend Cafe !! " ,:image => "http://fillmurray.com/200/300.jpg"


p "Shops Count: #{Shop.all.count}"

Product.destroy_all

p1 = Product.create :name => "Meat Pie", :price => 5, :description => "A meat pie is a pie with a filling of meat and often other savory ingredients.  ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg"
p2 = Product.create :name => "Pavlova", :price => 4, :description => "It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg"
p3 = Product.create :name => "Cinco De Chicka Salad", :price => 9, :description => "Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg"
p4 = Product.create :name => "Moodle Salad", :price => 11, :description => "Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg"
p5 = Product.create :name => "Buddha Bowl Salad (VG)", :price => 12, :description => "Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel. ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg"
p6 = Product.create :name => "The Hulk", :price => 13, :description => "Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg"
p7 = Product.create :name => "Almighty Acai", :price => 7, :description => "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg"
p8 = Product.create :name => "Kale Caesar Salad", :price => 8, :description => "Chicken Caesar salad, kale and cos lettuce, crispy bacon, a boiled egg, sourdough croutons and shaved parmesan with a Greek yoghurt ranch dressing. ",:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg"

s1.products << p1
s1.products << p2
s1.products << p3
s1.products << p4
s1.products << p5
s1.products << p6
s1.products << p7
s1.products << p8


p "Products count: #{Product.all.count}"

Order.destroy_all

o1 = Order.create :name => "FirstOrder", :user_id => p1.id

p "Order count: #{Order.all.count}"

LineItem.destroy_all

l1 = LineItem.create :product_id => p1.id , :order_id => o1.id , :quantity => 5 , :price => (p1.price * 5)


p "LineItem count: #{LineItem.all.count}"
