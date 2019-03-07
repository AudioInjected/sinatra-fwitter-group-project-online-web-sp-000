require './config/environment'

class UsersController < ApplicationController
  
  get '/users/:slug' do 
    binding.pry
    @user = User.find_by_slug(params[:slug])
    erb :'/index'
  end 
end
