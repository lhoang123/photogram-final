class UsersController < ApplicationController
  matching_users = User.all

  @list_of_users = matching_users.order({ :username=> :desc })

  render({ :template => "users/index" })
end
