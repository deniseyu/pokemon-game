require 'sinatra/base'
require_relative 'game'
require_relative 'pokemon_trainer'
require_relative 'pokemon'

class PokemonGame < Sinatra::Base
  set :views, Proc.new{File.join(root, '..', "views")}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  enable :sessions
  use Rack::MethodOverride

  GAME = Game.new

  get '/' do
    @trainer = session[:trainer]
    erb :index
  end

  post '/logout' do
    session.clear 
    redirect '/'
  end

  post '/' do
    session[:trainer] = Trainer.new
    @trainer = session[:trainer]
    @trainer.name = params[:name]
    erb :index
  end

  get '/game' do
    @trainer = session[:trainer]
    erb :game
  end


  get '/catch' do
    @random_p = GAME.random
    session[:wild_pokemon] = @random_p
    erb :catch
  end

  post '/catch' do
    trainer = session[:trainer]
    trainer.catch(session[:wild_pokemon])
    redirect '/game'
  end

  delete '/pokemon/:index' do
    trainer = session[:trainer]
    pokemon = params[:index].to_i
    trainer.release(trainer.pokedex[pokemon])
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0


end