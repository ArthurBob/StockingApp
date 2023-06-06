class HomeController < ApplicationController
		def index
				@api = StockQuote::Stock.new(api_key: 'pk_062031d20883444f9ea74e2610fe2011')

				if params[:ticker] == ""
					@nothing = "Hey! You forgot to enter a symbol"
				elsif params[:ticker]
						@stock = StockQuote::Stock.quote(params[:ticker])
				end
		end

		def about
		end
end
