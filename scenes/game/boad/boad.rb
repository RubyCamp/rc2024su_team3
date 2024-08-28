require 'gosu'
require_relative '../event/base'
require_relative '../../director_base'

module Scenes
    module Game   
        class Boad < ::Scenes::Game::Event::Base
            
            def initialize
                super
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

                            Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2, @map_colors[y_idx][x_idx])
                        end
                    end
                end
            end
        end
    end
end