require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

# get "/" do
#     # "Hello!"
#     "<h1>Luke, I am your father</h1>"
#     # "<h2>Listen to me</h2>"
# end 
  
get "/tacos" do
    "Tacos are awesome"
end

# get "/" do
#     view "dice"
# end


get "/" do
    @die1 = rand(1..6)
    @die2 = rand(1..6)
    @die3 = rand(1..6)
    @die4 = rand(1..6)
    @die5 = rand(1..6)
    dice = [@die1, @die2, @die3, @die4, @die5]
  for die in (0..4)
#     die = rand(1..6)    
    @dice << rand(1..6)
    
    # "<h1>Dice: #{die1},#{die2} </h1>"
   
    view "dice" 
end

