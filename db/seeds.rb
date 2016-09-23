
User.destroy_all

u1 = User.create name: 'Priyanka', email: 'priyanks@ga.co', password: 'chicken', password_confirmation: 'chicken'
u2 = User.create name: 'JongBAE', email: 'jongbae@ga.co', password: 'chicken', password_confirmation: 'chicken', admin: true
u3 = User.create name: 'Lucas', email: 'lucas@ga.co', password: 'chicken', password_confirmation: 'chicken'

### START test user layer
u4 = User.create name: 'tester1', email: 'tester1@ga.co', password: 'chicken', password_confirmation: 'chicken'
u5 = User.create name: 'tester2', email: 'tester2@ga.co', password: 'chicken', password_confirmation: 'chicken'
u6 = User.create name: 'tester3', email: 'tester3@ga.co', password: 'chicken', password_confirmation: 'chicken'
u7 = User.create name: 'tester4', email: 'tester4@ga.co', password: 'chicken', password_confirmation: 'chicken'
u8 = User.create name: 'tester5', email: 'tester5@ga.co', password: 'chicken', password_confirmation: 'chicken'
u9 = User.create name: 'tester6', email: 'tester6@ga.co', password: 'chicken', password_confirmation: 'chicken'
u10 = User.create name: 'tester7', email: 'lucas7@ga.co', password: 'chicken', password_confirmation: 'chicken'
u11 = User.create name: 'tester8', email: 'tester8@ga.co', password: 'chicken', password_confirmation: 'chicken'
u12 = User.create name: 'tester9', email: 'tester9@ga.co', password: 'chicken', password_confirmation: 'chicken'
u13 = User.create name: 'tester10', email: 'tester10@ga.co', password: 'chicken', password_confirmation: 'chicken'
u14 = User.create name: 'tester11', email: 'tester11@ga.co', password: 'chicken', password_confirmation: 'chicken'
u15 = User.create name: 'tester12', email: 'tester12@ga.co', password: 'chicken', password_confirmation: 'chicken'
### test user layer END


p "User Count: #{User.all.count} "


Shop.destroy_all


s1 = Shop.create name: 'The Fine Food Store ', description: "When it comes to family, actions speak louder than words. We care about our extended families \u2013 our customers, staff, suppliers and community. We are involved, engaged and we always behave with integrity.", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325016/6d68bbd502a2dbbcde2d44b4af84b1ed_ksxswl.jpg', :latlng => "-33.858407,151.2064343"

s2 = Shop.create name: 'Hunter Connection International Food Court', description: 'our menu is versatile and constantly evolving, embracing the best of regional and rural cuisines to satisfy even the most discerning of palates.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325030/ultimo-coffee_q5c15s.jpg'

s3 = Shop.create :name => "The Fine Food Store ", :description => "When it comes to family, actions speak louder than words. We care about our extended families – our customers, staff, suppliers and community. We are involved, engaged and we always behave with integrity." ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325016/6d68bbd502a2dbbcde2d44b4af84b1ed_ksxswl.jpg", :latlng => "-33.8660109, 151.2054294"

s4 = Shop.create :name => "Hunter Connection International Food Court", :description => "our menu is versatile and constantly evolving, embracing the best of regional and rural cuisines to satisfy even the most discerning of palates.  " ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325030/ultimo-coffee_q5c15s.jpg", :latlng => "-33.8660109, 151.2054294"

s5 = Shop.create :name => "Westpac Place Food Court", :description => "THIS FOOD COURT SHOP IS LOCATED IN THE EXTREMELY BUSY WESTPAC PLACE WITH SOME 6500 EMPLOYEES JUST IN THE BUILIDNG ABOVE. " ,:image => "http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474325024/cabukee-counter_kqvvgl.png", :latlng => "-33.8660109, 151.2054294"

p "Shops Count: #{Shop.all.count}"

Product.destroy_all

p1 = Product.create name: 'Meat Pie', price: 5, description: 'A meat pie is a pie with a filling of meat and often other savory ingredients.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg'

p2 = Product.create name: 'Pavlova', price: 4, description: 'It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg'

p3 = Product.create name: 'Cinco De Chicka Salad', price: 9, description: 'Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg'

p4 = Product.create name: 'Moodle Salad', price: 11, description: 'Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg'

p5 = Product.create name: 'Buddha Bowl Salad', price: 12, description: 'Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg'

p6 = Product.create name: 'The Hulk', price: 13, description: 'Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg'

p7 = Product.create name: 'Almighty Acai', price: 7, description: "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg'

p8 = Product.create name: 'LAMINGTON', price: 8, description: 'made from squares of sponge cake coated in an outer layer of chocolate (or sometimes raspberry) sauce and rolled in desiccated coconut.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg'

