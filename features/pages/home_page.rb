class HomePage < BasePage
    attr_accessor :button_logo
  def initialize
    #1a.lv home page element initialization
    @button_logo = Element.new(:css, ".logo")
    @input_search = Element.new(:css, "#search_products_text_field")
    @button_search = Element.new(:css, "#autocomplete_form > div > input[type='submit']:nth-child(9)")
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
end