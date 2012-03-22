class Ember::ControllerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def generate_controller
    template 'controller.js.coffee', "app/assets/javascripts/ember/controllers/#{controller_name}.js.coffee"
  end

  private
  def application_name
    Rails.application.class.name.split('::').first
  end

  def controller_name
    file_name.downcase
  end
end
