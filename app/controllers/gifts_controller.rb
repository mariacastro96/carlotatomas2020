class GiftsController < ApplicationController
  http_basic_authenticate_with name: "presentes", password: "password", only: :index
  def show
    @gift = Gift.find_by(id: params[:id])
    @honey_moon = @gift.honey_moon?

    @tranches_left = @gift.number_of_tranches - @gift.offered_tranches unless @honey_moon
    @transaction = Transaction.new
  end

  def index
    @honey_moon = Gift.find_by(category: 6)
    @house_gifts = Gift.where.not(category: 6).order(id: :asc)
  end

  def casa
    @kind = params[:lista]
    @category = params[:categoria]
    @gifts = Gift.where(category: @category).order(offered: :asc)
    @honey_moon = Gift.find_by(category: 6)
  end
end
