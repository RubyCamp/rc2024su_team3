require 'gosu'
require_relative '../event/base'
require_relative '../../director_base'

module Scenes
    module Game   
        class Boad < ::Scenes::Game::Event::Base
            
            def initialize
                super
                # マスに表示するfontサイズ
                @font = Gosu::Font.new(30)

                # マスとイベントの生成
                @map = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
                       [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
                       [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
                       [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
                       [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
                       [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
                       [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
                       [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
                       [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
                @map_colors = []
                map_column_size = @map.first.size
                @map.size.times do
                    row_colors = []
                    map_column_size.times do
                        row_colors << data
                    end
                    @map_colors << row_colors
                end
            end

            def update
            end

            def draw
                Gosu.draw_rect(0,0,800,600,Gosu::Color::WHITE,-1)
                draw_grid
            end
            def draw_grid
                #cols = 20
                #rows = 20
                
                cell_size = 40
                @map.each_with_index do |row,y_idx|
                    row.each_with_index do |col,x_idx|
                        if col == 0
                            x = (x_idx+1)* cell_size
                            y = (y_idx+1)* cell_size
                            if col == 0
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                            elsif col == 2
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::BLUE) 
                                @font.draw_text("S", x+12, y+5, 1)
                            elsif col == 3
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::RED) 
                                @font.draw_text("G", x+12, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 4
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("5", x+12, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 5
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("10", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 6
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("15", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 7
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("20", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 8
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("25", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 9
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("30", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 10
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("35", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 11
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("40", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 12
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("45", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 13
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("50", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            elsif col == 14
                                Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW)
                                @font.draw_text("55", x+5, y+5, 1,1,1,Gosu::Color::BLACK)
                            end
                        end
                    end
                end
            end
        end
    end
end