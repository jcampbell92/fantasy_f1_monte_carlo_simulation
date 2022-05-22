# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seeds for races

Race.destroy_all

bahrain = Race.create(location: "Bahrain", sprint: false)
saudi = Race.create(location: "Saudi Arabia", sprint: false)
australia = Race.create(location: "Australia", sprint: false)
imola = Race.create(location: "Imola", sprint: true)
miami = Race.create(location: "Miami", sprint: false)
spain = Race.create(location: "Spain", sprint: false)

# Seeds for teams

Team.destroy_all

red_bull = Team.create(name: "Red Bull")
mercedes = Team.create(name: "Mercedes")
ferrari = Team.create(name: "Ferrari")
mclaren = Team.create(name: "Mclaren")
alpine = Team.create(name: "Alpine")
alpha_tauri = Team.create(name: "Alpha Tauri")
aston_martin = Team.create(name: "Aston Martin")
williams = Team.create(name: "Williams")
alfa_romeo = Team.create(name: "Alfa Romeo")
haas = Team.create(name: "Haas")


# Seeds for drivers

Driver.destroy_all

max = Driver.create(name: "Max Verstappen", team: red_bull)
sergio = Driver.create(name: "Sergio Perex", team: red_bull)

lewis = Driver.create(name: "Lewis Hamilton", team: mercedes)
george = Driver.create(name: "George Russell", team: mercedes)

charles = Driver.create(name: "Charles Leclerc", team: ferrari)
carlos = Driver.create(name: "Carlos Sainz", team: ferrari)

lando = Driver.create(name: "Lando Norris", team: mclaren)
daniel = Driver.create(name: "Daniel Ricciardo", team: mclaren)

fernando = Driver.create(name: "Fernando Alonso", team: alpine)
esteban = Driver.create(name: "Esteban Ocon", team: alpine)

pierre = Driver.create(name: "Pierre Gasly", team: alpha_tauri)
yuki = Driver.create(name: "Yuki Tsunoda", team: alpha_tauri)

seb = Driver.create(name: "Sebatien Vettel", team: aston_martin)
lance = Driver.create(name: "Lance Stroll", team: aston_martin)

alex = Driver.create(name: "Alex Albon", team: williams)
nicolas = Driver.create(name: "Nicolas Latifi", team: williams)

valterri = Driver.create(name: "Valterri Bottas", team: alfa_romeo)
zhou = Driver.create(name: "Ghanyu Zhou", team: alfa_romeo)

kevin = Driver.create(name: "Kevin Magnusson", team: haas)
mick = Driver.create(name: "Mick Schumacher", team: haas)

max.teammate_id = sergio
sergio.teammate_id = max

lewis.teammate_id = george
george.teammate_id = lewis

charles.teammate_id = carlos
carlos.teammate_id = charles

lando.teammate_id = daniel
daniel.teammate_id = lando

fernando.teammate_id = esteban
esteban.teammate_id = fernando

pierre.teammate_id = yuki
yuki.teammate_id = pierre

seb.teammate_id = lance
lance.teammate_id = seb

alex.teammate_id = nicolas
nicolas.teammate_id = alex

valterri.teammate_id = zhou
zhou.teammate_id = valterri

kevin.teammate_id = mick
mick.teammate_id = kevin



# seed for results

