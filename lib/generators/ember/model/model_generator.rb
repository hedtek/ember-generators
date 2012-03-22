class Ember::ModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)
  argument :attributes, :type => :array, :default => [], :banner => "field[:type] field[:type]"

  def generate_model
    template 'model.js.coffee.erb', "app/assets/javascripts/ember/models/#{model_name}.js.coffee"
  end

  private
  def application_name
    Rails.application.class.name.split('::').first
  end

  def model_name
    file_name.underscore
  end

  def route_name
    "#{model_name.pluralize}_path"
  end

  def schema
    attributes.map{|a| a.split(":")}.each{|a| a << 'String'}.reduce({}){|hsh, atr| hsh[atr[0]] = atr[1]; hsh}
  end
end
