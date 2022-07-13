# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



cinema1 = Cinema.create(name: "City Gold", address: "Bapunagar, Ahmedabad")
p cinema1
cinema2 = Cinema.create(name: "Devi Multiplex", address: "Naroda, Ahmedabad")
p cinema2
cinema3 = Cinema.create(name: "Rajhans", address: "Nikol, Ahmedabad")
p cinema3

movie1 = Movie.create(name: "jugjugg jeeyo", description: "nice movie", duration: "2h 30m", language: "Hindi", movie_type: "Drama", release_date: "24/6/2022")
p movie1
movie2 = Movie.create(name: "Naadi Dosh", description: "nice movie", duration: "2h 11m",language: "Gujarati", movie_type: "Comedy/Romantic", release_date: "17/6/2022")
p movie2
movie3 = Movie.create(name: "RRR", description: "nice movie", duration: "2h 20m",language: "Hindi", movie_type: "Action/Drama", release_date: "13/3/2022")
p movie3

screen1 = Screen.create(screen_name: "screen1", total_seats: 120, cinema_id: 3)
p screen1
screen2 = Screen.create(screen_name: "screen2", total_seats: 160, cinema_id: 1)
p screen2
screen3 = Screen.create(screen_name: "screen3", total_seats: 120, cinema_id: 2)
p screen3


show1 = Show.create(show_time: "2022-06-30 09:59:33.701477526 +0530", amount: 100, screen_id: 1, movie_id: 1, cinema_id: 3)
p show1
show2 = Show.create(show_time: "2022-06-30 11:04:36.501762601 +0530", amount: 120, screen_id: 2, movie_id: 2, cinema_id: 3)
p show2
show3 = Show.create(show_time: "2022-06-30 09:59:33.701477526 +0530", amount: 100, screen_id: 3, movie_id: 3, cinema_id: 1)
p show3
show4 = Show.create(show_time: "2022-06-30 11:04:36.501762601 +0530", amount: 120, screen_id: 2, movie_id: 2, cinema_id: 1)
p show4

(3..120).each do |seat|
  p seat = Seat.create!(seat_number: "A#{seat}", screen_id: 1)
end
(1..160).each do |seat|
  p Seat.create!(seat_number: "B#{seat}", screen_id: 2)
end



