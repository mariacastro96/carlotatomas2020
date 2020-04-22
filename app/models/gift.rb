class Gift < ApplicationRecord
  enum category: { sala: 0, casa_de_jantar: 1, cozinha: 2, quarto: 3, casa_de_banho: 4, exterior: 5, lua_de_mel: 6 }
  has_many :transactions

  def offered?
    self.offered_value == self.total_value
  end

  def honey_moon?
    Gift.categories[self.category] == 6
  end
end
