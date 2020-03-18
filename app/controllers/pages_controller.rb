class PagesController < ApplicationController
  def countdown
  end
  
  def homepage
  end

  def missa
    __method__
    # raise
    @name = 'missa'
  end

  def festa
    @name = 'festa'
  end
end
