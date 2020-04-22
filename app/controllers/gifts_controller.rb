class GiftsController < ApplicationController
  def show
    @gift = Gift.find_by(name: params[:id])
    @honey_moon = @gift.honey_moon?

    @tranches_left = @gift.number_of_tranches - @gift.offered_tranches unless @honey_moon
    @transaction = Transaction.new
  end
end
