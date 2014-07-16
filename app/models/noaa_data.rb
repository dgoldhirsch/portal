class NoaaData < AbstractData

  def create
    result = self.html = get.body

    byebug
    
    result
  end
  
  def get
    url = URI.parse(source)
    request = Net::HTTP::Get.new(url.to_s)
    
    Net::HTTP.start(url.host, url.port)  do |http|
      http.request(request)
    end
    
  end

  def name
    "NOAA National Weather Service"
  end

  def source
    "http://forecast.weather.gov/MapClick.php?lat=42.39111824771004&lon=-71.1745760566389"
  end
  
end
