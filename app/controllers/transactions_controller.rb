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
        total_value = gift.total_value
        missing_value = total_value - offered_value
        tranches = gift.offered_tranches + (offered_value / gift.tranch_value)
        gift.update_attributes(offered_value: gift.offered_value + offered_value, offered_tranches: tranches.to_i, missing_value: missing_value)
      end

      redirect_to root_path
    else
      flash[:error] =  'NOOO'
      redirect_to gift_path(Gift.find(params[:gift_id]).name)
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :message, :offered_value, :gift_id)
  end
end
