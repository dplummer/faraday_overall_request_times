require "faraday/overall_request_times/version"
require "faraday/overall_request_times/middleware"

module Faraday
  module OverallRequestTimes
    def self.registry
      @registry ||= {}
    end

    def self.reset!
      registry.each { |_, timer| timer.reset! }
    end

    def self.register(timer)
      registry[timer.remote_app_name] ||= timer
    end

    def self.total_for(remote_app_name)
      timer = registry[remote_app_name]
      timer ? timer.total : 0
    end
  end
end
