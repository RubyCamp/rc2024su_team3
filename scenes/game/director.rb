require_relative 'player/player'
require_relative 'boad/boad'
require_relative 'boad/middle_board'
require_relative 'boad/short_board'


module Scenes
    module Game
        class Director < DirectorBase
            def initialize
                @player_1 = Scenes::Game::Player.new(550, 500, "player1", "image/player1 message window.png") #プレイヤーを作る、枠の座標
                @player_2 = Scenes::Game::Player.new(660, 500, "player2","image/player2 message window.png")
                @player_3 = Scenes::Game::Player.new(550, 550, "player3", "image/player3 message window.png")
                @player_4 = Scenes::Game::Player.new(660, 550, "player4", "image/player4 message window.png")
              
                @boad = Boad.new
                # @boad = Middle_board.new
                # @boad = Short_board.new
                @players = [@player_1, @player_2, @player_3, @player_4]
            end

            # 1フレーム分の更新処理
            def update(opt = {})
                # ゴール判定処理
                transition(:ending) if key_push?(Gosu::KB_G)
            end

            # 1フレーム分の描画処理
            def draw
                @players[0..(Scenes::Manager.instance.number-1)].each do |player|
                    player.draw
                end
                @boad.draw
            end
        end
    end
end