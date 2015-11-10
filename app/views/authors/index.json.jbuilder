json.array!(@authors) do |author|
  json.extract! author, :id, :first_name, :last_name, :genre, :dob, :dod
  json.url author_url(author, format: :json)
end
