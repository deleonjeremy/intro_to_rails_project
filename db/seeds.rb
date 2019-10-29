# frozen_string_literal: true

Player.destroy_all
Team.destroy_all

25.times do
  team = Team.create(
    name: Faker::Sports::Basketball.unique.team
  )
  1.times do
    team.players
        .build(name: Faker::Sports::Basketball.unique.player)
        .save
  end
  11.times do
    team.players
        .build(name: Faker::Name.name)
        .save
  end
end

puts "Generated #{Team.count} teams"
puts "Generated #{Player.count} players"
