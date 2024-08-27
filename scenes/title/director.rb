module Scenes
    module Title
      # タイトルシーンの担当ディレクタークラス
      class Director < DirectorBase
        # コンストラクタ
        def initialize
          super
        
        # コメントアウトしてるコードは削除して良い（参考程度に残してます）

        #   @bg_img = Gosu::Image.new("images/bg_title.png", tileable: true)
        #   @bgm = load_bgm("bgm1.mp3", 0.3)
        end
  
        # 1フレーム分の更新処理
        def update(opt = {})
        #   @bgm.play if @bgm && !@bgm.playing?
        #   # スペースキー押下でゲーム本編シーンへ切り替えを行う
        #   if key_push?(Gosu::KB_SPACE)
        #     transition(:game)
        #     @bgm.stop if @bgm && @bgm.playing?
        #   end
        end
  
        # 1フレーム分の描画処理
        def draw
        #   @bg_img.draw(0, 0, 0)
          draw_text("Ruby合宿2024", :center, 190, font: :title, color: :red)
          draw_text("人生ゲーム", :center, 270, font: :title, color: :red)
          draw_text("Push SPACE Key to start", :center, 370, color: :white)
        end
      end
    end
  end