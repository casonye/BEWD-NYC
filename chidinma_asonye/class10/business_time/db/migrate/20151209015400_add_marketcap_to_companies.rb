class AddMarketcapToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :marketcap, :integer
  end
end
