class HomeController < ApplicationController
  
  def welcome
    @childminders = Childminder.all
    @babysitters = Babysitter.all
    @nannies =Nanny.all
  end
  
  
  def childminders
    
  end

  def babysitters

  end

  def nannies
    
  end

  
end