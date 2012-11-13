module IconLink 
  module ViewHelpers
    
    # Creates a button tag with the given +title+ to the given +url+. Works like button_tag, 
    # but takes an additional :icon option. Type is set to submit by default.
    #
    # ==== Examples
    #   icon_button_tag("Example", icon: "comment-icon")
    #   # => <button class="btn" type="submit"><i class="icon-comment"></i> Create model</button>
    def icon_button_tag(title, options={})
      options[:type] ||= 'submit'
      button_tag options.merge(icon: nil) do
        iconize(title, options[:icon])
      end
    end
    
    # Creates a link tag with the given +title+ to the given +url+. Works like link_to, 
    # but takes an additional :icon option.
    #
    # ==== Examples
    #   icon_link_to("Example", "http://www.example.com", icon: "comment-icon")
    #   # => <a href="http://www.example.com" class="btn"><i class="icon-comment"></i> Title</a>  
    def icon_link_to(title, url, options = {})
      link = link_to(iconize(title, options[:icon]), url, options.merge(icon: nil))
    end
    
    # Adds icon to a given text
    #
    # ==== Examples
    #   iconize("Example", icon: "comment-icon")
    #   # => <i class="icon-comment"></i> Title
    def iconize(text, icon = nil)
      if icon.to_s.empty?
        text
      else
        content_tag(:i, nil, class: icon) + " " + text
      end
    end
       
  end
end