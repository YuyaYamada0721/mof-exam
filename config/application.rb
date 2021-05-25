require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.generators do |g|
      g.assets false
      g.jbuilder false
    end
  end
end
