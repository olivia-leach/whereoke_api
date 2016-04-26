require 'csv'

CSV.foreach('data/bars.csv', headers: true) do |bar|
  Bar.create!(bar.to_hash)
end
