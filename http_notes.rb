HTTP
- request
  - Components
    - HTTP verb/method
    - URL
    - parameters

  - GET
    - a link or type into address bar
    - parameters exposed in URL
    - smaller payload
  - POST
    - forms
    - parameters
    - larger payload

- response
  - Components
    - status code
    - payload ( usually html, json, xml )

  - status code
    - 200: Okay
    - 302: redirect
    - 404: file not found (user navigated to wrong area)
    - 500: general error (something is wrong with your code)

- stateless


( Download HTML Client or use Curl )

mddir webapp
cd webapp
wget URL

- ruby main.rb file

---------------------------------------
To render a template (embeded ruby)

  erb :template_name

- add template into views folder

  erb :template_name, layout: false (to remove layout template that controls style)

# does my http and verb match
# know where you are, if you're working in a
  # erb file, you're working in the views, and
  # and it's the result of a render, so that probably means
  # for this request, that's it. So you need to expose a form or links
  # for the user to initiate the next request.
# if you're workin within a action, do you need to do something with
  # the persisistence layer, or not, then after that do you want to redirect or..

To tackle persistence..
# need to include name attribute under input type
# cookies have a data limit of 4 kilobites
# to display content dynamically there are 3 options
  # instance variables
  # sessions
  # helper methods

get '/' do
  erb :set_name
end

<h4>Set player name</h4>
<form action='/set_name' method='post'>
  Name: <input type='text' name='player_name'/>
  <br/>

</form>

post '/set_name' do
  session[:player_name] = params[:player_name]
  redirect '/game'
end

get '/game' do
  session[:deck] = ['2', '3']
  session[:player_cards] = []
  session[:player_cards] << session[:deck].pop
  erb :game
end

# new file game
<h4>Hi <%= session[:player_name] %> </h4>



------------
#to run application, from console:
ruby main.rb

------<% vs <%= ------
# <% %> Ruby code that doesn’t need to be printed to HTML (if statements, loops, each)

# <%= %> Ruby code that should be printed out to HTML
------------
response back to the client once inside the app

get ‘/inline’ do
  “hi, directly from the action!”
end

get ‘/template/ do
  erg :mytemplate
end

get ‘/nested_template’ do
  erg :”/user/profile”
end

get ‘/nothere’ do
  redirect ‘/inline’
end

# nested files can be wrapped in double or single quotes
# layout can be specified by adding a comma and specifying layout (erg :”/user/profile”, layout :sdfjls)













