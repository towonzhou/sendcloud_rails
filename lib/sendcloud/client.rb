require 'rest_client'

module Sendcloud
  class Client
    attr_reader :api_key, :domain, :api_url

    def initialize(api_key, domain)
      @api_key = api_key
      @domain = domain
      @api_url = api_url
    end

    def send_message(options)
      RestClient.post sendcloud_url, options
    end

    def sendcloud_url
      @api_url
    end
  end
end
