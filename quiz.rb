# Please review this quiz, which covers lesson 3 materials.

# What is HTML? What is CSS? What is Javascript?
Front End languages
HTML - markup
CSS - manipulates look and feel of html elements. Traverses up the DOMS
JS - manipulates look and actions of html elements
(jquery takes care of browser issues)

#backend..
Node JS - server side JS stack

# What are the major parts of an HTTP request?
Method / URL / Parameters
(post or get), (url), (parameters)

# What are the major parts of an HTTP response?
Status Code and Pay Load
(* parcing the request and issuing a response is what web developers do)

# How do you submit an HTTP POST request, with a "username" attribute set to "bob"?
# What if we wanted a GET request instead?
Create a session ID session[:username] = session["bob"]

# Why is it important for us, as web developers, to understand that HTTP is a "stateless" protocol?
To understand that changes in state must occur at the views model and to understand
the tricks we must employ to simulate a stateful experience for our users.

# If the internet is just HTTP requests/responses, why do we only use browsers to interface with web applications? Are there any other options?
Easy interface for users, not everyone is a developer

# What is MVC, and why is it important?
Model view controller coordinates data updates with the user and model.

# The below questions are about Sinatra:
# At a high level, how are requests processed?
Through post requests and rendering a layout

# In the controller/action, what's the difference between rendering and redirecting?
Rendering renders the page layout within the current view (erb: render_page)
* Return a status code of 200 and display this template

Redirecting completely redirects the user to the page itself (redirect '/new_page')
* Issues a new request to another URL, process again, pg will require render or redirect.
Eventually youll have to render something.

# In the ERB view template, how do you show dynamic content?
# <% %>
# <%= %> - renders on page
Instance variable, helper method or a session.

# Given what you know about ERB templates, when do you suppose the ERB template is turned into HTML?
Render -> views
erb renders html..
(slim, haml - say theyre faster)

# What's the role of instance variables in Sinatra?
Set up some kind of variable that we can use in the view template.















