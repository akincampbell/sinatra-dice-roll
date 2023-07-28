# /dice.rb

require "sinatra"
require "sinatra/reloader"

# / , The root
get("/") do
  "
  <h1>Dice Roll</h1>
  <ul>
    <li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
    <li><a href=\"/dice/2/10\">Roll two 10-sided dice</a></li>
    <a href=\"/dice/5/4\">Roll five 4-sided dice</a>
  </ul>
  "
end

# /zebra
get("/zebra") do
  "We must add a route for each path we want to support"
end

# /giraffe
get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end


=begin
Our First Web App
=end
# /dice/2/6
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

# /dice/2/10
get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

# /dice/5/4
get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die

  outcome = "You rolled a #{first_die} and a #{second_die} and a #{third_die} and a #{fourth_die} and a #{fifth_die} for a total of #{sum}."

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end
