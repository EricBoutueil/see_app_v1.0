# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed for DEV ENV"

Harbour.destroy_all
Type.destroy_all
Movement.destroy_all
User.destroy_all
puts "DB cleaned"

# Harbour

puts "Creating harbours seeds"
ajaccio = Harbour.create!(
  country: "France",
  name: "ajaccio",
  address: "ajaccio"
  )
bastia = Harbour.create!(
  country: "France",
  name: "bastia",
  address: "bastia"
  )
bayonne = Harbour.create!(
  country: "France",
  name: "bayonne",
  address: "bayonne"
  )
puts "done harbours seeds"

# Type

puts "Creating types seeds"

a = Type.create!( code: "a", tot_imp_exp: "exp", name: "tonnage brut total" )
a1 = Type.create!( code: "a1", tot_imp_exp: "imp", name: "tonnage brut total" )
a11 = Type.create!( code: "a11", tot_imp_exp: "imp", name: "vrac liquide" )
a2 = Type.create!( code: "a2", tot_imp_exp: "imp", name: "VL hors hydrocarbures" )
a26 = Type.create!( code: "a26", tot_imp_exp: "imp", name: "engrais" )
a3 = Type.create!( code: "a3", tot_imp_exp: "imp", name: "autres vracs solides" )
a3 = Type.create!( code: "a3", tot_imp_exp: "exp", name: "non vrac" )
a32 = Type.create!( code: "a32", tot_imp_exp: "imp", name: "conteneur roro (T)" )
a32 = Type.create!( code: "a32", tot_imp_exp: "exp", name: "roro hors cntr (T)" )
d = Type.create!( code: "d", tot_imp_exp: "imp", name: "plein (EVP)" )
d = Type.create!( code: "d", tot_imp_exp: "exp", name: "passagers" )
d1 = Type.create!( code: "d1", tot_imp_exp: "imp", name: "passagers" )
d1 = Type.create!( code: "d1", tot_imp_exp: "exp", name: "pax hors croisieres" )
d2 = Type.create!( code: "d2", tot_imp_exp: "imp", name: "pax hors croisieres" )
d3 = Type.create!( code: "d3", tot_imp_exp: "imp", name: "pax croisieres tete de ligne" )
d3 = Type.create!( code: "d3", tot_imp_exp: "exp", name: "pax croisieres escale" )
e = Type.create!( code: "e", tot_imp_exp: "imp", name: "pax croisieres escale" )
e = Type.create!( code: "e", tot_imp_exp: "exp", name: "navires (nb)" )
a = Type.create!( code: "a", tot_imp_exp: "imp", name: "navires (nb)" )
a = Type.create!( code: "a", tot_imp_exp: "exp", name: "tonnage brut total" )
a1 = Type.create!( code: "a1", tot_imp_exp: "imp", name: "tonnage brut total" )
a11 = Type.create!( code: "a11", tot_imp_exp: "imp", name: "vrac liquide" )
a2 = Type.create!( code: "a2", tot_imp_exp: "imp", name: "VL hors hydrocarbures" )
a26 = Type.create!( code: "a26", tot_imp_exp: "imp", name: "engrais" )
a3 = Type.create!( code: "a3", tot_imp_exp: "imp", name: "autres vracs solides" )
a3 = Type.create!( code: "a3", tot_imp_exp: "exp", name: "non vrac" )
a32 = Type.create!( code: "a32", tot_imp_exp: "imp", name: "conteneur roro (T)" )
a32 = Type.create!( code: "a32", tot_imp_exp: "exp", name: "roro hors cntr (T)" )
b = Type.create!( code: "b", tot_imp_exp: "imp", name: "conventionel et colis lourd" )
b = Type.create!( code: "b", tot_imp_exp: "exp", name: "conteneur (nb)" )
b1 = Type.create!( code: "b1", tot_imp_exp: "imp", name: "conteneur (nb)" )
b1 = Type.create!( code: "b1", tot_imp_exp: "exp", name: "cntr vide (nb)" )
b11 = Type.create!( code: "b11", tot_imp_exp: "imp", name: "cntr vide (nb)" )
b11 = Type.create!( code: "b11", tot_imp_exp: "exp", name: "cntr vide 20' (nb)" )
b2 = Type.create!( code: "b2", tot_imp_exp: "imp", name: "cntr vide > 40' (nb)" )
b2 = Type.create!( code: "b2", tot_imp_exp: "exp", name: "cntr plein (nb)" )
b21 = Type.create!( code: "b21", tot_imp_exp: "imp", name: "cntr plein (nb)" )
b21 = Type.create!( code: "b21", tot_imp_exp: "exp", name: "cntr plein 20' (nb)" )
d = Type.create!( code: "d", tot_imp_exp: "imp", name: "plein (EVP)" )
d = Type.create!( code: "d", tot_imp_exp: "exp", name: "passagers" )
d3 = Type.create!( code: "d3", tot_imp_exp: "imp", name: "pax croisieres tete de ligne" )
d3 = Type.create!( code: "d3", tot_imp_exp: "exp", name: "pax croisieres escale" )
e = Type.create!( code: "e", tot_imp_exp: "imp", name: "pax croisieres escale" )
e = Type.create!( code: "e", tot_imp_exp: "exp", name: "navires (nb)" )
a = Type.create!( code: "a", tot_imp_exp: "imp", name: "navires (nb)" )
a = Type.create!( code: "a", tot_imp_exp: "exp", name: "tonnage brut total" )
a1 = Type.create!( code: "a1", tot_imp_exp: "imp", name: "tonnage brut total" )
a1 = Type.create!( code: "a1", tot_imp_exp: "exp", name: "vrac liquide" )
a11 = Type.create!( code: "a11", tot_imp_exp: "imp", name: "vrac liquide" )
a11 = Type.create!( code: "a11", tot_imp_exp: "exp", name: "hydrocarbures" )
a12 = Type.create!( code: "a12", tot_imp_exp: "imp", name: "gaz naturel" )
a2 = Type.create!( code: "a2", tot_imp_exp: "imp", name: "VL hors hydrocarbures" )
a2 = Type.create!( code: "a2", tot_imp_exp: "exp", name: "vrac solide" )
a21 = Type.create!( code: "a21", tot_imp_exp: "exp", name: "cereales" )
a25 = Type.create!( code: "a25", tot_imp_exp: "imp", name: "minerais" )
a26 = Type.create!( code: "a26", tot_imp_exp: "imp", name: "engrais" )
a3 = Type.create!( code: "a3", tot_imp_exp: "imp", name: "autres vracs solides" )
a3 = Type.create!( code: "a3", tot_imp_exp: "exp", name: "non vrac" )
a33 = Type.create!( code: "a33", tot_imp_exp: "imp", name: "vehicule roulant (T)" )
a33 = Type.create!( code: "a33", tot_imp_exp: "exp", name: "conventionel et colis lourd" )
e = Type.create!( code: "e", tot_imp_exp: "imp", name: "pax croisieres escale" )
e = Type.create!( code: "e", tot_imp_exp: "exp", name: "navires (nb)" )

