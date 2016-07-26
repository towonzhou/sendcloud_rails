require 'rest_client'

module Sendcloud
  class Client
    attr_reader :api_key, :domain

    def initialize(api_key, domain)
      @api_key = api_key
      @domain = domain
    end

    def send_message(options)
      RestClient.post sendcloud_url, options
    end

    def sendcloud_url
      api_url+"/messages"
    end

    def api_url
      "http://api.sendcloud.net/apiv2/mail"
    end
  end
end
