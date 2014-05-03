json.array!(@posts) do |post|
  json.extract! post, :id, :question, :answ1, :answ2, :answ3, :answer, :featured
  json.url post_url(post, format: :json)
end
