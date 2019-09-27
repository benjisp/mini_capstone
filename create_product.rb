require "http"

response = HTTP.post("http://localhost:3000/api/products").parse

puts JSON.pretty_generate(response)