s1.products << p1
s1.products << p2
s1.products << p3
s1.products << p4
s1.products << p5
s1.products << p6
s1.products << p7
s1.products << p8

### START test products layer

# for shop 2
p9 = Product.create name: 'Meat Pie', price: 5, description: 'A meat pie is a pie with a filling of meat and often other savory ingredients.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg'

p10 = Product.create name: 'Pavlova', price: 4, description: 'It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg'

p11 = Product.create name: 'Cinco De Chicka Salad', price: 9, description: 'Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg'

p12 = Product.create name: 'Moodle Salad', price: 11, description: 'Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg'

p13 = Product.create name: 'Buddha Bowl Salad', price: 12, description: 'Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg'

p14 = Product.create name: 'The Hulk', price: 13, description: 'Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg'

p15 = Product.create name: 'Almighty Acai', price: 7, description: "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg'

p16 = Product.create name: 'LAMINGTON', price: 8, description: 'made from squares of sponge cake coated in an outer layer of chocolate (or sometimes raspberry) sauce and rolled in desiccated coconut.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg'

s2.products << p9
s2.products << p10
s2.products << p11
s2.products << p12
s2.products << p13
s2.products << p14
s2.products << p15
s2.products << p16

# for shop 3
p17 = Product.create name: 'Meat Pie', price: 5, description: 'A meat pie is a pie with a filling of meat and often other savory ingredients.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg'

p18 = Product.create name: 'Pavlova', price: 4, description: 'It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg'

p19 = Product.create name: 'Cinco De Chicka Salad', price: 9, description: 'Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg'

p20 = Product.create name: 'Moodle Salad', price: 11, description: 'Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg'

p21 = Product.create name: 'Buddha Bowl Salad', price: 12, description: 'Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg'

p22 = Product.create name: 'The Hulk', price: 13, description: 'Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg'

p23 = Product.create name: 'Almighty Acai', price: 7, description: "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg'

p24 = Product.create name: 'LAMINGTON', price: 8, description: 'made from squares of sponge cake coated in an outer layer of chocolate (or sometimes raspberry) sauce and rolled in desiccated coconut.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg'

s3.products << p17
s3.products << p18
s3.products << p19
s3.products << p20
s3.products << p21
s3.products << p22
s3.products << p23
s3.products << p24


# for shop 4
p25 = Product.create name: 'Meat Pie', price: 5, description: 'A meat pie is a pie with a filling of meat and often other savory ingredients.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg'

p26 = Product.create name: 'Pavlova', price: 4, description: 'It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg'

p27 = Product.create name: 'Cinco De Chicka Salad', price: 9, description: 'Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg'

p28 = Product.create name: 'Moodle Salad', price: 11, description: 'Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg'

p29 = Product.create name: 'Buddha Bowl Salad', price: 12, description: 'Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg'

p30 = Product.create name: 'The Hulk', price: 13, description: 'Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg'

p31 = Product.create name: 'Almighty Acai', price: 7, description: "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg'

p32 = Product.create name: 'LAMINGTON', price: 8, description: 'made from squares of sponge cake coated in an outer layer of chocolate (or sometimes raspberry) sauce and rolled in desiccated coconut.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg'

s4.products << p25
s4.products << p26
s4.products << p27
s4.products << p28
s4.products << p29
s4.products << p30
s4.products << p31
s4.products << p32

# for shop 5
p33 = Product.create name: 'Meat Pie', price: 5, description: 'A meat pie is a pie with a filling of meat and often other savory ingredients.  ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327302/0b8c3cdf67e5044cb640c8fa4464edf4_vx2ajg.jpg'

p34 = Product.create name: 'Pavlova', price: 4, description: 'It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and,  whipped cream ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474327311/0723b338d9fa70d5a92ee496034c9b61_opu65z.jpg'

p35 = Product.create name: 'Cinco De Chicka Salad', price: 9, description: 'Mexican chicken salad, mixed and cos lettuce, black beans, capsicum, char grilled corn, avocado, baked tortilla chips and lime pesto vinaigrette. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420052/f4d0d62cbaaf7b3eee5c00aff8bec931_se7ccc.jpg'

p36 = Product.create name: 'Moodle Salad', price: 11, description: 'Grilled beef, soba noodle salad, mixed lettuce, steamed edamame, avocado, cucumber, black sesame seeds and sesame seed dressing. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420092/b5c093e719bff7678cecfcbe6578b1ce_zkkzgi.jpg'

p37 = Product.create name: 'Buddha Bowl Salad', price: 12, description: 'Kale, quinoa, roasted pumpkin, sweet potato, broccoli, Spanish onion, black bean, hummus and turmeric tahini dressing with gluten free falafel. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420116/8c1df536750195780dcc0f9cae5c4a05_fil7ig.jpg'

