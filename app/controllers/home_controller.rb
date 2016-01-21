class HomeController < ApplicationController
  
  
  def welcome
    
  end
  
  
  def childminders
    
  end

  
  
  def search
    case params[:options]

    when 'childminders' then redirect_to(childminders_path)
      
      
    
    else render :welcome
        
    end
  end
  
end