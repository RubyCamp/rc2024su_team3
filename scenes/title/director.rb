module Scenes
    module Title
      # タイトルシーンの担当ディレクタークラス
      class Director < DirectorBase
        # コンストラクタ
        def initialize
          super

            @choice = "game"
        
        # コメントアウトしてるコードは削除して良い（参考程度に残してます）

        #   @bg_img = Gosu::Image.new("images/bg_title.png", tileable: true)
        #   @bgm = load_bgm("bgm1.mp3", 0.3)
        end
  
        # 1フレーム分の更新処理
        def update(opt = {})
        #   @bgm.play if @bgm && !@bgm.playing?
        #   # スペースキー押下でゲーム本編シーンへ切り替えを行う or エンターキー
            if key_push?(Gosu::KB_SPACE) || @choice == "game" && key_push?(Gosu::KB_ENTER)
                transition(:game)
                # @bgm.stop if @bgm && @bgm.playing?
            elsif key_push?(Gosu::KB_S) || @choice == "setting" && key_push?(Gosu::KB_ENTER)
                transition(:setting)
            end

            # メニューの選択
            if key_push?(Gosu::KB_UP)
                @choice == "game" ? @choice = "setting" : @choice = "game"
            elsif key_push?(Gosu::KB_DOWN)
                @choice == "game" ? @choice = "setting" : @choice = "game"
            end
        end
  
        # 1フレーム分の描画処理
        def draw
        #   @bg_img.draw(0, 0, 0)

            # 継承元のメソッド内のインスタンス変数を呼び出すために記載
            time_count

            draw_text("Ruby合宿2024", :center, 100, font: :title, color: :red)
            draw_text("人生ゲーム", :center, 180, font: :title, color: :red)

            # 文字の点滅（選択）
            if @choice == "game" && @time_sec %2 != 0
                draw_text("Game Start", :center, 300, font: :base2, color: :yellow)
                draw_text("Setting", :center, 425, font: :base2, color: :white)
            elsif @choice == "setting" && @time_sec %2 != 0
                draw_text("Game Start", :center, 300, font: :base2, color: :white)
                draw_text("Setting", :center, 425, font: :base2, color: :yellow)
            elsif @choice == "setting" && @time_sec %2 == 0 || @choice == "game" && @time_sec %2 == 0
                draw_text("Game Start", :center, 300, font: :base2, color: :white)
                draw_text("Setting", :center, 425, font: :base2, color: :white)
            end

            draw_text("- Push SPACE Key -", :center, 375, font: :base0, color: :white)
            draw_text("- Push S Key -", :center, 500, font: :base0, color: :white)
        end
      end
    end
  end