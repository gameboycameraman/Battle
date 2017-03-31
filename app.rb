require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect('/play')
  end

  get '/play' do
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    @player1_hp = $game.player1.hp
    @player2_hp = $game.player2.hp
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.player2)
    erb(:attack)
  end

end
