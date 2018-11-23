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

property = Property.new(address: "666 Sin St, Melbourne", square_meter: 66.6, furnished: false)

jl.properties << property

lease = Lease.create(user_id: jl.id, property_id: property.id, start_date: "16/08/88", end_date: "22/11/18")

conditionreport1 = ConditionReport.create(owner_signed: false, tenant_signed: false, lease_id: lease.id)

puts "This is where I defined the lease and condition report, fucking"

bedroom_one = Room.create(name: "Bedroom 1", property_id: property.id)
bedroom_two = Room.create(name: "Bedroom 2", property_id: property.id)
living = Room.create(name: "Living Area", property_id: property.id)
kitchen = Room.create(name: "Kitchen", property_id: property.id)
bathroom = Room.create(name: "Bathroom - main", property_id: property.id)
ensuite = Room.create(name: "Ensuite", property_id: property.id)

door = RoomElement.create(name: "Door", room_id: bedroom_one.id)
floor = RoomElement.create(name: "Floor", room_id: bedroom_one.id)
window = RoomElement.create(name: "Window", room_id: bedroom_one.id)
ceiling = RoomElement.create(name: "Ceiling", room_id: bedroom_one.id)
curtain = RoomElement.create(name: "Curtain - 2, black", room_id: bedroom_one.id)
fan = RoomElement.create(name: "Fan - Ceiling", room_id: bedroom_one.id)

door = RoomElement.create(name: "Door", room_id: bedroom_two.id)
floor = RoomElement.create(name: "Door", room_id: bedroom_two.id)
ceiling = RoomElement.create(name: "Door", room_id: bedroom_two.id)
fan = RoomElement.create(name: "Door", room_id: bedroom_two.id)

puts "This is where I define the fucking comments"

c1 = Comment.create(text_comment: "Black scuff marks, near skirting board, back left corner", room_element_id: ceiling.id, condition_report_id: conditionreport1.id, user_id: jl.id, state: "Working")
c1.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
c1.save

c2 = Comment.create(text_comment: "Fan doesn't work on highest speed", room_element_id: fan.id, condition_report_id: conditionreport1.id, user_id: jl.id, state: "clean")
c2.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
c2.save

puts "Fuck off"

puts "This is the end of the first fucking property"

puts "This is now the start of the second fucking property"

property = Property.new(address: "41 Stewart St, Richmond", square_meter: 800, furnished: true)

jl.properties << property

lease = Lease.create(user_id: jl.id, property_id: property.id, start_date: "22/11/00", end_date: "01/01/17")

conditionreport2 = ConditionReport.create(owner_signed: false, tenant_signed: false, lease_id: lease.id)

puts "This is the define of the condition and lease, fucking"

reception = Room.create(name: "Reception", property_id: property.id)
breakout = Room.create(name: "Breakout Space", property_id: property.id)
kitchen = Room.create(name: "Kitchen", property_id: property.id)
bathroom = Room.create(name: "Bathroom", property_id: property.id)
boiler_room = Room.create(name: "Boiler Room", property_id: property.id)
elbow_room = Room.create(name: "Elbow Room", property_id: property.id)
green_room = Room.create(name: "Green Room", property_id: property.id)
pool_room = Room.create(name: "Pool Room", property_id: property.id)

door_r = RoomElement.create(name: "Door - Left", room_id: pool_room.id)
door_l = RoomElement.create(name: "Door - Right", room_id: pool_room.id)
door = RoomElement.create(name: "Door", room_id: green_room.id)
door = RoomElement.create(name: "Door", room_id: elbow_room.id)
slidingdoor = RoomElement.create(name: "Door", room_id: boiler_room.id)

ceiling = RoomElement.create(name: "Ceiling", room_id: pool_room.id)
walls = RoomElement.create(name: "Walls", room_id: pool_room.id)
floor = RoomElement.create(name: "Floor", room_id: pool_room.id)
lewagon = RoomElement.create(name: "Teachers and students", room_id: pool_room.id)

