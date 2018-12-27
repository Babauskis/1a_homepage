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
if find(:xpath, '//a[contains(., "JBL Tune 500BT Bluetooth On-Ear Headphones Black")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="41.99"]').visible?
    puts 'First item price is valid'
  else
    puts 'Price for first item was not equal'
  end
end

And(/^I verify if second item is visible/) do
unless find(:css, "img[alt='JBL T450BT Bluetooth On-Ear Headphones White']").visible?
  raise "second item is not visible"
  end

  if find(:xpath, '//a[contains(., "JBL T450BT Bluetooth On-Ear Headphones White")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="66.56"]').visible?
    puts 'Second item price is valid'
  else
    puts 'Price for second item was not equal'
  end
end

And(/^I verify if third item is visible/) do
  unless find(:css, "img[alt='JBL GO 2 Bluetooth Speaker Midnight Black']").visible?
    raise "third item is not visible"
  end
  if find(:xpath, '//a[contains(., "JBL GO 2 Bluetooth Speaker Midnight Black")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="29.99"]').visible?
    puts 'Third item price is valid'
  else
    puts 'Price for third item was not equal'
  end
end


And(/^I verify if fourth item is visible/) do
  unless find(:css, "img[alt='JBL GO 2 Bluetooth Speaker Pearl Champange']").visible?
    raise "fourth item is not visible"
  end
  if find(:xpath, '//a[contains(., "JBL GO 2 Bluetooth Speaker Pearl Champange")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="31.00"]').visible?
    puts 'Fourth item price is valid'
  else
    puts 'Price for fourth item was not equal'
  end
end