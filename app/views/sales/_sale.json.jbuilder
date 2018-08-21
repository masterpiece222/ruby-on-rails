json.extract! sale, :id, :title, :description, :image_url, :year, :genre, :price, :created_at, :updated_at
json.url sale_url(sale, format: :json)
