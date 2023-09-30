class CountElements
  def initialize(results)
    @results = results
  end

  def perform
    hash = {}

    results.each do |element|
      hash[element] = results.count(element)
    end

    hash
  end

  attr_accessor :results
end
