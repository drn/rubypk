# frozen_string_literal: true

class Thanx
  def purchases
    client.get('purchases', page: 8, per_page: 20).body['purchases']
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
      'Authorization'  => "Bearer #{ENV['API_ACCESS_TOKEN']}",
      'Accept-Version' => 'v4.0',
      'X-ClientId'     => ENV['API_CLIENT_ID'],
      'Date'           => Time.current.to_s
    }
  end
end
