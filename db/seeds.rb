# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gifts_list = [
  { category: 0, code_name: 'sofa_3',             name: 'Sofá 3 lugares',          total_value: 840.00,  number_of_tranches: 6,   tranch_value: 140.00, offered_tranches: 0, offered_value: 0.00, missing_value: 840.00  },
  { category: 0, code_name: 'sofa_2',             name: 'Sofá 2 lugares',          total_value: 600.00,  number_of_tranches: 5,   tranch_value: 120.00, offered_tranches: 0, offered_value: 0.00, missing_value: 600.00  },
  { category: 0, code_name: 'poltrona',           name: 'Poltrona',                total_value: 300.00,  number_of_tranches: 3,   tranch_value: 100.00, offered_tranches: 0, offered_value: 0.00, missing_value: 300.00  },
  { category: 0, code_name: 'mesa_centro',        name: 'Mesa de centro',          total_value: 110.00,  number_of_tranches: 1,   tranch_value: 110.00, offered_tranches: 0, offered_value: 0.00, missing_value: 110.00  },
  { category: 0, code_name: 'tv',                 name: 'Televisão',               total_value: 780.00,  number_of_tranches: 6,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 780.00  },
  { category: 0, code_name: 'mesa_tv',            name: 'Mesa Televisão',          total_value: 460.00,  number_of_tranches: 4,   tranch_value: 115.00, offered_tranches: 0, offered_value: 0.00, missing_value: 460.00  },
  { category: 0, code_name: 'candeeiro_pe',       name: 'Candeeiro de pé',         total_value: 50.00,   number_of_tranches: 1,   tranch_value: 50.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 50.00   },
  { category: 0, code_name: 'candeeiro_mesa',     name: 'Candeeiro de mesa (2)',   total_value: 20.00,   number_of_tranches: 2,   tranch_value: 60.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 120.00  },
  { category: 0, code_name: 'coluna',             name: 'Coluna',                  total_value: 260.00,  number_of_tranches: 2,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 260.00  },
  { category: 0, code_name: 'estante_sala',       name: 'Estante Sala',            total_value: 150.00,  number_of_tranches: 2,   tranch_value: 75.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 150.00  },
  { category: 0, code_name: 'estante_livros',     name: 'Estante Livros',          total_value: 200.00,  number_of_tranches: 2,   tranch_value: 100.00, offered_tranches: 0, offered_value: 0.00, missing_value: 200.00  },
  { category: 0, code_name: 'mesa_apoio',         name: 'Mesa de apoio (2)',       total_value: 200.00,  number_of_tranches: 2,   tranch_value: 100.00, offered_tranches: 0, offered_value: 0.00, missing_value: 200.00  },
  { category: 0, code_name: 'alexa',              name: 'Alexa Echo Show',         total_value: 90.00,   number_of_tranches: 1,   tranch_value: 90.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 90.00   },
  { category: 1, code_name: 'mesa_jantar',        name: 'Mesa de jantar',          total_value: 560.00,  number_of_tranches: 4,   tranch_value: 140.00, offered_tranches: 0, offered_value: 0.00, missing_value: 560.00  },
  { category: 1, code_name: 'cadeiras_jantar',    name: 'Cadeiras jantar (8)',     total_value: 600.00,  number_of_tranches: 4,   tranch_value: 150.00, offered_tranches: 0, offered_value: 0.00, missing_value: 600.00  },
  { category: 1, code_name: 'aparador',           name: 'Aparador Casa Jantar',    total_value: 400.00,  number_of_tranches: 2,   tranch_value: 200.00, offered_tranches: 0, offered_value: 0.00, missing_value: 400.00  },
  { category: 1, code_name: 'pratos',             name: 'Serviço de Pratos',       total_value: 1200.00, number_of_tranches: 8,   tranch_value: 150.00, offered_tranches: 0, offered_value: 0.00, missing_value: 1200.00 },
  { category: 2, code_name: 'bimby',              name: 'Bimby',                   total_value: 1275.00, number_of_tranches: 10,  tranch_value: 128.00, offered_tranches: 0, offered_value: 0.00, missing_value: 1275.00 },
  { category: 2, code_name: 'aspirador',          name: 'Aspirador Robot',         total_value: 500.00,  number_of_tranches: 2,   tranch_value: 250.00, offered_tranches: 0, offered_value: 0.00, missing_value: 500.00  },
  { category: 2, code_name: 'maquina_cafe',       name: 'Máquina Café',            total_value: 130.00,  number_of_tranches: 1,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 130.00  },
  { category: 2, code_name: 'torradeira',         name: 'Torradeira',              total_value: 80.00,   number_of_tranches: 1,   tranch_value: 80.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 80.00   },
  { category: 2, code_name: 'carrinho_cha',       name: 'Carrinho de chá',         total_value: 130.00,  number_of_tranches: 1,   tranch_value: 130.00, offered_tranches: 0, offered_value: 0.00, missing_value: 130.00  },
  { category: 2, code_name: 'vaporetto',          name: 'Vaporetto',               total_value: 90.00,   number_of_tranches: 1,   tranch_value: 90.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 90.00   },
  { category: 2, code_name: 'ferro_engomar',      name: 'Ferro de engomar',        total_value: 90.00,   number_of_tranches: 1,   tranch_value: 90.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 90.00   },
  { category: 2, code_name: 'panelas',            name: 'Trem panelas',            total_value: 170.00,  number_of_tranches: 2,   tranch_value: 85.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 170.00  },
  { category: 3, code_name: 'cama',               name: 'Cama Sommier',            total_value: 350.00,  number_of_tranches: 2,   tranch_value: 175.00, offered_tranches: 0, offered_value: 0.00, missing_value: 350.00  },
  { category: 3, code_name: 'colchao',            name: 'Colchão',                 total_value: 800.00,  number_of_tranches: 4,   tranch_value: 200.00, offered_tranches: 0, offered_value: 0.00, missing_value: 800.00  },
  { category: 3, code_name: 'mesa_cabeceira',     name: 'Mesas de Cabeceira (2)',  total_value: 160.00,  number_of_tranches: 2,   tranch_value: 80.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 160.00  },
  { category: 3, code_name: 'comoda',             name: 'Cómoda',                  total_value: 250.00,  number_of_tranches: 2,   tranch_value: 125.00, offered_tranches: 0, offered_value: 0.00, missing_value: 250.00  },
  { category: 3, code_name: 'armario',            name: 'Armário',                 total_value: 460.00,  number_of_tranches: 4,   tranch_value: 115.00, offered_tranches: 0, offered_value: 0.00, missing_value: 460.00  },
  { category: 4, code_name: 'toalheiro_eletrico', name: 'Toalheiro elétrico',      total_value: 140.00,  number_of_tranches: 1,   tranch_value: 140.00, offered_tranches: 0, offered_value: 0.00, missing_value: 140.00  },
  { category: 4, code_name: 'cesto_roupa',        name: 'Cesto da roupa',          total_value: 50.00,   number_of_tranches: 1,   tranch_value: 50.00,  offered_tranches: 0, offered_value: 0.00, missing_value: 50.00   },
  { category: 5, code_name: 'mesa_cadeira_fora',  name: 'Mesa e Cadeiras Terraço', total_value: 500.00,  number_of_tranches: 4,   tranch_value: 125.00, offered_tranches: 0, offered_value: 0.00, missing_value: 500.00  },
  { category: 5, code_name: 'grelhador',          name: 'Grelhador',               total_value: 500.00,  number_of_tranches: 4,   tranch_value: 125.00, offered_tranches: 0, offered_value: 0.00, missing_value: 500.00  },
  { category: 6, code_name: 'lua_de_mel',         name: 'Lua de Mel',              total_value: nil,     number_of_tranches: nil, tranch_value: nil,    offered_tranches: 0, offered_value: 0.00, missing_value: nil     }
]

puts 'DELETE...'
Gift.delete_all

gifts_list.each do |gift|
  puts 'Creating gift...'
  Gift.create(gift)
end