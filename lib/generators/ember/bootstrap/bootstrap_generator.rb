require_relative '../generator_helpers'

class Ember::BootstrapGenerator < Rails::Generator::Base
  include Ember::GeneratorHelpers

  def add_gems
    gem_group :assets do
      gem 'tilt'
      gem 'haml_assets'
      gem 'handlebars_haml_assets', :git => "https://github.com/leahpar/handlebars_haml_assets.git"
      gem 'asset_pipeline_routes', :git => "https://github.com/leahpar/asset_pipeline_routes.git"
      %w(ember-layout ember-resource ember-routemanager).each do |name|
        gem name, :git => "https://github.com/hedtek/#{name}.git"
      end
    end
  end

  # Bootstrap generation from ember-rails. Copied here rather than reused to allow customisation of the generated app file
  def inject_ember
    application_file = "app/assets/javascripts/application.js"
    if File.exists? application_file
      inject_into_file(application_file, :before => "//= require_tree") do
        dependencies = [
          "//= require ember",
          "//= require ember-layout",
          "//= require ember-resource",
          "//= require ember-routemanager",
          "//= require ember/#{application_name.underscore}"
        ]
        dependencies.join("\n").concat("\n")
      end
    end
  end

  def create_dir_layout
    %W{models controllers views views/layouts views/partials helpers templates templates/layouts templates/partials}.each do |dir|
      empty_directory "#{ember_path}/#{dir}"
    end
  end

  def create_app_file
    template "app.js.coffee", "#{ember_path}/#{application_name.underscore}.js.coffee"
  end

  # Rest of the app setup after ember bootstrap
  def add_route_helpers
    template "route_helpers.js.coffee", "#{ember_path}/route_helpers.js.coffee"
  end

  def add_layout_state
    template "layout_state.js.coffee", "#{ember_path}/lib/layout_state.js.coffee"
  end

  def add_controller_base
    template "controller.js.coffee", "#{ember_path}/lib/controller.js.coffee"
  end

  def add_route_manager
    template 'route_manager.js.coffee', "#{ember_path}/route_manager.js.coffee"
  end

  def add_layout
    template 'application_layout.js.coffee', "#{ember_path}/views/layouts/application.js.coffee"
    template 'application_template.js.hjs.haml', "#{ember_path}/templates/layouts/application.js.hjs.haml"
  end

  def add_alerts
    template 'alert_models.js.coffee', "#{ember_path}/models/alerts.js.coffee"
    template 'alert_controllers.js.coffee', "#{ember_path}/controllers/alerts.js.coffee"
    template 'alert_views.js.coffee', "#{ember_path}/views/partials/alerts.js.coffee"
    template 'notices_template.js.hjs.haml', "#{ember_path}/templates/partials/notices.js.hjs.haml"
    template 'errors_template.js.hjs.haml', "#{ember_path}/templates/partials/errors.js.hjs.haml"
  end

  def spec_directories
    %w(models controllers helpers lib) do |dir|
      empty_directory "#{spec_path}/#{dir}"
    end
  end
end
