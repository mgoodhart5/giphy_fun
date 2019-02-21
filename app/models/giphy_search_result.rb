class GiphySearchResult

  def initialize(keyword)
    @keyword = keyword
  end

  def giphys
    data = service.giphys_by_word
    data[:results].map do |unparsed_giphy|
     Giphy.new(unparsed_giphy)
    end
  end

  def service
    GiphyService.new(@keyword)
  end
end
