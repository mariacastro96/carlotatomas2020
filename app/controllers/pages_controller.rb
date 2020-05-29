class PagesController < ApplicationController  
  def homepage 
  end

  def festa
  end

  def casamento
  end

  def download_missal
    send_file "app/assets/docs/missal_carlota_tomas_2020.pdf",  type: "application/pdf", x_sendfile: true
  end

  def nos
  end

  def lista
    @honey_moon = Gift.find_by(category: 6)
  end

  def info
  end
end
