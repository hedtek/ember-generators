module Ember::GeneratorHelpers
  def application_name
    Rails.application.class.name.split('::').first
  end

  def ember_path
    "app/assets/javascripts/ember"
  end

  def spec_path
    "spec/javascripts"
  end
end
