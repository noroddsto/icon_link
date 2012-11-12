module IconLink
  class Railtie < Rails::Railtie
    initializer "icon_link.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include IconLink::ViewHelpers
      end
    end
  end
end