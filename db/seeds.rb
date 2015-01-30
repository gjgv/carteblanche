require 'csv'
  CSV.foreach(Rails.root.join("db/seeds_data/macarons.csv"), headers: true) do |row|
	  Macaron.find_or_create_by(name: row[0], image_url: row[1], price: row[2], stock: row[3])
end