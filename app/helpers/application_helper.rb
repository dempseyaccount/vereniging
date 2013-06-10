module ApplicationHelper
  
 #begin

<<<<<<< HEAD
  def flash_class(type)
    case type
    when :alert
      "alert_error"
    when :notice
      "alert_success"
    else
      ""
    end
  end
    
  #end
=======
	def flash_class(type)
		case type
		when :alert
			"alert-error"
		when :notice
			"alert-success"
		else
			""
		end
	end
>>>>>>> b46d89ebfe26ffad7580c7c22c0d26e1643818f3
end
