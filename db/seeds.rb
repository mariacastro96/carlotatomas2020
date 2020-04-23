# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gifts_list = [
  {category: 0, code_name: 'sala_tv',            name: 'Televisão',      total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00 },
  {category: 0, code_name: 'sala_tv',            name: 'TV1',            total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00 },
  {category: 0, code_name: 'sala_tv',            name: 'TV2',            total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00 },
  {category: 0, code_name: 'sala_tv',            name: 'TV3',            total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00 },
  {category: 0, code_name: 'sala_tv',            name: 'TV4',            total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00 },
  {category: 1, code_name: 'jantar_mesa',        name: 'Mesa de Jantar', total_value: 560.00,  number_of_tranches: 4,   tranch_value: 140.00, offered_tranches: 0, offered_value: 0.00, missing_value: 560.00 },
  {category: 2, code_name: 'cozinha_bimby',      name: 'Bimby',          total_value: 1275.00, number_of_tranches: 10,  tranch_value: 128.00, offered_tranches: 0, offered_value: 0.00, missing_value: 1275.00 },
  {category: 3, code_name: 'quarto_comoda',      name: 'Cómoda',         total_value: 250.00,  number_of_tranches: 2,   tranch_value: 125.00, offered_tranches: 0, offered_value: 0.00, missing_value: 250.00 },
  {category: 4, code_name: 'wc_toalheiro',       name: 'Toalheiro',      total_value: 60.00,   number_of_tranches: 1,   tranch_value: 60.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 60.00 },
  {category: 5, code_name: 'exterior_grelhador', name: 'Grelhador',      total_value: 500.00,  number_of_tranches: 4,   tranch_value: 125.00, offered_tranches: 0, offered_value: 0.00, missing_value: 500.00 },
  {category: 6, code_name: 'lua_de_mel',         name: 'Lua de Mel',     total_value: nil,     number_of_tranches: nil, tranch_value: nil,    offered_tranches: 0, offered_value: 0.00, missing_value: nil }
]

gifts_list.each do |gift|
  next if Gift.find_by(name: gift[:name]).present?

  puts 'Creating gift...'
  Gift.create(gift)
end