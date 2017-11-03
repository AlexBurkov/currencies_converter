require "httparty"
require "currencies_converter/rate"
require "currencies_converter/version"

module CurrenciesConverter
  include HTTParty

  def self.hello
  	return CurrenciesConverter::Rate.rates
  	response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
	puts response.body, response.code, response.message, response.headers.inspect
  	"Hello, alex"
  end
end
