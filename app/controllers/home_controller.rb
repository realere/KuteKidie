class HomeController < ApplicationController
  
  
  def welcome
    
  end
  
  
  def categories
    
  end

  def babysitters
    
  end
  
  def childminders
    
  end
  
  
  
  def search
    case params[:options]

    when 'categories' then redirect_to(categories_path)
    when 'babysitters' then redirect_to(babysitters_path)
    when 'childminders' then redirect_to(childminders_path)
      
    
    else render :welcome
        
    end
  end
  
end