class HomeController < ApplicationController
  
  
  def welcome
    
  end
  
  
  def childminders
    
  end

  def babysitters
    @babysitters = Babysitter.all
  end

  def nannies
    
  end

  
end