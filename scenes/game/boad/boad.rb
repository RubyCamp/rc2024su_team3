require 'gosu'
class Boad
    attr_accessor :map
    def initialize
        @font = Gosu::Font.new(30)
        @map_count = 0
    end
    def draw
        Gosu.draw_rect(0,0,800,600,Gosu::Color::WHITE,-1)
        draw_grid
    end
    def draw_grid
        #cols = 20
        #rows = 20
        map = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
        cell_size = 40

        map.each_with_index do |row,y_idx|
            row.each_with_index do |col,x_idx|
                x = (x_idx+1)* cell_size
                y = (y_idx+1)* cell_size
                if col == 0
                    Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::RED)
                elsif col == 2
                    Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::BLUE) 
                    @font.draw_text("S", x+12, y+5, 1)
                elsif col == 3
                    Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::YELLOW) 
                    @font.draw_text("G", x+12, y+5, 1,1,1,Gosu::Color::BLACK)
                end
            end
        end
    end
end