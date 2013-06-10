module ApplicationHelper
  
 #begin

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
end
