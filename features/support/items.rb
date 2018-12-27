require 'date'
module Items

    def  Items.search_item_JBL
      @search_item_JBL||= Item.new(args = {search_item: 'JBL'})
      @search_item_JBL
    end

    def  Items.random_string
      @random_string ||= Item.new(args = {})
      @random_string
    end

  class Item
    attr_reader :search_item
    def initialize(args = {})
      defaults = {search_item: DateTime.now.strftime('%Q')}
      args = defaults.merge(args)
      @search_item = args[:search_item]
    end
  end
end