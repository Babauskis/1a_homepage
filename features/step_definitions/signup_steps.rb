When(/^I am on 1a.lv homepage/) do
   @tests.search_tests.load_home_page
end

And(/^I search for an item/) do
  @tests.search_tests.enter_search_for_items()
  @tests.search_tests.search_for_an_item
end

And(/^I verify if first item is visible/) do
  unless find(:css, "img[alt='JBL Tune 500BT Bluetooth On-Ear Headphones Black']").visible?
    raise "first item is not visible"
  end
end

And(/^I verify if second item is visible/) do
unless find(:css, "img[alt='JBL T450BT Bluetooth On-Ear Headphones White']").visible?
  raise "second item is not visible"
  end
end

And(/^I verify if third item is visible/) do
  unless find(:css, "img[alt='JBL GO 2 Bluetooth Speaker Midnight Black']").visible?
    raise "third item is not visible"
  end
end


And(/^I verify if fourth item is visible/) do
  unless find(:css, "img[alt='JBL GO 2 Bluetooth Speaker Midnight Black']").visible?
    raise "fourth item is not visible"
  end
end