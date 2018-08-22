require 'sinatra'
require 'sinatra/contrib'

# Allowed the server to be reloaded without having to close it down and restart it again
require 'sinatra/reloader' if development?

# get => a method to retrieve data from a serverat any spedified resource
# It will only request for data, it can't modify, or make changes to anything
get "/" do
  # When used, it will retrieve whatever we tell it to 'do', in this case, it will print the string, "Hello"
  "Hello"
end

# When used, it will retrive, "List of food", as that is what is declared within this 'get' tag
get "/food" do
  "List of food"
end
# When used, it will retrieve and return a HTML page with a form that will allowed user to input new information
get "/food/new" do
  "Get form to input new food"
end
# post => send data to the server to create a new resource of information
# The data sent will get stored in the request body of the HTML
post "/food" do
  "New food added"
end

get "/food/:id" do
  id = params[:id]
  "Show a specific dish #{id}"
end

get "/pokemon/:id/edit" do
  id = params[:id]
  "Edit a pokemon #{id}"
end

put "/pokemon/:id" do
  id = params[:id]
  "Updated a specific dish #{id}"
end

delete "/pokemon/:id" do
  id = params[:id]
  "Deleted a dish #{id}"
end
