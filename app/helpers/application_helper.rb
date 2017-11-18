module ApplicationHelper
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
  
  def copyright_generator
    DangeloViewTool::Renderer.copyright "Bayou Builds, LLC", 'All rights reserved.' 
  end

  def nav_items
    [
      {
        url: root_path,
        title:'Home'
      },
      {
        url: about_path,
        title:'About Me'
      },
      {
        url: services_path,
        title:'Our Services'
      },
      {
        url: shop_path,
        title:'Browse our Products'
      },
      {
        url: contact_path,
        title:'Contact'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>" 
    end

      nav_links.html_safe
    end

    def active? path
      "active" if current_page? path
    end
end
