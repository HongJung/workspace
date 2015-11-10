json.array!(@books) do |book|
  json.extract! book, :id, :title, :price, :publish_date, :category_id, :isbn, :publisher_id, :decription
  json.url book_url(book, format: :json)
end
