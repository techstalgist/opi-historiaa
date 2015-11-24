module ApplicationHelper

  def year_from_date(date)
    
    year = date.year
    
    if year < 0 
    	then (year*(-1)).to_s + ' eKr.' 		  
    elsif year < 501 
    	then year.to_s + ' jKr.'
    else year 
    end
  end
   
end
