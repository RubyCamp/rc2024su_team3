require 'gosu'
class Boad 
    def initialize
        @font = Gosu::Font.new(30)
    end
    def draw
        Gosu.draw_rect(0,0,800,600,Gosu::Color::BLACK,-1)
        draw_grid
    end
    def draw_grid
        #cols = 20
        #rows = 20
        map = [[0,0,0,6,0,0,0,0,5,0,0,0,0,4,0,0,0,2],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,0,0,8,0,0,0,0,9,0,0,0,0,10,0,0,0,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [3,0,0,0,0,14,0,0,0,0,13,0,0,0,0,12,0,0]]
        cell_size = 40

        map.each_with_index do |row,y_idx|
            row.each_with_index do |col,x_idx|
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