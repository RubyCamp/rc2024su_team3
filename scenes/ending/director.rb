require_relative '../game/director'
require_relative '../game/player/player'

module Scenes
    module Ending
        # エンディングの担当ディレクタークラス
        class Director < DirectorBase
        # コンストラクタ
            def initialize
            super
               @bg_img = Gosu::Image.new("image/ending.jpg", tileable: true)
            end
  
            # 1フレーム分の更新処理
            def update(opt = {})

            end
  
            # 1フレーム分の描画処理
            def draw
                

                draw_text("Congratulation!!", :center, 100, font: :title, color: :yellow)
                draw_text("1位: #{}!!", :center, 250, font: :base2, color: :white)
                draw_text("2位: #{}!", :center, 350, font: :base2, color: :white)
                draw_text("3位: #{}", :center, 450, font: :base2, color: :white)
               @bg_img.draw(0, 0, 0)
            end
        end
    end
end