# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Allergen.create! name: 'Milk', context: ''
Allergen.create! name: 'Eggs', context: ''
Allergen.create! name: 'Fish', context: '(e.g., bass, flounder, cod)'
Allergen.create! name: 'Shellfish', context: '(e.g., crab, lobster, shrimp)'
Allergen.create! name: 'Tree nuts', context: '(e.g., almonds, walnuts, pecans)'
Allergen.create! name: 'Peanuts', context: ''
Allergen.create! name: 'Wheat', context: ''
Allergen.create! name: 'Soybeans', context: ''
