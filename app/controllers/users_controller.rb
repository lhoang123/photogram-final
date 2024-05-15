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
    
    @the_id = @the_user.id

    @matching_photos = Photo.where({ :owner_id => @the_id })

    render({ :template => "users/show" })
  end
end
