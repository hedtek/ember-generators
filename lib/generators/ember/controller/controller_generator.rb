require_relative '../generator_helperss'

class Ember::ControllerGenerator < Rails::Generators::NamedBase
  include Ember::GeneratorHelpers
  source_root File.expand_path("../templates", __FILE__)
  argument :routes, :type => :array, :default => [], :banner => "route route"

  def generate_controller
    template 'controller.js.coffee', "app/assets/javascripts/ember/controllers/#{controller_name}_controller.js.coffee"
  end

  def generate_views
    routes.each do |route|
      generate 'ember:view', controller_name, route
    end
  end

  private

  def controller_name
    file_name.underscore
  end
end
