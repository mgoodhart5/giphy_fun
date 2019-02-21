class Giphy
  attr_reader :name, :display

  def initialize(attributes)
    @display = attributes[:images][:fixed_width][:url]
  end

  def self.find_all(keyword)
    all_the_giphys = GiphyService.find_giphys(keyword)
    all_the_giphys.map do |g|
      Giphy.new(g)
    end
  end
end
