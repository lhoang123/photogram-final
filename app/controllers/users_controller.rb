class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "users/index" })
  end 

  def show
    the_username = params.fetch("path_id")

    matching_users = User.where({ :username => the_username})

    @the_user = matching_users.at(0)

    render({ :template => "users/show" })
  end
end
