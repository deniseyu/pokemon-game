require 'sinatra/base'
require_relative 'game'
require_relative 'pokemon_trainer'
require_relative 'pokemon'

class PokemonGame < Sinatra::Base
  set :views, Proc.new{File.join(root, '..', "views")}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  enable :sessions

  GAME = Game.new

  get '/' do
    # @trainer = Trainer.new
    @trainer = session[:trainer]
    erb :index
  end

  post '/' do
    session[:trainer] = Trainer.new
    @trainer = session[:trainer]
    # @trainer_session = @trainer
    @trainer.name = params[:name]
    GAME.add(@trainer)
    erb :index
  end

  get '/game' do
    @trainer = session[:trainer]
    erb :game
  end

  post '/game' do
    @trainer = GAME.trainer
    @name = params[:name]
    @pokedex = session[:pokedex]
    @trainer.pokedex = session[:pokedex]
    erb :game
  end

  get '/catch' do
    @trainer = session[:trainer]
    session[:random] = []
    @random_p = GAME.random
    @session = session[:random]
    @session << @random_p
    erb :catch
  end

  post '/catch' do
    @session = session[:random]
    @trainer = session[:trainer]
    @random_p = @session[0]
    @trainer.catch(@random_p)
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0


end