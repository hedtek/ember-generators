class Ember::ControllerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)
  argument :controller_name, :type => :string

  def generate_controller
    template 'controller.js.coffee', "app/assets/javascripts/ember/controllers/#{controller_name}.js.coffee"
  end

  private
  def application_name
    Rails.application.class.name.split('::').first
  end
end
