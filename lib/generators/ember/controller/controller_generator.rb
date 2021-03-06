require_relative '../generator_helpers'

class Ember::ControllerGenerator < Rails::Generators::NamedBase
  include Ember::GeneratorHelpers
  source_root File.expand_path("../templates", __FILE__)
  argument :routes, :type => :array, :default => [], :banner => "route route"

  def generate_directory
    empty_directory "#{ember_path}/controllers"
  end

  def generate_controller
    template 'controller.js.coffee', "#{ember_path}/controllers/#{controller_name}_controller.js.coffee"
  end

  def generate_views
    routes.each do |route|
      generate 'ember:view', controller_name, route
    end
  end

  def generate_specs
    template 'controller_spec.js.coffee', "#{spec_path}/controllers/#{controller_name}_controller_spec.js.coffee"
  end

  private

  def controller_name
    file_name.underscore
  end

end
