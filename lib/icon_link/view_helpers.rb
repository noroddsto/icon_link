module IconLink 
  module ViewHelpers
    def icon_button_tag(title, options={})
      icon = options[:icon]
      options.delete(:icon)
      button_tag options.merge(icon: nil) do
        iconize(title, icon)
      end
    end
    
    def icon_link_to(title, url, options = {})
      title = iconize(title, options[:icon])
      link = link_to(title, url, options.merge(icon: nil))
    end
    
    def iconize(title, icon = nil)
      if icon.to_s.empty?
        title
      else
        content_tag(:i, nil, class: icon) + " " + title
      end
    end
    
  end
end