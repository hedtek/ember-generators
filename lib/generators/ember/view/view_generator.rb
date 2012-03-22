class Ember::ViewGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  argument :controller_name, :type => :string
  argument :view_name, :type => :string

  def generate_view_namespace
    template 'view_namespace.js.coffee', "app/assets/javascripts/ember/views/#{controller_name}_namespace.js.coffee"
  end

  def generate_view
    template 'view.js.coffee.erb', "app/assets/javascripts/ember/views/#{view_name}.js.coffee"
  end

  def generate_template
    template 'template.js.coffee.erb', "app/assets/javascripts/ember/templates/#{template_name}.js.coffee"
  end

  private

  def application_name
    Rails.application
  end

  def template_name
    view_name.underscore
  end
end
