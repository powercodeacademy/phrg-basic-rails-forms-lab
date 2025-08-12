# Rails Forms Lab

## Overview

In this lab, you'll practice building forms in Rails by creating a basketball
team sign-up sheet. Your application will have a basic HTML form using Rails
form helpers, and will display the data from the form after it has been submitted by the user.

## Instructions

1. Run `bundle install`
2. Run `bin/rails server`
3. **Set up your routes** in `config/routes.rb`:

   - Create a route that responds to a GET request at `/newteam` that goes to `teams#new`
   - Create a route that responds to a POST request at `/team` that goes to `teams#create`
4. **Create controller actions** in `app/controllers/teams_controller.rb`:

   - Add a `new` action to display the form
   - Add a `create` action to process the form submission and pass data to the view
5. **Build the form** in `app/views/teams/new.html.erb`:

   - Use Rails `form_with` helper to create your form
   - The form should submit to `/team` using POST method
   - Add fields for: Team name ('name'), Coach ('coach'), Point Guard ('pg'), Shooting Guard ('sg'), Power Forward ('pf'), Small Forward ('sf'), Center ('c')
   - Include a submit button with `id="Submit"`
6. **Display the results** in `app/views/teams/create.html.erb`:

   - Show all the submitted team information
   - Display each field with labels like "Team Name: [name]", "Coach: [coach]", etc.

## Testing

Run `bundle exec rspec` to test your implementation. Make sure all tests pass!

The tests will check that:

- Your routes are set up correctly
- Your form has all the required fields
- Your form submits to the correct endpoint
- Your results page displays all the submitted data correctly

## Resources

- [Rails Forms Guide](https://guides.rubyonrails.org/form_helpers.html)
- [Rails Routing Guide](https://guides.rubyonrails.org/routing.html)
