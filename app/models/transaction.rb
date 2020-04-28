class Transaction < ApplicationRecord
  belongs_to :gift
  validates :name, :message, :offered_value, :presence => true
  scope :active, -> { where(hidden: false) }
  scope :hidden, -> { where(hidden: true) }
end
