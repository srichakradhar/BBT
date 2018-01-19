json.extract! carproduct, :id, :name, :model, :fueltype, :price, :carcategory_id, :created_at, :updated_at
json.url carproduct_url(carproduct, format: :json)
