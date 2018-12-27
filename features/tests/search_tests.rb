class SearchTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end


  def enter_search_for_items()
    item = Items.search_item_JBL
    @pages.page_home.enterSearchItem(item.search_item)
    sleep(5)
  end

  def search_for_an_item
    @pages.page_home.searchForAnItem
  end
end