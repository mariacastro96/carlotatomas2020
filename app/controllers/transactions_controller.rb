class TransactionsController < ApplicationController

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      gift = @transaction.gift
      offered_value = @transaction.offered_value
      
      if gift.honey_moon?
        new_value = gift.offered_value + offered_value
        gift.update_attributes(offered_value: new_value)
      else
        missing_value = gift.missing_value - offered_value
        tranches = gift.offered_tranches + (offered_value / gift.tranch_value).to_i
        gift.update_attributes(offered_value: gift.offered_value + offered_value, offered_tranches: tranches.to_i, missing_value: missing_value)
      end
      TransactionMailer.with(transaction: @transaction).new_transaction.deliver_now
      redirect_to root_path
    else
      redirect_to gift_path(Gift.find(params[:gift_id]).name)
    end
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update_attributes(update_transaction_params)

    gift = @transaction.gift
    offered_value = @transaction.offered_value

    if gift.honey_moon?
      new_value = gift.offered_value + offered_value
      gift.update_attributes(offered_value: new_value)
    else
      missing_value = gift.missing_value + offered_value
      tranches = gift.offered_tranches - (offered_value / gift.tranch_value).to_i
      gift.update_attributes(offered_value: gift.offered_value - offered_value, offered_tranches: tranches.to_i, missing_value: missing_value)
    end
    redirect_back(fallback_location: gifts_path)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :message, :offered_value, :gift_id)
  end

  def update_transaction_params
    params.require(:transaction).permit(:hidden)
  end
end
