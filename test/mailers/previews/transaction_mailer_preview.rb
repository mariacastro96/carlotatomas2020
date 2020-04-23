class TransactionMailerPreview < ActionMailer::Preview
  def transaction
    # This is how you pass value to params[:user] inside mailer definition!
    transaction = Transaction.last
    TransactionMailer.with(transaction: transaction).new_transaction
  end
end