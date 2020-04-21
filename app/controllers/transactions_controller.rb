class TransactionsController < ApplicationController

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      total_value = @transaction.gift.total_value
      offered_value = @transaction.offered_value
      missing_value = total_value - offered_value
      tranches = @transaction.gift.offered_tranches + (offered_value / @transaction.gift.tranch_value)
      @transaction.gift.update_attributes(offered_value: @transaction.gift.offered_value + offered_value, offered_tranches: tranches.to_i, missing_value: missing_value)

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