ceiling = RoomElement.create(name: "Ceiling", room_id: green_room.id)
walls = RoomElement.create(name: "Walls", room_id: green_room.id)
floor = RoomElement.create(name: "Floor", room_id: green_room.id)

ceiling = RoomElement.create(name: "Ceiling", room_id: elbow_room.id)
walls = RoomElement.create(name: "Walls", room_id: elbow_room.id)
floor = RoomElement.create(name: "Floor", room_id: elbow_room.id)

ceiling = RoomElement.create(name: "Ceiling", room_id: boiler_room.id)
walls = RoomElement.create(name: "Walls", room_id: boiler_room.id)
floor = RoomElement.create(name: "Floor", room_id: boiler_room.id)

pooltable = RoomElement.create(name: "Pool Table", room_id: breakout.id)
pingpongtable = RoomElement.create(name:"Ping Pong Table", room_id: breakout.id)
couch = RoomElement.create(name: "Modular Couch", room_id: breakout.id)
armchair = RoomElement.create(name: "Leather Arm Chair", room_id: breakout.id)
tv = RoomElement.create(name: "Television", room_id: breakout.id)
tvstand = RoomElement.create(name: "Television Stand", room_id: breakout.id)
bar = RoomElement.create(name: "Bar", room_id: breakout.id)
barfridge = RoomElement.create(name: "Bar Fridge", room_id: breakout.id)

frontdesk = RoomElement.create(name: "Front Desk", room_id: reception.id)
couch1 = RoomElement.create(name: "Couch - Yellow", room_id: reception.id)
couch2 = RoomElement.create(name: "Couch - Brown Leather ", room_id: reception.id)
smltable = RoomElement.create(name: "Coffee Table", room_id: reception.id)

comfridge = RoomElement.create(name: "Double Fridge", room_id: kitchen.id)
fridge = RoomElement.create(name: "Fridge", room_id: kitchen.id)
i9fridge = RoomElement.create(name: "i9 Staff Fridge", room_id: kitchen.id)
bench = RoomElement.create(name: "Bench", room_id: kitchen.id)
table = RoomElement.create(name: "Table", room_id: kitchen.id)
hightable = RoomElement.create(name: "High Table", room_id: kitchen.id)

mtoilet = RoomElement.create(name: "Toilet - Male", room_id: bathroom.id)
ftoilet = RoomElement.create(name: "Toilet - Female", room_id: bathroom.id)
msink = RoomElement.create(name: "Sink - Male", room_id: bathroom.id)
fsink = RoomElement.create(name: "Sink - Female", room_id: bathroom.id)
mshower = RoomElement.create(name: "Shower - Male", room_id: bathroom.id)
fshower = RoomElement.create(name: "Shower- Female", room_id: bathroom.id)

puts "I just finished defining the fucking room_elements, and now im going to start on the comments"

comment = Comment.create(text_comment: "Water stain on surface of table", room_element_id: pooltable.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "clean")
comment.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
comment.save

comment = Comment.create(text_comment: "Gashes on the surface from knife being used without a board", room_element_id: bench.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "clean")
comment.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
comment.save

comment = Comment.create(text_comment: "Cute dogs running around everywhere", room_element_id: frontdesk.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "clean")
comment.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
comment.save

comment = Comment.create(text_comment: "Cute students and teachers working late", room_element_id: lewagon.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "not clean working")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1542878121/image2-2.jpg"
comment.save

comment = Comment.create(text_comment: "Almost empty bar fridge", room_element_id: barfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "clean damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1542878566/image3.jpg"
comment.save


comment = Comment.create(text_comment: "Empty (as usual) reception desk", room_element_id: frontdesk.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "clean not working")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1542878565/image4.jpg"
comment.save


puts "This is the end of this motherfucking seed file, snakes on a plane"









