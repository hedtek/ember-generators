module Ember::GeneratorHelpers
  def application_name
    Rails.application.class.name.split('::').first
  end
end
