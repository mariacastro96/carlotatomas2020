class PagesController < ApplicationController  
  def homepage 
  end

  def festa
  end

  def casamento
  end

  def nos
  end

  def lista
    @honey_moon = Gift.find_by(category: 6)
  end

  def info
  end
end