p38 = Product.create name: 'The Hulk', price: 13, description: 'Kiwi, baby spinach, kale, super greens powder, chia, raw honey and almond milk. ', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420085/b4010c11f71af15169ba8b9426cd490f_eddjmm.jpg'

p39 = Product.create name: 'Almighty Acai', price: 7, description: "Frozen acai, banana, mixed berries, vanilla protein and coconut water.
 ", image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420105/53a6dbcb78694342d396d853f92bcda1_qeoqlb.jpg'

p40 = Product.create name: 'LAMINGTON', price: 8, description: 'made from squares of sponge cake coated in an outer layer of chocolate (or sometimes raspberry) sauce and rolled in desiccated coconut.', image: 'http://res.cloudinary.com/dvhmkrgs2/image/upload/v1474420463/recipe-lab-kale-caesar-superJumbo_omn8kp.jpg'

s5.products << p33
s5.products << p34
s5.products << p35
s5.products << p36
s5.products << p37
s5.products << p38
s5.products << p39
s5.products << p40
### test products layer END



p "Products count: #{Product.all.count}"

Order.destroy_all

# o1 = Order.create name: 'FirstOrder', user_id: u1.id
#

### START orders layer

# for user4
o1 = Order.create name: u4.name + Time.now.to_s, user_id: u4.id
o2 = Order.create name: u4.name + Time.now.to_s, user_id: u4.id
o3 = Order.create name: u4.name + Time.now.to_s, user_id: u4.id

# for user5
o4 = Order.create name: u5.name + Time.now.to_s, user_id: u5.id
o5 = Order.create name: u5.name + Time.now.to_s, user_id: u5.id
o6 = Order.create name: u5.name + Time.now.to_s, user_id: u5.id

# for user6
o7 = Order.create name: u6.name + Time.now.to_s, user_id: u6.id
o8 = Order.create name: u6.name + Time.now.to_s, user_id: u6.id
o9 = Order.create name: u6.name + Time.now.to_s, user_id: u6.id

# for user7
o10 = Order.create name: u7.name + Time.now.to_s, user_id: u7.id
o11 = Order.create name: u7.name + Time.now.to_s, user_id: u7.id
o12 = Order.create name: u7.name + Time.now.to_s, user_id: u7.id

# for user8
o13 = Order.create name: u8.name + Time.now.to_s, user_id: u8.id
o14 = Order.create name: u8.name + Time.now.to_s, user_id: u8.id
o15 = Order.create name: u8.name + Time.now.to_s, user_id: u8.id

# for user9
o16 = Order.create name: u9.name + Time.now.to_s, user_id: u9.id
o17 = Order.create name: u9.name + Time.now.to_s, user_id: u9.id
o18 = Order.create name: u9.name + Time.now.to_s, user_id: u9.id

# for user10
o19 = Order.create name: u10.name + Time.now.to_s, user_id: u10.id
o20 = Order.create name: u10.name + Time.now.to_s, user_id: u10.id
# o21 = Order.create name: u10.name + Time.now.to_s, user_id: u10.id
#
#
# # for user11
# o22 = Order.create name: u11.name + Time.now.to_s, user_id: u11.id
# o23 = Order.create name: u11.name + Time.now.to_s, user_id: u11.id
# o24 = Order.create name: u11.name + Time.now.to_s, user_id: u11.id
#
#
# # for user12
# o25 = Order.create name: u12.name + Time.now.to_s, user_id: u12.id
# o26 = Order.create name: u12.name + Time.now.to_s, user_id: u12.id
# o27 = Order.create name: u12.name + Time.now.to_s, user_id: u12.id
#
#
# # for user13
# o28 = Order.create name: u13.name + Time.now.to_s, user_id: u13.id
# o29 = Order.create name: u13.name + Time.now.to_s, user_id: u13.id
# o30 = Order.create name: u13.name + Time.now.to_s, user_id: u13.id
#
#
# # for user14
# o31 = Order.create name: u14.name + Time.now.to_s, user_id: u14.id
# o32 = Order.create name: u14.name + Time.now.to_s, user_id: u14.id
# o33 = Order.create name: u14.name + Time.now.to_s, user_id: u14.id
#
#
# # for user15
# o34 = Order.create name: u15.name + Time.now.to_s, user_id: u15.id
# o35 = Order.create name: u15.name + Time.now.to_s, user_id: u15.id
# o36 = Order.create name: u15.name + Time.now.to_s, user_id: u15.id
### test orders layer END

p "Order count: #{Order.all.count}"
LineItem.destroy_all

### START orders layer

# o1 for line item
l1 = LineItem.create product_id: p1.id, order_id: o1.id, quantity: 1, price: (p1.price )
l2 = LineItem.create product_id: p2.id, order_id: o1.id, quantity: 1, price: (p2.price )


