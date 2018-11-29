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
green_room = Room.create(name: "Green Room", property_id: property.id)
elbow_room = Room.create(name: "Elbow Room", property_id: property.id)
boiler_room = Room.create(name: "Boiler Room", property_id: property.id)

ceiling1 = RoomElement.create(name: "Doors/wall/ceiling", room_id: pool_room.id)
ceiling2 = RoomElement.create(name: "Doors/wall/ceiling", room_id: green_room.id)
ceiling3 = RoomElement.create(name: "Doors/wall/ceiling", room_id: elbow_room.id)
ceiling4 = RoomElement.create(name: "Doors/wall/ceiling", room_id: boiler_room.id)
floor = RoomElement.create(name: "Floor/floor coverings", room_id: breakout.id)

light1 = RoomElement.create(name: "Light fittings", room_id: pool_room.id)
light5 = RoomElement.create(name: "Light fittings", room_id: green_room.id)
light3 = RoomElement.create(name: "Light fittings", room_id: elbow_room.id)
light4 = RoomElement.create(name: "Light fittings", room_id: boiler_room.id)
light2 = RoomElement.create(name: "Light fittings", room_id: breakout.id)

elevator = RoomElement.create(name: "Elevator", room_id: breakout.id)
wall = RoomElement.create(name: "Breakout/wall/ceiling", room_id: breakout.id)

pooltable = RoomElement.create(name: "Pool table", room_id: breakout.id)
pingpongtable = RoomElement.create(name:"Ping pong table", room_id: breakout.id)
couch = RoomElement.create(name: "Modular couch", room_id: breakout.id)
armchair = RoomElement.create(name: "Leather arm chair", room_id: breakout.id)
tv = RoomElement.create(name: "TV and stand", room_id: breakout.id)
# tvstand = RoomElement.create(name: "Television stand", room_id: breakout.id)
barfridge = RoomElement.create(name: "Bar fridge", room_id: breakout.id)
sink = RoomElement.create(name: "Sink", room_id: kitchen.id)
desks = RoomElement.create(name: "Desks", room_id: breakout.id)


frontdesk = RoomElement.create(name: "Front desk", room_id: reception.id)
couch1 = RoomElement.create(name: "Couch - yellow", room_id: reception.id)
couch2 = RoomElement.create(name: "Couch - brown leather ", room_id: reception.id)
smltable = RoomElement.create(name: "Coffee table", room_id: reception.id)

comfridge = RoomElement.create(name: "Double fridge", room_id: kitchen.id)
fridge = RoomElement.create(name: "Fridge", room_id: kitchen.id)
table = RoomElement.create(name: "Table", room_id: kitchen.id)
microwave = RoomElement.create(name: "Microwave", room_id: kitchen.id)
shelving = RoomElement.create(name: "Shelving", room_id: kitchen.id)
coffee = RoomElement.create(name: "Coffee machine", room_id: kitchen.id)


mtoilet = RoomElement.create(name: "Toilet - Male", room_id: bathroom.id)
ftoilet = RoomElement.create(name: "Toilet - Female", room_id: bathroom.id)

comment = Comment.create(text_comment: "Brown leather arm chair x 2", room_element_id: armchair.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "Stainless steel, dish rack full of dishes, glasses stacked 20 high", room_element_id: sink.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543530438/dish.jpg"
comment.save

comment = Comment.create(text_comment: "White, melamine, fixed cube style, filled with tableware, missing forks and spoons", room_element_id: shelving.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Damaged")
comment.save

comment = Comment.create(text_comment: "Panasonic, flat screen, black with wooden stand", room_element_id: tv.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473593/TV.jpg"
comment.save

comment = Comment.create(text_comment: "Comes with a friendly Community Manager", room_element_id: frontdesk.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1542878565/image4.jpg"
comment.save

comment = Comment.create(text_comment: "Paint peeling from the wall", room_element_id: wall.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032684/wall4.jpg"
comment.save

comment = Comment.create(text_comment: "Material is worn with general wear and tear", room_element_id: couch2.id, condition_report_id: conditionreport2.id, user_id: jl.id, state: "Damaged")
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543032802/couch-3.jpg"
comment.save

comment = Comment.create(text_comment: "Pool table, with cues and balls", room_element_id: pooltable.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543395274/Pooltable.jpg"
comment.save

comment = Comment.create(text_comment: "Blue 'Killerspin' ping pong table, with balls and ping-pong paddles", room_element_id: pingpongtable.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473590/PingPong.jpg"
comment.save


comment = Comment.create(text_comment: "Mahogany wood, new condition, has 6 matching chairs", room_element_id: table.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543395272/Kitchen.jpg"
comment.save

comment = Comment.create(text_comment: "Bosch, stainless steel, model MJKLU8428 - note whiskey bottle fill levels", room_element_id: microwave.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543481887/microwave.jpg"
comment.save

comment = Comment.create(text_comment: "Bosch, white,  model JKLFUA81", room_element_id: fridge.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "Yellow couch, new condition. Dimensions: 200x90", room_element_id: couch1.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473587/Yellowcouch.jpg"
comment.save

comment = Comment.create(text_comment: "Bosch fridge, double glass door, white, model JMODFH8998", room_element_id: comfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "Bar fridge, stainless steel, model NFHJKU87348", room_element_id: barfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "White dome light fittings, suspended from the ceiling x 7", room_element_id: light2.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "Polished timber floor, some scuff marks, generally good condition", room_element_id: floor.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.save

comment = Comment.create(text_comment: "Wooden table top desks and chairs x 20", room_element_id: desks.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473584/Desksbreakout.jpg"
comment.save


comment = Comment.create(text_comment: "Tiny room with chairs, table and board.", room_element_id: ceiling2.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473586/green_room.jpg"
comment.save

comment = Comment.create(text_comment: "Circular couch, almost clean.", room_element_id: couch.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473590/Modular_couch.jpg"
comment.save


comment = Comment.create(text_comment: "Tiny room with chairs, table and board.", room_element_id: elbow_room.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473593/Elbow_room.jpg"
comment.save

comment = Comment.create(text_comment: "Elevator sometimes blocks half way down.", room_element_id: elevator.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473582/Elevator.jpg"
comment.save

comment = Comment.create(text_comment: "12 spotlights", room_element_id: light2.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473581/light.jpg"
comment.save

comment = Comment.create(text_comment: "Boiler room with a tv, a table and 15 chairs.", room_element_id: boiler_room.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543473581/Boiler_room.jpg"
comment.save

comment = Comment.create(text_comment: "Well working coffee machine", room_element_id: coffee.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543481884/coffeeJPG.jpg"
comment.save

comment = Comment.create(text_comment: "Double fridge. Thomson. Dimensions: 200x 120", room_element_id: comfridge.id, condition_report_id: conditionreport2.id, user_id: jl.id)
comment.remote_photo_url = "https://res.cloudinary.com/drppmfpas/image/upload/v1543481877/dfridge.jpg"
comment.save

puts "This is the end of this motherfucking seed file, snakes on a plane"

