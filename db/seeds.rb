require "csv"

nasdaq = File.read(Rails.root.join("lib", "seeds", "nasdaq_screener.csv"))
nasdaq_csv = CSV.parse(nasdaq, :headers => true)
nasdaq_csv.each do |row|
  x = Stock.new
  x.symbol = row["Symbol"]
  x.name = row["Name"]
  x.last_sale = row["Last Sale"]
  x.net_change = row["Net Change"]
  x.percent_change = row["% Change"]
  x.market_cap = row["Market Cap"]
  x.country = row["Country"]
  x.ipo_year = row["IPO Year"]
  x.volume = row["Volume"]
  x.sector = row["Sector"]
  x.industry = row["Industry"]
  x.save!
end
