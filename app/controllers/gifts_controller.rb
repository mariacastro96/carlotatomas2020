class GiftsController < ApplicationController
  def show
    @gift = Gift.find_by(name: params[:id])
    @tranches_left = @gift.number_of_tranches - @gift.offered_tranches
    @transaction = Transaction.new
  end
end
