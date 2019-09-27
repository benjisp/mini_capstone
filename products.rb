require "http"

response = HTTP.get("http://localhost:3000/api/products").parse

puts JSON.pretty_generate(response)

response = HTTP.patch("http://localhost:3000/api/products").parse

puts JSON.pretty_generate(response)