Result.destroy_all
# Race.all.each do |race|
#   Driver.all.each do |driver|
#     Result.create(race: race, driver: driver)
#   end
# end

  # Bahrain Results
  max_bahrain = Result.create(driver: max, race: bahrain, qualifying: 2, start_position: 2, finish_position: 1, fastest: false)
  sergio_bahrain = Result.create(driver: sergio, race: bahrain, qualifying: 4, start_position: 4, finish_position: 100, fastest: false)

  lewis_bahrain = Result.create(driver: lewis, race: bahrain, qualifying: 5, start_position: 5, finish_position: 3, fastest: false)
  george_bahrain = Result.create(driver: george, race: bahrain, qualifying: 9, start_position: 5, finish_position: 4, fastest: false)

  charles_bahrain = Result.create(driver: charles, race: bahrain, qualifying: 1, start_position: 1, finish_position: 1, fastest: true)
  carlos_bahrain = Result.create(driver: carlos, race: bahrain, qualifying: 3, start_position: 3, finish_position: 2, fastest: false)

  lando_bahrain = Result.create(driver: lando, race: bahrain, qualifying: 13, start_position: 13, finish_position: 15, fastest: false)
  daniel_bahrain = Result.create(driver: daniel, race: bahrain, qualifying: 18, start_position: 18, finish_position: 14, fastest: false)

  fernando_bahrain = Result.create(driver: fernando, race: bahrain, qualifying: 8, start_position: 8, finish_position: 9, fastest: false)
  esteban_bahrain = Result.create(driver: esteban, race: bahrain, qualifying: 11, start_position: 11, finish_position: 7, fastest: false)

  pierre_bahrain = Result.create(driver: pierre, race: bahrain, qualifying: 10, start_position: 10, finish_position: 101, fastest: false)
  yuki_bahrain = Result.create(driver: yuki, race: bahrain, qualifying: 16, start_position: 16, finish_position: 8, fastest: false)

  seb_bahrain = Result.create(driver: seb, race: bahrain, qualifying: 17, start_position: 17, finish_position: 17, fastest: false)
  lance_bahrain = Result.create(driver: lance, race: bahrain, qualifying: 19, start_position: 19, finish_position: 12, fastest: false)

  alex_bahrain = Result.create(driver: alex, race: bahrain, qualifying: 14, start_position: 14, finish_position: 13, fastest: false)
  nicolas_bahrain = Result.create(driver: nicolas, race: bahrain, qualifying: 20, start_position: 20, finish_position: 16, fastest: false)

  vaterri_bahrain = Result.create(driver: valterri, race: bahrain, qualifying: 6, start_position: 6, finish_position: 6, fastest: false)
  zhou_bahrain = Result.create(driver: zhou, race: bahrain, qualifying: 15, start_position: 15, finish_position: 10, fastest: false)

  kevin_bahrain = Result.create(driver: kevin, race: bahrain, qualifying: 7, start_position: 7, finish_position: 5, fastest: false)
  mick_bahrain = Result.create(driver: mick, race: bahrain, qualifying: 12, start_position: 12, finish_position: 11, fastest: false)


  #Saudi Arabia Results

  max_saudi = Result.create(driver: max, race: saudi, qualifying: 4, start_position: 4, finish_position: 1, fastest: false)
  sergio_saudi = Result.create(driver: sergio, race: saudi, qualifying: 1, start_position: 1, finish_position: 4, fastest: false)

  lewis_saudi = Result.create(driver: lewis, race: saudi, qualifying: 16, start_position: 16, finish_position: 10, fastest: false)
  george_saudi = Result.create(driver: george, race: saudi, qualifying: 6, start_position: 6, finish_position: 5, fastest: false)

  charles_saudi = Result.create(driver: charles, race: saudi, qualifying: 2, start_position: 2, finish_position: 2, fastest: true)
  carlos_saudi = Result.create(driver: carlos, race: saudi, qualifying: 3, start_position: 3, finish_position: 3, fastest: false)

  lando_saudi = Result.create(driver: lando, race: saudi, qualifying: 11, start_position: 11, finish_position: 7, fastest: false)
  daniel_saudi = Result.create(driver: daniel, race: saudi, qualifying: 12, start_position: 12, finish_position: 101, fastest: false)

  fernando_saudi = Result.create(driver: fernando, race: saudi, qualifying: 7, start_position: 7, finish_position: 101, fastest: false)
  esteban_saudi = Result.create(driver: esteban, race: saudi, qualifying: 5, start_position: 5, finish_position: 6, fastest: false)

  pierre_saudi = Result.create(driver: pierre, race: saudi, qualifying: 9, start_position: 9, finish_position: 8, fastest: false)
  yuki_saudi = Result.create(driver: yuki, race: saudi, qualifying: 101, start_position: 19, finish_position: 101, fastest: false)

  seb_saudi = Result.create(driver: seb, race: saudi, qualifying: 18, start_position: 17, finish_position: 12, fastest: false)
  lance_saudi = Result.create(driver: lance, race: saudi, qualifying: 15, start_position: 13, finish_position: 13, fastest: false)

  alex_saudi = Result.create(driver: alex, race: saudi, qualifying: 17, start_position: 16, finish_position: 14, fastest: false)
  nicolas_saudi = Result.create(driver: nicolas, race: saudi, qualifying: 19, start_position: 18, finish_position: 101, fastest: false)

  vaterri_saudi = Result.create(driver: valterri, race: saudi, qualifying: 8, start_position: 8, finish_position: 101, fastest: false)
  zhou_bahrain = Result.create(driver: zhou, race: saudi, qualifying: 13, start_position: 12, finish_position: 11, fastest: false)

  kevin_saudi = Result.create(driver: kevin, race: saudi, qualifying: 10, start_position: 10, finish_position: 9, fastest: false)
  mick_saudi = Result.create(driver: mick, race: saudi, qualifying: 14, start_position: 101, finish_position: 101, fastest: false)


  # Australia results

  Result.create(driver: max, race: australia, qualifying: 2, start_position: 2, finish_position: 100, fastest: false)
  Result.create(driver: sergio, race: australia, qualifying: 3, start_position: 3, finish_position: 2, fastest: false)

  Result.create(driver: lewis, race: australia, qualifying: 5, start_position: 5, finish_position: 4, fastest: false)
  Result.create(driver: george, race: australia, qualifying: 6, start_position: 6, finish_position: 3, fastest: false)

  Result.create(driver: charles, race: australia, qualifying: 1, start_position: 1, finish_position: 1, fastest: true)
  Result.create(driver: carlos, race: australia, qualifying: 9, start_position: 9, finish_position: 100, fastest: false)

  Result.create(driver: lando, race: australia, qualifying: 4, start_position: 11, finish_position: 5, fastest: false)
  Result.create(driver: daniel, race: australia, qualifying: 7, start_position: 7, finish_position: 6, fastest: false)

  Result.create(driver: fernando, race: australia, qualifying: 10, start_position: 10, finish_position: 17, fastest: false)
  Result.create(driver: esteban, race: australia, qualifying: 8, start_position: 8, finish_position: 7, fastest: false)

  Result.create(driver: pierre, race: australia, qualifying: 11, start_position: 11, finish_position: 9, fastest: false)
  Result.create(driver: yuki, race: australia, qualifying: 13, start_position: 13, finish_position: 15, fastest: false)

  Result.create(driver: seb, race: australia, qualifying: 17, start_position: 17, finish_position: 100, fastest: false)
  Result.create(driver: lance, race: australia, qualifying: 101, start_position: 19, finish_position: 12, fastest: false)

  Result.create(driver: alex, race: australia, qualifying: 101, start_position: 20, finish_position: 10, fastest: false)
  Result.create(driver: nicolas, race: australia, qualifying: 18, start_position: 18, finish_position: 16, fastest: false)

  Result.create(driver: valterri, race: australia, qualifying: 12, start_position: 12, finish_position: 8, fastest: false)
  Result.create(driver: zhou, race: australia, qualifying: 14, start_position: 14, finish_position: 11, fastest: false)

  Result.create(driver: kevin, race: australia, qualifying: 16, start_position: 16, finish_position: 14, fastest: false)
  Result.create(driver: mick, race: australia, qualifying: 15, start_position: 15, finish_position: 13, fastest: false)

  # Imola Results

  Result.create(driver: max, race: australia, qualifying: 1, start_position: 1, finish_position: 1, fastest: true)
  Result.create(driver: sergio, race: australia, qualifying: 7, start_position: 3, finish_position: 2, fastest: false)

  Result.create(driver: lewis, race: australia, qualifying: 13, start_position: 14, finish_position: 13, fastest: false)
  Result.create(driver: george, race: australia, qualifying: 5, start_position: 11, finish_position: 4, fastest: false)

  Result.create(driver: charles, race: australia, qualifying: 2, start_position: 2, finish_position: 6, fastest: false)
  Result.create(driver: carlos, race: australia, qualifying: 10, start_position: 4, finish_position: 101, fastest: false)

  Result.create(driver: lando, race: australia, qualifying: 3, start_position: 5, finish_position: 3, fastest: false)
  Result.create(driver: daniel, race: australia, qualifying: 6, start_position: 6, finish_position: 18, fastest: false)

  Result.create(driver: fernando, race: australia, qualifying: 5, start_position: 9, finish_position: 101, fastest: false)
  Result.create(driver: esteban, race: australia, qualifying: 19, start_position: 16, finish_position: 14, fastest: false)

  Result.create(driver: pierre, race: australia, qualifying: 17, start_position: 17, finish_position: 12, fastest: false)
  Result.create(driver: yuki, race: australia, qualifying: 16, start_position: 12, finish_position: 7, fastest: false)

  Result.create(driver: seb, race: australia, qualifying: 9, start_position: 13, finish_position: 8, fastest: false)
  Result.create(driver: lance, race: australia, qualifying: 15, start_position: 15, finish_position: 10, fastest: false)

  Result.create(driver: alex, race: australia, qualifying: 101, start_position: 18, finish_position: 11, fastest: false)
  Result.create(driver: nicolas, race: australia, qualifying: 18, start_position: 19, finish_position: 16, fastest: false)

  Result.create(driver: valterri, race: australia, qualifying: 8, start_position: 7, finish_position: 5, fastest: false)
  Result.create(driver: zhou, race: australia, qualifying: 14, start_position: 20, finish_position: 15, fastest: false)

  Result.create(driver: kevin, race: australia, qualifying: 4, start_position: 8, finish_position: 9, fastest: false)
  Result.create(driver: mick, race: australia, qualifying: 12, start_position: 10, finish_position: 17, fastest: false)
