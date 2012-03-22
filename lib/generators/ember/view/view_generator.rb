require_relative '../generator_helpers'

class Ember::ViewGenerator < Rails::Generators::Base
  include Ember::GeneratorHelpers

  source_root File.expand_path("../templates", __FILE__)
  argument :controller_name, :type => :string
  argument :view_name, :type => :string

  def generate_view_namespace
    template 'view_namespace.js.coffee', "app/assets/javascripts/ember/views/#{controller_name}_namespace.js.coffee"
  end

  def generate_view
    template 'view.js.coffee', "app/assets/javascripts/ember/views/#{view_name}.js.coffee"
  end

  def generate_template
    template 'template.js.hjs.haml', "app/assets/javascripts/ember/templates/#{template_name}.js.hjs.haml"
  end

  private

  def template_name
    view_name.underscore
  end
end
