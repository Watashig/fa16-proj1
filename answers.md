### Q0: Why is this error being thrown?

  First, we note that we are making a GET request to the root. If we examine `/config/routes.rb`, then we have a route to `home#index`, meaning we use the `index` method in `/app/controllers/home_controller`.

  We see that the first line of the `index` method uses the `Pokemon` model, but we have not created the model (there is no `pokemon.rb` file in /app/models/). This causes the error to be thrown.

### Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

  We determine this by looking at `/app/views/home/index.html.erb`. We are still using the same method as before. We see that we SELECT a random `Pokemon` FROM the database of the `Pokemon` WHERE the trainer attribute is `nil`, i.e. the Pokemon does not have a trainer

### Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.



### Question 3: What would you name your own Pokemon?



### Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?



### Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.



### Give us feedback on the project and decal below!



### Extra credit: Link your Heroku deployed app
