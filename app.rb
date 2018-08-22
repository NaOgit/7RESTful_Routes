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
  # Will retrieve the form, in this case, it will print, "Get form to..."
  "Get form to input new food"
end
# post => send data to the server to create a new resource of information
# Calling 'post' repeatedly will create multiple resources as it is not idempotent; it will see it as if the user wants to keep changing and adding in more new resources
# The data sent will get stored in the request body of the HTML
post "/food" do
  # Will retrieve a new added resource; will print string, "New food added"
  "New food added"
end
#When used, it will retrive a specific resource as ids are unique and will only contain one resource of information
get "/food/:id" do
  # ids are assigned to each resources, this way information can be retrieved using "/food/:id"; a specific piece of information gets returned back
  id = params[:id]
  "Show a specific dish #{id}"
end
# WHen used, it will retrieve an edit page for user to change any details regarding that one specific resource
get "/food/:id/edit" do
  id = params[:id]
  "Edit a dish #{id}"
end
# put => send data over to the server once it's been changed/updated
# Calling 'put' multiple times won't create another resource; it's idempotent
# pathc => used when you want to partially modify the resource
put "/food/:id" do
  # A specific resource will get called, and user will be able to edit all the details through the HTML output
  id = params[:id]
  "Updated a specific dish #{id}"
end
# delete => remove a resource at that specified URL
delete "/food/:id" do
  id = params[:id]
  "Deleted a dish #{id}"
end
