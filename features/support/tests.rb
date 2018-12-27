class Tests
  def initialize(pages)
    @pages = pages
  end

  def search_tests
    @search_tests ||= SearchTest.new(@pages)
    @search_tests
  end

end