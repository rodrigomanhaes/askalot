module Askalot
  class Engine < ::Rails::Engine
    isolate_namespace Askalot

    config.generators do |g|
      g.test_framework :rspec, fixture: false
    end
  end
end
