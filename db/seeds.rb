# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed for DEV ENV"

Movement.destroy_all
Harbour.destroy_all
Type.destroy_all
# User.destroy_all
puts "DB cleaned"

example = User.find_or_create_by(
    email: "user@example.com"
    )
example.password = "password"
puts "Added user@example.com"

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

a11exp = Type.create!( code: "a11", tot_imp_exp: "exp", name: "hydrocarbures" )
a11imp = Type.create!( code: "a11", tot_imp_exp: "imp", name: "vrac liquide" )
a12imp = Type.create!( code: "a12", tot_imp_exp: "imp", name: "gaz naturel" )
a1exp = Type.create!( code: "a1", tot_imp_exp: "exp", name: "vrac liquide" )
a1imp = Type.create!( code: "a1", tot_imp_exp: "imp", name: "tonnage brut total" )
a21exp = Type.create!( code: "a21", tot_imp_exp: "exp", name: "cereales" )
a25imp = Type.create!( code: "a25", tot_imp_exp: "imp", name: "minerais" )
a26imp = Type.create!( code: "a26", tot_imp_exp: "imp", name: "engrais" )
a2exp = Type.create!( code: "a2", tot_imp_exp: "exp", name: "vrac solide" )
a2imp = Type.create!( code: "a2", tot_imp_exp: "imp", name: "VL hors hydrocarbures" )
a32exp = Type.create!( code: "a32", tot_imp_exp: "exp", name: "roro hors cntr (T)" )
a32imp = Type.create!( code: "a32", tot_imp_exp: "imp", name: "conteneur roro (T)" )
a33exp = Type.create!( code: "a33", tot_imp_exp: "exp", name: "conventionel et colis lourd" )
a33imp = Type.create!( code: "a33", tot_imp_exp: "imp", name: "vehicule roulant (T)" )
a3exp = Type.create!( code: "a3", tot_imp_exp: "exp", name: "non vrac" )
a3imp = Type.create!( code: "a3", tot_imp_exp: "imp", name: "autres vracs solides" )
aexp = Type.create!( code: "a", tot_imp_exp: "exp", name: "tonnage brut total" )
aimp = Type.create!( code: "a", tot_imp_exp: "imp", name: "navires (nb)" )
b11exp = Type.create!( code: "b11", tot_imp_exp: "exp", name: "cntr vide 20' (nb)" )
b11imp = Type.create!( code: "b11", tot_imp_exp: "imp", name: "cntr vide (nb)" )
b1exp = Type.create!( code: "b1", tot_imp_exp: "exp", name: "cntr vide (nb)" )
b1imp = Type.create!( code: "b1", tot_imp_exp: "imp", name: "conteneur (nb)" )
b21exp = Type.create!( code: "b21", tot_imp_exp: "exp", name: "cntr plein 20' (nb)" )
b21imp = Type.create!( code: "b21", tot_imp_exp: "imp", name: "cntr plein (nb)" )
b2exp = Type.create!( code: "b2", tot_imp_exp: "exp", name: "cntr plein (nb)" )
b2imp = Type.create!( code: "b2", tot_imp_exp: "imp", name: "cntr vide > 40' (nb)" )
bexp = Type.create!( code: "b", tot_imp_exp: "exp", name: "conteneur (nb)" )
bimp = Type.create!( code: "b", tot_imp_exp: "imp", name: "conventionel et colis lourd" )
d1exp = Type.create!( code: "d1", tot_imp_exp: "exp", name: "pax hors croisieres" )
d1imp = Type.create!( code: "d1", tot_imp_exp: "imp", name: "passagers" )
d2imp = Type.create!( code: "d2", tot_imp_exp: "imp", name: "pax hors croisieres" )
d3exp = Type.create!( code: "d3", tot_imp_exp: "exp", name: "pax croisieres escale" )
d3imp = Type.create!( code: "d3", tot_imp_exp: "imp", name: "pax croisieres tete de ligne" )
dexp = Type.create!( code: "d", tot_imp_exp: "exp", name: "passagers" )
dimp = Type.create!( code: "d", tot_imp_exp: "imp", name: "plein (EVP)" )
eexp = Type.create!( code: "e", tot_imp_exp: "exp", name: "navires (nb)" )
eimp = Type.create!( code: "e", tot_imp_exp: "imp", name: "pax croisieres escale" )

puts "done types seeds"

# Movement

# puts "Creating movements seeds"

