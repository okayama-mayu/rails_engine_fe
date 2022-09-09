class MerchantService 
  def self.merchants
    conn = Faraday.new(url: "http://localhost:3000/") 
    response = conn.get("api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end
end