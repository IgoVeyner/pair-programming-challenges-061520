class APIService

  @@uri = URI("https://thereportoftheweek-api.herokuapp.com/reports")

  def fetch_reports
    response = Net::HTTP.get_response(@@uri)
    data = JSON.parse(response.body)
    data.each do |report|
      # here we just create a new report for with attributes of the given reports
      # something important to notice here is the JSON gave us an attribute of dateReleased which doesn't match date_released
      Report.new(product: report["product"], manufacturer: report["manufacturer"], category: report["category"], date_released: report["dateReleased"], rating: report["rating"])
    end
  end

end
