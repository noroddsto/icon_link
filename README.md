# IconLink

View helper methods that makes it easy to add the html that is needed to display icons (from Font Awesome or Twitter Bootstrap) within links, or buttons.

## Installation

Add this line to your application's Gemfile:

    gem 'icon_link', git: 'git://github.com/noroddsto/icon_link.git'

And then execute:

    $ bundle

## Usage

Link with icon:

    icon_link_to("Example", "http://www.example.com", icon: "comment-icon")
    # => <a href="http://www.example.com" class="btn"><i class="icon-comment"></i> Title</a>

Button with icon:

    icon_button_tag("Example", icon: "comment-icon")
    # => <button class="btn" type="submit"><i class="icon-comment"></i> Create model</button>
  
Text with icon:

    iconize("Example", icon: "comment-icon")
    # => <i class="icon-comment"></i> Title

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
