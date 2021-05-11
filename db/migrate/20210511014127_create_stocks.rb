class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.string :last_sale
      t.float :net_change
      t.string :percent_change
      t.float :market_cap
      t.string :country
      t.integer :ipo_year
      t.integer :volume
      t.string :sector
      t.string :industry
      t.timestamps
    end
  end
end
