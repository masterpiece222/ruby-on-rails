json.extract! movie, :id, :title, :description, :image_url, :year, :genre, :price, :created_at, :updated_at
json.url movie_url(movie, format: :json)