# o2 for line item
l3 = LineItem.create product_id: p3.id, order_id: o2.id, quantity: 1, price: (p3.price )
l4 = LineItem.create product_id: p3.id, order_id: o2.id, quantity: 1, price: (p3.price )

# o3 for line item
l5 = LineItem.create product_id: p5.id, order_id: o3.id, quantity: 1, price: (p5.price )
l6 = LineItem.create product_id: p8.id, order_id: o3.id, quantity: 1, price: (p8.price )

# o4 for line item
l7 = LineItem.create product_id: p7.id, order_id: o4.id, quantity: 1, price: (p7.price )
l8 = LineItem.create product_id: p13.id, order_id: o4.id, quantity: 1, price: (p13.price )

# o5 for line item
l9 = LineItem.create product_id: p9.id, order_id: o5.id, quantity: 1, price: (p9.price )
l10 = LineItem.create product_id: p4.id, order_id: o5.id, quantity: 1, price: (p4.price )

# o6 for line item
l11 = LineItem.create product_id: p11.id, order_id: o6.id, quantity: 1, price: (p11.price )
l12 = LineItem.create product_id: p12.id, order_id: o6.id, quantity: 1, price: (p12.price )

# o7 for line item
l13 = LineItem.create product_id: p7.id, order_id: o7.id, quantity: 1, price: (p7.price )
l14 = LineItem.create product_id: p14.id, order_id: o7.id, quantity: 1, price: (p14.price )

# o8 for line item
l15 = LineItem.create product_id: p15.id, order_id: o8.id, quantity: 1, price: (p15.price )
l16 = LineItem.create product_id: p16.id, order_id: o8.id, quantity: 1, price: (p16.price )
### test orders layer END

# o9 for line item
l17 = LineItem.create product_id: p17.id, order_id: o9.id, quantity: 1, price: (p17.price )
l18 = LineItem.create product_id: p18.id, order_id: o9.id, quantity: 1, price: (p18.price )

# o10 for line item
l19 = LineItem.create product_id: p1.id, order_id: o10.id, quantity: 1, price: (p1.price )
l20 = LineItem.create product_id: p20.id, order_id: o10.id, quantity: 1, price: (p20.price )

# o11 for line item
l21 = LineItem.create product_id: p21.id, order_id: o11.id, quantity: 1, price: (p21.price )
l22 = LineItem.create product_id: p22.id, order_id: o11.id, quantity: 1, price: (p22.price )

# o12 for line item
l23 = LineItem.create product_id: p23.id, order_id: o12.id, quantity: 1, price: (p23.price )
l24 = LineItem.create product_id: p24.id, order_id: o12.id, quantity: 1, price: (p24.price )

# o13 for line item
l25 = LineItem.create product_id: p25.id, order_id: o13.id, quantity: 1, price: (p25.price )
l26 = LineItem.create product_id: p26.id, order_id: o13.id, quantity: 1, price: (p26.price )

# o14 for line item
l27 = LineItem.create product_id: p27.id, order_id: o14.id, quantity: 1, price: (p27.price )
l28 = LineItem.create product_id: p28.id, order_id: o14.id, quantity: 1, price: (p28.price )

# o15 for line item
l29 = LineItem.create product_id: p29.id, order_id: o15.id, quantity: 1, price: (p29.price )
l30 = LineItem.create product_id: p30.id, order_id: o15.id, quantity: 1, price: (p30.price )

# o16 for line item
l31 = LineItem.create product_id: p31.id, order_id: o16.id, quantity: 1, price: (p31.price )
l32 = LineItem.create product_id: p32.id, order_id: o16.id, quantity: 1, price: (p32.price )

# o17 for line item
l33 = LineItem.create product_id: p33.id, order_id: o17.id, quantity: 1, price: (p33.price )
l34 = LineItem.create product_id: p34.id, order_id: o17.id, quantity: 1, price: (p34.price )

# o18 for line item
l35 = LineItem.create product_id: p35.id, order_id: o18.id, quantity: 1, price: (p33.price )
l36 = LineItem.create product_id: p36.id, order_id: o18.id, quantity: 1, price: (p36.price )

# o19 for line item
l37 = LineItem.create product_id: p37.id, order_id: o19.id, quantity: 1, price: (p37.price )
l38 = LineItem.create product_id: p38.id, order_id: o19.id, quantity: 1, price: (p38.price )

# o20 for line item
l39 = LineItem.create product_id: p39.id, order_id: o20.id, quantity: 1, price: (p39.price )
l40 = LineItem.create product_id: p40.id, order_id: o20.id, quantity: 1, price: (p40.price )

### test orders layer END

p "LineItem count: #{LineItem.all.count}"
