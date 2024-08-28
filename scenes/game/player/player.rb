module Scenes
    module Game
        class Player  #< Player_bas
            MESSAGE_WINDOW_WIDTH = 200
            MESSAGE_WINDOW_HEIGHT = 50

            def initialize(message_x, message_y, name, image_path)
                @font = Gosu::Font.new(24)
                @message_x = message_x
                @message_y = message_y
                @money = 0
                @job = "baby"
                @progress = 0
                @message_window_player1 = Gosu::Image.new(image_path, tileable: true)
                @name = name
                
            end
            def draw
                @message_window_player1.draw(@message_x, @message_y, 0)
                @font.draw_text(@name, @message_x+10, @message_y, 1)
                @font.draw_text("$", @message_x+10, @message_y+25, 1)
                @font.draw_text(@money, @message_x+20, @message_y+25, 1)
                @font.draw_text("職", @message_x+20, @message_y+25, 1)
                @font.draw_text(@job, @message_x+40, @message_y+25, 1)
                @font.draw_text(@progress, @message_x+90, @message_y+25, 1)
            end
        end
    end
end