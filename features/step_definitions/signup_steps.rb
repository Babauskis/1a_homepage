When(/^I am on 1a.lv homepage/) do
   @tests.search_tests.load_home_page
end

And(/^I search for an item/) do
  @tests.search_tests.enter_search_for_items()
  @tests.search_tests.search_for_an_item
end

And(/^I verify if first item is visible/) do
  @tests.search_tests.validate_first_item
end

And(/^I verify if second item is visible/) do
  @tests.search_tests.validate_second_item
end

And(/^I verify if third item is visible/) do
  @tests.search_tests.validate_third_item
end

And(/^I verify if fourth item is visible/) do
  @tests.search_tests.validate_fourth_item
end

And(/^I add first item to shopping cart/) do
  @tests.search_tests.add_first_item_cart
end