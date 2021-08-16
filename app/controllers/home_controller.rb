class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_50b7099e20a147dbaaea15e037a2e9f1')
  end

  def about 
  end
end
