require 'uri'
require 'net/http'

url = URI("http://forecast.weather.gov/MapClick.php?FcstType=json&lon=-122.8328414&lat=45.5361588")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["content-type"] = 'application/json'

response = http.request(request)
puts response.read_body