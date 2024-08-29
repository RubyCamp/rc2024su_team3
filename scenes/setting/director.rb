module Scenes
    module Setting
      # タイトルシーンの担当ディレクタークラス
      class Director < DirectorBase
        # コンストラクタ
        def initialize
            super

            # 設定の初期値
            @number = 2
            @modes = ["子供だけ", "大人だけ", "一生"]
            @mode = @modes[0] 
            @choice = "number"

            @bg_img = Gosu::Image.new("image/setting_picture1.jpg", tileable: true)
            #   @bgm = load_bgm("bgm1.mp3", 0.3)

        end
  
        # 1フレーム分の更新処理
        def update(opt = {})

            #  設定メニューの選択
            if key_push?(Gosu::KB_UP)
                if @choice == "number"
                    @choice = "exit"
                elsif @choice == "exit"
                    @choice = "mode"
                elsif @choice == "mode"
                    @choice = "number"
                end
            elsif key_push?(Gosu::KB_DOWN)
                if @choice == "number"
                    @choice = "mode"
                elsif @choice == "mode"
                    @choice = "exit"
                elsif @choice == "exit"
                    @choice = "number"
                end
            end

            # exitの決定
            # テンキーがあるPCはテンキーのエンターキーになる
            transition(:title) if @choice == "exit" && key_push?(Gosu::KB_RETURN)

            # 設定切り替えの選択
            # プレイ人数の選択
            if @choice == "number"
                if key_push?(Gosu::KB_1)
                    @number = 1
                    Scenes::Manager.instance.number = 1
                elsif key_push?(Gosu::KB_2)
                    @number = 2
                    Scenes::Manager.instance.number = 2
                elsif key_push?(Gosu::KB_3)
                    @number = 3
                    Scenes::Manager.instance.number = 3
                elsif key_push?(Gosu::KB_4)
                    @number = 4
                    Scenes::Manager.instance.number = 4
                end
            end

            # モード設定の選択
            if @choice == "mode"
                if key_push?(Gosu::KB_1)
                    @mode = @modes[0]
                elsif key_push?(Gosu::KB_2)
                    @mode = @modes[1]
                elsif key_push?(Gosu::KB_3)
                    @mode = @modes[2]
                end
            end
        end
  
        # 1フレーム分の描画処理
        def draw
            draw_text("Setting", :center, 75, font: :title, color: :red)

            # 継承元のメソッド内のインスタンス変数を呼び出すために記載
            time_count

            # 文字の点滅処理を行う（1秒間隔で点滅）
            if @choice == "number" && @time_sec %2 != 0
                draw_text("Player人数:  #{@number}人", :center, 200, font: :base1, color: :yellow)
                draw_text("モード設定:  #{@mode}モード", :center, 350, font: :base1, color: :white)
                draw_text("Exit", :center, 525, font: :base1, color: :white)
            elsif @choice == "mode" && @time_sec %2 != 0
                draw_text("Player人数:  #{@number}人", :center, 200, font: :base1, color: :white)
                draw_text("モード設定:  #{@mode}モード", :center, 350, font: :base1, color: :yellow)
                draw_text("Exit", :center, 525, font: :base1, color: :white)
            elsif @choice == "exit" && @time_sec %2 != 0
                draw_text("Player人数:  #{@number}人", :center, 200, font: :base1, color: :white)
                draw_text("モード設定:  #{@mode}モード", :center, 350, font: :base1, color: :white)
                draw_text("Exit", :center, 525, font: :base1, color: :yellow)
            elsif @choice == "mode" && @time_sec %2 == 0 || @choice == "number" && @time_sec %2 == 0 ||  @choice == "exit" && @time_sec %2 == 0
                draw_text("Player人数:  #{@number}人", :center, 200, font: :base1, color: :white)
                draw_text("モード設定:  #{@mode}モード", :center, 350, font: :base1, color: :white)
                draw_text("Exit", :center, 525, font: :base1, color: :white)
            end
            @bg_img.draw(0, 0, 0)
            draw_text("[ push_key ] \n 1: 1人     2: 2人\n 3: 3人     4: 4人", :center, 250, font: :base0, color: :white)
            draw_text("[ push_key ] \n 1: 子供だけモード \n 2: 大人だけモード \n 3: 一生モード", :center, 400, font: :base0, color: :white)
        end
      end
    end
  end