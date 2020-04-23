class Transaction < ApplicationRecord
  belongs_to :gift
  after_create :send_transaction_email
  validates :name, :message, :offered_value, :presence => true
  scope :active, -> { where(hidden: false) }
  scope :hidden, -> { where(hidden: true) }
  
  private

  def send_transaction_email
    TransactionMailer.with(transaction: self).new_transaction.deliver_now
  end
end
