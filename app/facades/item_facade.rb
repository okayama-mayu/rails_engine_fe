class ItemFacade
  def self.items(merchant_id)
    json = ItemService.items_data(merchant_id)
    json[:data].map do |item| 
      Item.new(item)
    end
  end
end