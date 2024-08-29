require_relative 'player/player'
require_relative 'boad/boad'
require_relative 'boad/middle_board'
require_relative 'boad/short_board'


module Scenes
    module Game
        class Director < DirectorBase
            CARD_NUMBER_MAX = 5
            CARD_X_MIM = 41
            CARD_X_MAX = 520
            CARD_Y = 470
            def initialize
                
               
            
            
                @player_1 = Scenes::Game::Player.new(550, 500, "player1", "image/player1 message window.png") #プレイヤーを作る、枠の座標
                @player_2 = Scenes::Game::Player.new(660, 500, "player2","image/player2 message window.png")
                @player_3 = Scenes::Game::Player.new(550, 550, "player3", "image/player3 message window.png")
                @player_4 = Scenes::Game::Player.new(660, 550, "player4", "image/player4 message window.png")
              
                @boad = Boad.new
                # @boad = Middle_board.new
                # @boad = Short_board.new
                @players = [@player_1, @player_2, @player_3, @player_4]
                @cards = (1..CARD_NUMBER_MAX).map{|n|Scenes::Game::Card.new(n, 0, CARD_Y, 1)}
                cards_positioning
            end

            # 1フレーム分の更新処理
            def update(opt = {})
                # マウスの現在座標を変数化しておく
                mx = opt.has_key?(:mx) ? opt[:mx] : 0
                my = opt.has_key?(:my) ? opt[:my] : 0
                if Gosu.button_down?(Gosu::MsLeft)
                    @cards.each do |card|
                        if card.clicked?(mx, my)
                            card.reversed = false
                        end
                    end
                end

                if Gosu.button_down?(Gosu::MsRight)
                    cards_shuffle
                end
                # ゴール判定処理
                transition(:ending) if key_push?(Gosu::KB_G)
            end
             
            # 1フレーム分の描画処理
            def draw
                

                @players[0..(Scenes::Manager.instance.number-1)].each do |player|
                    player.draw
                end
                @boad.draw
                @cards.each do |c|
                    c.draw
                end
            end

            #カードの位置を決める
            def cards_positioning
                x = (CARD_X_MAX - Card::WIDTH - CARD_X_MIM) / CARD_NUMBER_MAX
                @cards.each_with_index do |card, idx|
                    card.x = CARD_X_MIM + x * idx
                end
            end

            #カードをシャッフルする
            def cards_shuffle
                @cards = @cards.shuffle
                cards_positioning
            end
        end
    end
end