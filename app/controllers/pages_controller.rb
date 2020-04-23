class PagesController < ApplicationController
  
  def countdown
  end
  
  def homepage
    
  end

  def festa
  end

  def casamento
  end

  def nos
  end

  def lista
    @kind = params[:lista]
    @category = params[:categoria]
    @gifts = Gift.where(category: @category).order(id: :asc)
    @honey_moon = Gift.find_by(category: 6)
  end
end