puts "done types seeds"

# Movement

puts "Creating movements seeds"

Movement.create!( harbour: ajaccio, type: a, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
Movement.create!( harbour: ajaccio, type: a1, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20786)
Movement.create!( harbour: ajaccio, type: a11, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20786)
Movement.create!( harbour: ajaccio, type: a2, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2459)
Movement.create!( harbour: ajaccio, type: a26, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2459)
Movement.create!( harbour: ajaccio, type: a3, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 52792)
Movement.create!( harbour: ajaccio, type: a3, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
Movement.create!( harbour: ajaccio, type: a32, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 52792)
Movement.create!( harbour: ajaccio, type: a32, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
Movement.create!( harbour: ajaccio, type: d, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 14822)
Movement.create!( harbour: ajaccio, type: d, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 14778)
Movement.create!( harbour: ajaccio, type: d1, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 12002)
Movement.create!( harbour: ajaccio, type: d1, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 11960)
Movement.create!( harbour: ajaccio, type: d2, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2)
Movement.create!( harbour: ajaccio, type: d3, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2818)
Movement.create!( harbour: ajaccio, type: d3, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2818)
Movement.create!( harbour: ajaccio, type: e, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 71)
Movement.create!( harbour: ajaccio, type: e, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 71)
Movement.create!( harbour: bastia, type: a, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 139856)
Movement.create!( harbour: bastia, type: a, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
Movement.create!( harbour: bastia, type: a1, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 17859)
Movement.create!( harbour: bastia, type: a11, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 17859)
Movement.create!( harbour: bastia, type: a2, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 1064)
Movement.create!( harbour: bastia, type: a26, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 1064)
Movement.create!( harbour: bastia, type: a3, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 120933)
Movement.create!( harbour: bastia, type: a3, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
Movement.create!( harbour: bastia, type: a32, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 120933)
Movement.create!( harbour: bastia, type: a32, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
Movement.create!( harbour: bastia, type: b, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3595)
Movement.create!( harbour: bastia, type: b, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3630)
Movement.create!( harbour: bastia, type: b1, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 186)
Movement.create!( harbour: bastia, type: b1, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2680)
Movement.create!( harbour: bastia, type: b11, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 186)
Movement.create!( harbour: bastia, type: b11, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2680)
Movement.create!( harbour: bastia, type: b2, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3409)
Movement.create!( harbour: bastia, type: b2, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 950)
Movement.create!( harbour: bastia, type: b21, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3409)
Movement.create!( harbour: bastia, type: b21, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 950)
Movement.create!( harbour: bastia, type: d, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 24028)
Movement.create!( harbour: bastia, type: d, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 22888)
Movement.create!( harbour: bastia, type: d3, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 24028)
Movement.create!( harbour: bastia, type: d3, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 22888)
Movement.create!( harbour: bastia, type: e, date: Date.new(2014,12,31), terminal: "terminal 4", pol_pod: "marseille", volume: 133)
Movement.create!( harbour: bastia, type: e, date: Date.new(2014,12,31), terminal: "terminal 4", pol_pod: "marseille", volume: 133)
Movement.create!( harbour: bayonne, type: a, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 116673)
Movement.create!( harbour: bayonne, type: a, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 90117)
Movement.create!( harbour: bayonne, type: a1, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24535)
Movement.create!( harbour: bayonne, type: a1, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 9503)
Movement.create!( harbour: bayonne, type: a11, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 16963)
Movement.create!( harbour: bayonne, type: a11, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 9503)
Movement.create!( harbour: bayonne, type: a12, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 7572)
Movement.create!( harbour: bayonne, type: a2, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 53801)
Movement.create!( harbour: bayonne, type: a2, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20109)
Movement.create!( harbour: bayonne, type: a21, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20109)
Movement.create!( harbour: bayonne, type: a25, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 36241)
Movement.create!( harbour: bayonne, type: a26, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 17560)
Movement.create!( harbour: bayonne, type: a3, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 38337)
Movement.create!( harbour: bayonne, type: a3, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 60505)
Movement.create!( harbour: bayonne, type: a33, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 38337)
Movement.create!( harbour: bayonne, type: a33, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 60505)
Movement.create!( harbour: bayonne, type: e, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 40)
Movement.create!( harbour: bayonne, type: e, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 40)

puts "done movements seeds"
