# Q0: Why is this error being thrown?
We don't have a controller for pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
One out of four pokemon appear randomly on the home page. The pokemon are either gen 1 starters or Pikachu.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Makes a button that uses a patch route to associate the current trainer with the id of the pokemon.
# Question 3: What would you name your own Pokemon?
Railsmon
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in "redirect_to trainer_path(pokemon.trainer)". It's okay that it isn't a path because trainer_path is interpreted as a path.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It displays the error line, which is possible because application.html.erb renders any created messages, which in this case is our error.

# Give us feedback on the project and decal below!
Fun project! Thanks for all the support.

# Extra credit: Link your Heroku deployed app
