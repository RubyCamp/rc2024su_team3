require 'gosu'

require_relative 'scenes/manger'
require_relative 'scenes/game/event/base'
require_relative 'scenes/game/boad/boad'
require_relative 'scenes/director_base'
require_relative 'scenes/title/director'
require_relative 'scenes/setting/director'
require_relative 'scenes/game/director'
require_relative 'scenes/ending/director'

class GameWindow < Gosu::Window
  
  def initialize
    super(800, 600, false) # ウィンドウの幅、高さ、フルスクリーンモードの指定
    self.caption = "LIFE GAME" # ウィンドウのタイトルを設定

    # シーンの生成
    @scene_manager = Scenes::Manager.instance
    @scene_manager.add(:title, Scenes::Title::Director.new)
    @scene_manager.add(:setting, Scenes::Setting::Director.new)
    @scene_manager.add(:game, Scenes::Game::Director.new)
    @scene_manager.add(:ending, Scenes::Ending::Director.new)
    @scene_manager.set(:title)
    # 作業用コード
    # @scene_manager.set(:ending)
  end

  # 1フレーム分の更新処理
  def update
    # キーが押されたときの処理
    # closeの場合window終了後も処理が継続する場合があるため、exitに変更しました。exitはwindowと処理の両方を終了します。
    exit if Gosu.button_down?(Gosu::KB_ESCAPE)
    opt = {
      mx: self.mouse_x,
      my: self.mouse_y
    }
    @scene_manager.update(opt)
  end

  # 1フレーム分の描画処理
  def draw
    # 描画処理を書く場所
    @scene_manager.draw
  end
end

# ウィンドウを作成して実行
window = GameWindow.new
window.show
