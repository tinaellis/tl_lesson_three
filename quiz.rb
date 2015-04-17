# Please review this quiz, which covers lesson 3 materials.

# What is HTML? What is CSS? What is Javascript?
Front End languages

# What are the major parts of an HTTP request?
Get / Post

# What are the major parts of an HTTP response?
Headers and Status Code

# How do you submit an HTTP POST request, with a "username" attribute set to "bob"?
# What if we wanted a GET request instead?
Create a session ID session[:username] = session["bob"]

# Why is it important for us, as web developers, to understand that HTTP is a "stateless" protocol?
To understand that changes in state must occur at the views model

# If the internet is just HTTP requests/responses, why do we only use browsers to interface with web applications? Are there any other options?
Easy interface for users, not everyone is a developer

# What is MVC, and why is it important?
Model view controller coordinates data updates with the user and model.

# The below questions are about Sinatra:
# At a high level, how are requests processed?
GET requests

# In the controller/action, what's the difference between rendering and redirecting?
Rendering renders the page layout within the current view (erb: render_page)
Redirecting completely redirects the user to the page itself (redirect '/new_page')

# In the ERB view template, how do you show dynamic content?
Through the use of ruby variables and methods

# Given what you know about ERB templates, when do you suppose the ERB template is turned into HTML?
Render -> views

# What's the role of instance variables in Sinatra?
Same as ruby

# Solutions are in the first lecture video of lesson 4.
