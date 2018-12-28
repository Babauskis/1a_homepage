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
  end

  def search_for_an_item
    @pages.page_home.searchForAnItem
  end

  def validate_first_item
    @pages.page_home.firstItemVisible
  end

  def validate_second_item
    @pages.page_home.secondItemVisible
  end

  def validate_third_item
    @pages.page_home.thirdItemVisible
  end

  def validate_fourth_item
    @pages.page_home.fourthItemVisible
  end

  def add_first_item_cart
    @pages.page_home.firstItemAddCart
  end
end