# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "This is the fucking start"

User.destroy_all
Property.destroy_all
Room.destroy_all
RoomElement.destroy_all
Lease.destroy_all
Comment.destroy_all

puts "This is where I fucking cleared all the data"

jl = User.create(email: 'hi@gmail.com', password: 'password')

# property = Property.new(address: "666 Sin St, Melbourne", square_meter: 66.6, furnished: false)

# jl.properties << property

# lease = Lease.create(user_id: jl.id, property_id: property.id, start_date: "16/08/88", end_date: "22/11/18")

# conditionreport1 = ConditionReport.create(owner_signed: false, tenant_signed: false, lease_id: lease.id)

# puts "This is where I defined the lease and condition report, fucking"

# bedroom_one = Room.create(name: "Bedroom 1", property_id: property.id)
# bedroom_two = Room.create(name: "Bedroom 2", property_id: property.id)
# living = Room.create(name: "Living Area", property_id: property.id)
# kitchen = Room.create(name: "Kitchen", property_id: property.id)
# bathroom = Room.create(name: "Bathroom - main", property_id: property.id)
# ensuite = Room.create(name: "Ensuite", property_id: property.id)

# door = RoomElement.create(name: "Door", room_id: bedroom_one.id)
# floor = RoomElement.create(name: "Floor", room_id: bedroom_one.id)
# window = RoomElement.create(name: "Window", room_id: bedroom_one.id)
# ceiling = RoomElement.create(name: "Ceiling", room_id: bedroom_one.id)
# curtain = RoomElement.create(name: "Curtain - 2, black", room_id: bedroom_one.id)
# fan = RoomElement.create(name: "Fan - Ceiling", room_id: bedroom_one.id)

# door = RoomElement.create(name: "Door", room_id: bedroom_two.id)
# floor = RoomElement.create(name: "Door", room_id: bedroom_two.id)
# ceiling = RoomElement.create(name: "Door", room_id: bedroom_two.id)
# fan = RoomElement.create(name: "Door", room_id: bedroom_two.id)

# puts "This is where I define the fucking comments"

# c1 = Comment.create(text_comment: "Black scuff marks, near skirting board, back left corner", room_element_id: ceiling.id, condition_report_id: conditionreport1.id, user_id: jl.id, state: "Working")
# c1.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
# c1.save

# c2 = Comment.create(text_comment: "Fan doesn't work on highest speed", room_element_id: fan.id, condition_report_id: conditionreport1.id, user_id: jl.id, state: "clean")
# c2.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
# c2.save

# puts "Fuck off"

# puts "This is the end of the first fucking property"

# puts "This is now the start of the second fucking property"

property = Property.new(address: "41 Stewart St, Richmond", square_meter: 800, furnished: true)

jl.properties << property

lease = Lease.create(user_id: jl.id, property_id: property.id, start_date: "22/11/00", end_date: "01/01/17")

conditionreport2 = ConditionReport.create(owner_signed: false, tenant_signed: false, lease_id: lease.id)

puts "This is the define of the condition and lease, fucking"

reception = Room.create(name: "Reception", property_id: property.id)
kitchen = Room.create(name: "Kitchen", property_id: property.id)
bathroom = Room.create(name: "Bathroom", property_id: property.id)
pool_room = Room.create(name: "Pool Room", property_id: property.id)
breakout = Room.create(name: "Breakout Space", property_id: property.id)

door_p = RoomElement.create(name: "Door", room_id: pool_room.id)
elevator = RoomElement.create(name: "Elevator", room_id: breakout.id)

walls = RoomElement.create(name: "Walls", room_id: breakout.id)
pooltable = RoomElement.create(name: "Pool table", room_id: breakout.id)
pingpongtable = RoomElement.create(name:"Ping pong table", room_id: breakout.id)
couch = RoomElement.create(name: "Modular couch", room_id: breakout.id)
armchair = RoomElement.create(name: "Leather arm chair", room_id: breakout.id)
tv = RoomElement.create(name: "Television", room_id: breakout.id)
barfridge = RoomElement.create(name: "Bar fridge", room_id: breakout.id)
dog = RoomElement.create(name: "Dog", room_id: breakout.id)

frontdesk = RoomElement.create(name: "Front desk", room_id: reception.id)
couch1 = RoomElement.create(name: "Couch - yellow", room_id: reception.id)
couch2 = RoomElement.create(name: "Couch - brown leather ", room_id: reception.id)

comfridge = RoomElement.create(name: "Double fridge", room_id: kitchen.id)
fridge = RoomElement.create(name: "Fridge", room_id: kitchen.id)
table = RoomElement.create(name: "Table", room_id: kitchen.id)
microwave = RoomElement.create(name: "Microwave", room_id: kitchen.id)

mtoilet = RoomElement.create(name: "Toilet - Male", room_id: bathroom.id)
ftoilet = RoomElement.create(name: "Toilet - Female", room_id: bathroom.id)

puts "I just finished defining the fucking room_elements, and now im going to start on the comments"

comment = Comment.create(text_comment: "Cute dog running around everywhere", room_element_id: dog.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032685/dog-2.jpg"
comment.save

comment = Comment.create(text_comment: "Reception desk. Comes with a community manager.", room_element_id: frontdesk.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Not working")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1542878565/image4.jpg"
comment.save

comment = Comment.create(text_comment: "Paint peeling from the wall", room_element_id: walls.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Not clean Working Damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032684/wall4.jpg"
comment.save

comment = Comment.create(text_comment: "Worn leather on the couch", room_element_id: couch2.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032802/couch-3.jpg"
comment.save

comment = Comment.create(text_comment: "Elevator problems : blocking half way down most of the time.", room_element_id: elevator.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Not working")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032687/elevator-2.jpg"
comment.save

comment = Comment.create(text_comment: "Something weird with this pool table", room_element_id: pooltable.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Not clean Not working Damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032686/Michael.jpg"
comment.save

comment = Comment.create(text_comment: "Panasonic tv bought in 2017", room_element_id: tv.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "Blue 'Killerspin' ping pong table. Comes with balls and ping-pong bats", room_element_id: pingpongtable.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "New table in mahogany wood. Comes with 6 chairs.", room_element_id: table.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "Bosch microwave.", room_element_id: microwave.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "Bosch fridge. Dimensions: 200x95", room_element_id: fridge.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "New yellow couch. Dimensions: 200x80, h:130", room_element_id: couch1.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "Bosch fridge. Dimensions: 200x95", room_element_id: comfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save

comment = Comment.create(text_comment: "Bar fridge. Dimensions: 100x200", room_element_id: barfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Clean Working Undamaged")
comment.save





puts "This is the end of this motherfucking seed file, snakes on a plane"









