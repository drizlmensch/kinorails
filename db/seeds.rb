# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Poster.create([
	{ movie: 'Cinema Paradiso', year: 1988, director: 'Giuseppe Tornatore', url: 'cinema_paradiso.jpg'},
	{ movie: 'Breathless', year: 1960, director: 'Jean-Luc Godard',url: 'cinema_paradiso.jpg'}
])