# Movement.create!( harbour: ajaccio, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
# Movement.create!( harbour: ajaccio, type: a1imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20786)
# Movement.create!( harbour: ajaccio, type: a11imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20786)
# Movement.create!( harbour: ajaccio, type: a2imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2459)
# Movement.create!( harbour: ajaccio, type: a26imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2459)
# Movement.create!( harbour: ajaccio, type: a3imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 52792)
# Movement.create!( harbour: ajaccio, type: a3exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
# Movement.create!( harbour: ajaccio, type: a32imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 52792)
# Movement.create!( harbour: ajaccio, type: a32exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
# Movement.create!( harbour: ajaccio, type: dimp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 14822)
# Movement.create!( harbour: ajaccio, type: dexp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 14778)
# Movement.create!( harbour: ajaccio, type: d1imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 12002)
# Movement.create!( harbour: ajaccio, type: d1exp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 11960)
# Movement.create!( harbour: ajaccio, type: d2imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2)
# Movement.create!( harbour: ajaccio, type: d3imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2818)
# Movement.create!( harbour: ajaccio, type: d3exp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 2818)
# Movement.create!( harbour: ajaccio, type: eimp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 71)
# Movement.create!( harbour: ajaccio, type: eexp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 71)
# Movement.create!( harbour: bastia, type: aimp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 139856)
# Movement.create!( harbour: bastia, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
# Movement.create!( harbour: bastia, type: a1imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 17859)
# Movement.create!( harbour: bastia, type: a11imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 17859)
# Movement.create!( harbour: bastia, type: a2imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 1064)
# Movement.create!( harbour: bastia, type: a26imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 1064)
# Movement.create!( harbour: bastia, type: a3imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 120933)
# Movement.create!( harbour: bastia, type: a3exp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
# Movement.create!( harbour: bastia, type: a32imp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 120933)
# Movement.create!( harbour: bastia, type: a32exp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
# Movement.create!( harbour: bastia, type: bimp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3595)
# Movement.create!( harbour: bastia, type: bexp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3630)
# Movement.create!( harbour: bastia, type: b1imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 186)
# Movement.create!( harbour: bastia, type: b1exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2680)
# Movement.create!( harbour: bastia, type: b11imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 186)
# Movement.create!( harbour: bastia, type: b11exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 2680)
# Movement.create!( harbour: bastia, type: b2imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3409)
# Movement.create!( harbour: bastia, type: b2exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 950)
# Movement.create!( harbour: bastia, type: b21imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 3409)
# Movement.create!( harbour: bastia, type: b21exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 950)
# Movement.create!( harbour: bastia, type: dimp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 24028)
# Movement.create!( harbour: bastia, type: dexp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 22888)
# Movement.create!( harbour: bastia, type: d3imp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 24028)
# Movement.create!( harbour: bastia, type: d3exp, date: Date.new(2014,12,31), terminal: "terminal 3", pol_pod: "marseille", volume: 22888)
# Movement.create!( harbour: bastia, type: eimp, date: Date.new(2014,12,31), terminal: "terminal 4", pol_pod: "marseille", volume: 133)
# Movement.create!( harbour: bastia, type: eexp, date: Date.new(2014,12,31), terminal: "terminal 4", pol_pod: "marseille", volume: 133)
# Movement.create!( harbour: bayonne, type: aimp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 116673)
# Movement.create!( harbour: bayonne, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 90117)
# Movement.create!( harbour: bayonne, type: a1imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24535)
# Movement.create!( harbour: bayonne, type: a1exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 9503)
# Movement.create!( harbour: bayonne, type: a11imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 16963)
# Movement.create!( harbour: bayonne, type: a11exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 9503)
# Movement.create!( harbour: bayonne, type: a12imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 7572)
# Movement.create!( harbour: bayonne, type: a2imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 53801)
# Movement.create!( harbour: bayonne, type: a2exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20109)
# Movement.create!( harbour: bayonne, type: a21exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 20109)
# Movement.create!( harbour: bayonne, type: a25imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 36241)
# Movement.create!( harbour: bayonne, type: a26imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 17560)
# Movement.create!( harbour: bayonne, type: a3imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 38337)
# Movement.create!( harbour: bayonne, type: a3exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 60505)
# Movement.create!( harbour: bayonne, type: a33imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 38337)
# Movement.create!( harbour: bayonne, type: a33exp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 60505)
# Movement.create!( harbour: bayonne, type: eimp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 40)
# Movement.create!( harbour: bayonne, type: eexp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 40)
# puts "done movements seeds"


puts "Creating MINI movements seeds"
Movement.create!( harbour: ajaccio, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24688)
Movement.create!( harbour: bastia, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 58677)
Movement.create!( harbour: bayonne, type: aimp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 116673)
Movement.create!( harbour: bayonne, type: aexp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 90117)
Movement.create!( harbour: bayonne, type: a1imp, date: Date.new(2014,12,31), terminal: "terminal 1", pol_pod: "marseille", volume: 24535)
Movement.create!( harbour: bayonne, type: eimp, date: Date.new(2014,12,31), terminal: "terminal 2", pol_pod: "marseille", volume: 40)
puts "done MINI movements seeds"
