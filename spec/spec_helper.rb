require 'action_view'
require 'icon_link'
require 'capybara/rspec'

RSpec.configure do |config|
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Context
  include IconLink::ViewHelpers
  
  config.include Capybara::RSpecMatchers, example_group: {file_path: %r{spec/icon_link}}
end

