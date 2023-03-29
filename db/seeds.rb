puts "seeding started"

require 'faker'


10.times do
  hero = Hero.create(
    name: Faker::Name.name,
    super_name: Faker::Superhero.name
  )

  
  rand(1..3).times do
    power = Power.create(
      name: Faker::Superhero.power,
      description: Faker::Lorem.paragraph_by_chars(number: 20)
    )
    HeroPower.create(
      hero_id: hero.id,
      power_id: power.id,
      strength: ['Strong', 'Weak', 'Average'].sample
    )
  end
end


  puts "seeding superheroes completed"
  