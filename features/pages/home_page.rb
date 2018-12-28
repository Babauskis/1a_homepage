class HomePage < BasePage
    attr_accessor :button_logo
  def initialize
    #1a.lv home page element initialization
    @button_logo = Element.new(:css, ".logo")
    @input_search = Element.new(:css, "#search_products_text_field")
    @button_search = Element.new(:css, "#autocomplete_form > div > input[type='submit']:nth-child(9)")
    @name_for_first_item = Element.new(:css, "img[alt='JBL Tune 500BT Bluetooth On-Ear Headphones Black']")
    @name_for_second_item = Element.new(:css, "img[alt='JBL T450BT Bluetooth On-Ear Headphones White']")
    @name_for_first_item = Element.new(:css, "img[alt='JBL GO 2 Bluetooth Speaker Midnight Black']")
    @name_for_first_item = Element.new(:css, "img[alt='JBL GO 2 Bluetooth Speaker Pearl Champange']")
    @price_for_first_item = Element.new(:xpath, '//a[contains(., "JBL Tune 500BT Bluetooth On-Ear Headphones Black")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="41.99"]')
    @price_for_second_item = Element.new(:xpath, '//a[contains(., "JBL T450BT Bluetooth On-Ear Headphones White")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="66.56"]')
    @price_for_third_item = Element.new(:xpath, '//a[contains(., "JBL GO 2 Bluetooth Speaker Midnight Black")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="29.99"]')
    @price_for_fourth_item = Element.new(:xpath, '//a[contains(., "JBL GO 2 Bluetooth Speaker Pearl Champange")]/ancestor::div[@class="p-content"]/following-sibling::div[@class="info-holder"]/child::div[@class="p-info"]//child::div[@data-sell-price-w-vat="31.00"]')
    @add_first_item_cart = Element.new(:css, "a[pro_id='474483']")
  end

  def isVisible
    @button_logo.isVisible
    @input_search.isVisible
    @button_search.isVisible
  end

  def load
    visit('')
  end

  def openSignUp
    @button_logo.visible?
  end

  def enterSearchItem(search_item)
    @button_logo.visible?
    @input_search.send_keys(search_item)
  end

  def searchForAnItem
    @button_search.click
  end

  def firstItemVisible
    @name_for_first_item.visible?
    if @price_for_first_item.visible?
      puts 'First item price is valid'
    else
      puts 'Second item price is valid'
    end
  end

  def secondItemVisible
    @name_for_first_item.visible?
    if @price_for_first_item.visible?
      puts 'Second item price is valid'
    else
      puts 'Price for third item was not equal'
    end
  end

  def thirdItemVisible
    @name_for_first_item.visible?
    if @price_for_first_item.visible?
      puts 'Third item price is valid'
    else
      puts 'Price for third item was not equal'
    end
  end

  def fourthItemVisible
    @name_for_first_item.visible?
    if @price_for_first_item.visible?
      puts 'Fourth item price is valid'
    else
      puts 'Price for fourth item was not equal'
    end
  end

  def firstItemAddCart
    @add_first_item_cart.visible?
    @add_first_item_cart.click
  end
end
