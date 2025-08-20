# Rails Forms Lab

## Overview

In this lab, you'll practice building forms in Rails by creating a basketball
team sign-up sheet. Your application will use Rails form helpers with proper
RESTful routing conventions, and will display the data from the form after it has been submitted by the user.

## Instructions

1. Run `bundle install`
2. Run `bin/rails server`
3. **Set up your routes** in `config/routes.rb`:

   - Use the `resources` method to create RESTful routes for teams
   - This will automatically create routes for `new`, `create`, `show`, etc.

4. **Create controller actions** in `app/controllers/teams_controller.rb`:

   - Add a `new` action to display the form (should set up an `@team` instance variable)
   - Add a `create` action to process the form submission and redirect to the show action
   - Add a `show` action to display the team information

5. **Build the form** in `app/views/teams/new.html.erb`:

   - Use Rails `form_with` helper with the `@team` model object
   - The form will automatically submit to the correct RESTful endpoint
   - Add fields for: Team name ('name'), Coach ('coach'), Point Guard ('pg'), Shooting Guard ('sg'), Power Forward ('pf'), Small Forward ('sf'), Center ('c')
   - Include a submit button (any text or styling is fine)
   - The form fields should use nested naming (e.g., `team[name]`, `team[coach]`, etc.)

6. **Display the results** in `app/views/teams/show.html.erb`:

   - Show all the submitted team information
   - Display each field with labels like "Team Name: [name]", "Coach: [coach]", etc.
   - Use the `@team` instance variable passed from your controller

## Testing

Run `bundle exec rspec` to test your implementation. Make sure all tests pass!

The tests will check that:

- Your routes are set up correctly using RESTful conventions
- Your form has all the required fields with proper nested naming
- Your form submits to the correct RESTful endpoint
- Your show page displays all the submitted data correctly

## Rails Conventions You'll Practice

- **RESTful routing**: Using `resources :teams` for standard CRUD operations
- **Form helpers**: Using `form_with` with model objects for automatic routing
- **Nested parameters**: Form fields using `team[attribute_name]` format
- **Controller actions**: Following the standard `new`, `create`, `show` pattern
- **Redirects**: Redirecting after successful form submission to the show page

## Resources

- [Rails Forms Guide](https://guides.rubyonrails.org/form_helpers.html)
- [Rails Routing Guide](https://guides.rubyonrails.org/routing.html)
- [Rails Controller Guide](https://guides.rubyonrails.org/action_controller_overview.html)
