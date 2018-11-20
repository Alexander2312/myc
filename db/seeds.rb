# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
room_elements = ["doors", "wall", "ceiling", "windows"]
room_elements.each do |name|
	RoomElement.create(name: name)
end

jl = User.create!(name: 'JL', email: 'tairtidhar01@gmail.com', password: 'password')

CR1 = ConditionReport.new(date_of_creation: '16/08/88', date_of_update: '17/11/18')
CR1.user = jl
buddha.remote_photo_url = "https://images.unsplash.com/photo-1522850888141-ed8cb70c9c4d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5a340b46c4f4db95174cfe57d2730f72&auto=format&fit=crop&w=634&q=80"
buddha.save
