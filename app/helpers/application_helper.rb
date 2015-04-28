module ApplicationHelper
  
  # Return full title on page-by-page basis
  def full_title(page_title = '')
    base_title = "WiscoHockey"
    
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
