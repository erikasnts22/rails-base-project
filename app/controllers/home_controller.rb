class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_50b7099e20a147dbaaea15e037a2e9f1')

    # FOR SEARCH QUERY
    # once the form filled out, send "ticker" params to the StockQuote
    # and return the result to @stock instance variable

    # error handling
     # to check if params has empty value
    if params[:ticker] == ""
      @empty_error_msg = "Please Enter A Stock Symbol!"
    elsif params[:ticker] 
      @stock = StockQuote::Stock.quote(params[:ticker])
        # to check if params has junk or gibberish value
      if !@stock
          @junk_error_msg = "Stock Symbol Doesn't Exist. Please Try Again!"
      end
    end
  end

  def about 
  end

end
