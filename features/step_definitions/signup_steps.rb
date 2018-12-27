When(/^I am on 1a.lv homepage/) do
   @tests.search_tests.load_home_page
end

And(/^I search for an item/) do
  @tests.search_tests.enter_search_for_items()
  @tests.search_tests.search_for_an_item
end

And(/^I verify if first item is visible/) do
  unless find(:css, "#product_search_result_grid_container > div.product-grid.search-products > section:nth-child(1) > div > div > div > div.p-image > a:nth-child(2) > img").visible?
    raise "first item is not visible"
  end
end

And(/^I verify if second item is visible/) do
unless find(:css, "#product_search_result_grid_container > div.product-grid.search-products > section:nth-child(2) > div > div > div > div.p-image > a:nth-child(2) > img").visible?
  raise "second item is not visible"
  end
end

And(/^I verify if third item is visible/) do
  unless find(:css, "#product_search_result_grid_container > div.product-grid.search-products > section:nth-child(3) > div > div > div > div.p-image > a:nth-child(2) > img").visible?
    raise "third item is not visible"
  end
end


And(/^I verify if fourth item is visible/) do
  unless find(:css, "#product_search_result_grid_container > div.product-grid.search-products > section:nth-child(4) > div > div > div > div.p-image > a:nth-child(2) > img").visible?
    raise "fourth item is not visible"
  end
end