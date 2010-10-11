# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{h(@title)}"
    end
  end

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
    
    files += ["application", "menu_popup"]
    files
  end

end
