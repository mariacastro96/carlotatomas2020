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
  end
end
