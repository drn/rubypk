# frozen_string_literal: true

class Thanx
  def purchases
    client.get('purchases').body['purchases']
  end

private

  def client
    @client ||= Faraday.new(
      url:     ENV['API_URL'],
      headers: headers
    ) do |faraday|
      faraday.request  :json
      faraday.response :json, content_type: /\bjson$/
      faraday.adapter  :net_http
    end
  end

  def headers
    {
      'Authorization' => "Bearer #{ENV['API_KEY']}"
    }
  end
end
