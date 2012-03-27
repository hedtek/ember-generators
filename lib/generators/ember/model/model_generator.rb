require_relative '../generator_helpers'

class Ember::ModelGenerator < Rails::Generators::NamedBase
  include Ember::GeneratorHelpers

  source_root File.expand_path("../templates", __FILE__)
  argument :attributes, :type => :array, :default => [], :banner => "field[:type] field[:type]"

  def generate_directory
    empty_directory "#{ember_path}/models"
  end

  def generate_model
    template 'model.js.coffee.erb', "#{ember_path}/models/#{model_name}.js.coffee.erb"
  end

  def generate_specs
    template 'model_spec.js.coffee', "spec/javascripts/models/#{model_name}_spec.js.coffee"
  end

  private

  def model_name
    file_name.underscore
  end

  def route_name
    "#{model_name.pluralize}_path"
  end

  def schema
    attributes.map{|a| [a.name, a.type.to_s.camelize]}
  end
end
