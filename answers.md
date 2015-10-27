# Q0: Why is this error being thrown?
	We don't have pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	The sample method in the home_controller.rb, the common factor is that they are all trainerless.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It sends the pokemon's id to the function as a parameter

# Question 3: What would you name your own Pokemon?
	Kanye

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	We passed in back, which works because you have already been at that page, so you know it's there.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	errors.full_messages.to_sentence is an error log and the command takes this log and prints it with the to_sentence command

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
