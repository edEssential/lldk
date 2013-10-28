module ApplicationHelper
  
  def which_page
    if !params[:controller] == 'writings'
  		"footer"
  	else
  		"footer"
  	end
  end
  
end
