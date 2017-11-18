class PagesController < ApplicationController
  def home
    @page_title = "Welcome"
  end

  def about
    @page_title = "About"
  end

  def services
    @page_title = "Our Services"
  end

  def shop
    @page_title = "Shop"
  end
 
  def contact
    @page_title = "I would love to hear from you"
  end
end
