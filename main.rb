require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(800, 600, false) # ウィンドウの幅、高さ、フルスクリーンモードの指定
    self.caption = "LIFE GAME" # ウィンドウのタイトルを設定
  end

  def update
    # キーが押されたときの処理
    close if Gosu.button_down?(Gosu::KB_ESCAPE)
  end

  def draw
    # 描画処理を書く場所
  end
end

# ウィンドウを作成して実行
window = GameWindow.new
window.show
