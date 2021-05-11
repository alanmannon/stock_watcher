class Api::StocksController < ApplicationController
  def index
    @stocks = Stock.all
    render "index.json.jb"
  end

  def show
    @stock = Stock.find_by(symbol: (params[:id]).upcase)
    render "show.json.jb"
  end
end
