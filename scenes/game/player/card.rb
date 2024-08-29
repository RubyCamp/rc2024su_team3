module Scenes
    module Game
        class Card
            WIDTH = 96               # カード横幅（px）
            HEIGHT = 128             # カード高さ（px）
            SCALE = 1
            attr_accessor :num, :x, :y, :z, :reversed
            @@card_foreground_img = Gosu::Image.new("image/card_foreground.png", tileable: true)    # カードの表面画像（数字がある側）
            @@card_background_img = Gosu::Image.new("image/card_background.png", tileable: true)    # カードの裏面画像     
            @@number_font = Gosu::Font.new(80, name: DirectorBase::FONT_FILENAME)                    # カードの数字描画用フォント
            def initialize(_num, _x, _y, _z = 1)
                @reversed = true 
                @num_w = @@number_font.text_width(_num.to_s)
                @num_h = @@number_font.height
                self.num = _num
                self.x = _x
                self.y = _y
                self.z = _z
            end
            
            def clicked?(mx, my)
                x_included = self.x <= mx && mx <= self.x + WIDTH
                y_included = self.y <= my && my <= self.y + HEIGHT
                x_included && y_included
            end
            def draw
                if @reversed
                  draw_background
                else
                  draw_foreground
                end
            end

             # カード（自オブジェクト）がクリックされたか否かを判定する
            def clicked?(mx, my)
                x_included = self.x <= mx && mx <= self.x + WIDTH
                y_included = self.y <= my && my <= self.y + HEIGHT
                x_included && y_included
            end
      
            private
      
              # カードの表側の描画
            def draw_foreground
                @@card_foreground_img.draw(self.x, self.y, self.z)
                draw_number
            end
      
              # カードの裏側の描画
            def draw_background
                @@card_background_img.draw(self.x, self.y, self.z)
            end

               # カードの番号の描画
            def draw_number
                num_x = self.x + (@@card_foreground_img.width / 2) - (@num_w / 2)
                num_y = self.y + (@@card_foreground_img.height / 2) - (@num_h / 2)
                @@number_font.draw_text(num.to_s, num_x, num_y, self.z, SCALE, SCALE, Gosu::Color::BLACK)
            end
        end    
    end
end