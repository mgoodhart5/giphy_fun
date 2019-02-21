class GiphyService

  def self.find_giphys(keyword)
    conn = Faraday.new(url: "http://api.giphy.com") do |faraday|
      faraday.params["api_key"] = "MJugUCPBTmaKCy22TyMvMWwzpYpw7UTx"
      faraday.params["q"] = keyword
      faraday.params["limit"] = 25
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/v1/gifs/search?")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  # query = {
  #   "api_key" => blahdflkasdjf,
  #   "q" => keyword,
  #   "limit" => 5
  # }
  #
  # HTTParty.get("http://api.giphy.com/v1/gifs/search?",
  # :query => query)
end
