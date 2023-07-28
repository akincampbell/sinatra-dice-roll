# /dice.rb

require "sinatra"
require "sinatra/reloader"

# / , The root
get("/") do
  "Hello World"
end

# /zebra
get("/zebra") do
  "We must add a route for each path we want to support"
end

# /giraffe
get(/giraffe" do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
