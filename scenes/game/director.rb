require_relative 'boad/boad'
module Scenes
    module Game
        class Director < DirectorBase
            def initialize
                @boad = Boad.new
            end

            # 1フレーム分の更新処理
            def update(opt = {})

            end

            # 1フレーム分の描画処理
            def draw
                @boad.draw

            end
        end
    end
end