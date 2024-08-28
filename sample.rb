brew install sdl2
gem i gosu
require "gosu"

class App < Gosu::Window
  class << self
    def show
      new.show
    end
  end

  def initialize
    # https://www.rubydoc.info/gems/gosu/Gosu/Window#initialize-instance_method
    super 800, 600

    # https://www.rubydoc.info/gems/gosu/Gosu/Window#caption-instance_method
    self.caption = "(gosu)"

    # https://www.rubydoc.info/gems/gosu/Gosu%2FFont:initialize
    @font = Gosu::Font.new(20)

    @frame_count = 0
  end

  # https://www.rubydoc.info/gems/gosu/Gosu/Window#update-instance_method
  def update
    @frame_count += 1
  end

  def draw
    # https://www.rubydoc.info/gems/gosu/Gosu/Font#draw_text-instance_method
    @font.draw_text("#{@frame_count} #{Gosu.fps}", 0, 0, 0)

    # https://www.rubydoc.info/gems/gosu/Gosu#draw_rect-class_method
    Gosu.draw_rect(width * 0.25, height * 0.25, width * 0.5, height * 0.5, Gosu::Color::BLUE)

    # https://www.rubydoc.info/gems/gosu/Gosu#draw_line-class_method
    Gosu.draw_line(0, 0, Gosu::Color::WHITE, width, height, Gosu::Color::RED)
  end

  # https://www.rubydoc.info/gems/gosu/Gosu/Window#button_down-instance_method
  def button_down(id)
    super

    if id == Gosu::KB_ESCAPE || id == Gosu::KB_Q
      close
    end
  end

  show
end