module ApplicationHelper

  def banner
    image_tag("banner.jpg", :alt => "BWM 2002 Registry", :class => "round")
  end

  def javascript_files
    files = []
    if Rails.env.development?
      files += ["vendor/jquery-1.4.2.js",
                "vendor/jquery.hoverIntent.js"]
    else
      files += ["vendor/jquery-1.4.2.min.js",
                "vendor/jquery.hoverIntent.min.js"]
    end
    
    files += ["application", "dialog", "menu_popup", "registry"]
    files
  end

end
