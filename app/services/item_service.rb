class ItemService 
  def self.items_data(merchant_id)
    conn = Faraday.new(url: "http://localhost:3000/") 
    response = conn.get("api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end