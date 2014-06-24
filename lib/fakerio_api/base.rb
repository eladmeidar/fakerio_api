require 'httparty'

module FakerioApi
  class Base
    include HTTParty

    @@uuid = nil
    @@token = nil

    base_uri "http://localhost:3000"
    
    def self.uuid=(uuid)
      @@uuid = uuid
    end

    def self.uuid
      @@uuid
    end

    def self.token=(token)
      @@token = token
    end

    def self.token
      @@token
    end

    def self.config(&block)
      yield(self)
      self
    end
  end
end

