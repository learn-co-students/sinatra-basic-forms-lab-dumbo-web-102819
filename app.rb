require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        # has a link with the text "List A Puppy"
        erb :index
        # has a link to list a puppy that links to /new
    end 

    get '/new' do 
        # renders a form that can POST a name, breed, and age
        erb :create_puppy
    end 

    post '/puppy' do 
        @name = params[:name]
        @breed = params[:breed]
        @age = params[:age]
        #recieves a req from /new at /puppy
        #displays the puppy info dynamically
        erb :display_puppy
    end 
end
