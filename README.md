# IconLink 
[![Build Status](https://secure.travis-ci.org/noroddsto/icon_link.png?branch=master)](https://travis-ci.org/noroddsto/icon_link) 
[![Code Climate](https://codeclimate.com/github/noroddsto/icon_link.png)](https://codeclimate.com/github/noroddsto/icon_link)
[![Gem Version](https://badge.fury.io/rb/icon_link.png)](http://badge.fury.io/rb/icon_link)

View helper methods that makes it easy to add the html that is needed to display icons (from Font Awesome or Twitter Bootstrap) within links, or buttons.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icon_link'
```

And then execute:

    $ bundle

## Usage

Link with icon:

```ruby
icon_link_to("Example", "http://www.example.com", icon: "icon-comment")
# => <a href="http://www.example.com" class="btn"><i class="icon-comment"></i> Example</a>
```

Button with icon:

```ruby
icon_button_tag("Create example", icon: "icon-comment")
# => <button class="btn" type="submit"><i class="icon-comment"></i> Create example</button>
```  

Text with icon:

```ruby
iconize("Example", icon: "icon-comment")
# => <i class="icon-comment"></i> Example
```  

Only icon:

```ruby
icon_for("icon-comment")
# => <i class="icon-comment"></i>
```  

See documentation: [RubyDoc](http://rubydoc.info/github/noroddsto/icon_link/master/frames)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
