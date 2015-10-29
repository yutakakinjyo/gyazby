require "gyazby/version"
require 'rest-client'
require 'json'

module Gyazby

  class Client

    def initialize(access_token)
      @access_token = access_token
    end

    def list
      response = RestClient.get 'https://api.gyazo.com/api/images', {params: {access_token: @access_token}}
      JSON.parse(response.body, object_class: OpenStruct)
    end

    def upload(path)
      response = RestClient.post 'https://upload.gyazo.com/api/upload', {access_token: @access_token, imagedata: File.new(path)}
      JSON.parse(response.body, object_class: OpenStruct)
    end

    def delete(id)
      response = RestClient.delete 'https://api.gyazo.com/api/images/' + id, {params: {access_token: @access_token}}
      JSON.parse(response.body, object_class: OpenStruct)
    end

  end

end
