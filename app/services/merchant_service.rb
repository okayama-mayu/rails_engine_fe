class MerchantService 
  def self.merchants
    response = conn.get("api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.single_merchant(id) 
    response = conn.get("api/v1/merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    conn = Faraday.new(url: "http://localhost:3000/") 
  end
end