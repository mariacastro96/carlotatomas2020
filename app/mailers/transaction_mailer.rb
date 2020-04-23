class TransactionMailer < ApplicationMailer
  def new_transaction
    @transaction = params[:transaction]
    @gift = @transaction.gift
    
    ct_email = 'carlotatomas2020@gmail.com'
    mail(to: ct_email, subject: 'Mais um presente... kinda')
  end
  layout 'mailer'
end
