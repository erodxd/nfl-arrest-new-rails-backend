# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Arrest.destroy_all
Player.destroy_all

response = RestClient.get 'http://nflarrest.com/api/v1/player'
newResponse = JSON.parse(response)

newResponse.each do |player|
    Player.create(name: player["Name"], team: player["Team_name"], team_city: player["Team_city"], position: player["Position"])
    #byebug
    second_response = RestClient.get 'http://nflarrest.com/api/v1/player/arrests/' + player["Name"].gsub(" ", "%20")
    secondNewResponse = JSON.parse(second_response)
    secondNewResponse.each do |arrest_info|
        #byebug
        Arrest.create(date: arrest_info["Date"], name: arrest_info["Name"], category: arrest_info["Category"], description: arrest_info["Description"])
        end
end