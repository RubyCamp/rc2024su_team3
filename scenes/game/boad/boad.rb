require 'gosu'
class Boad 
    def draw
        Gosu.draw_rect(0,0,800,600,Gosu::Color::WHITE,-1)
        draw_grid
    end
    def draw_grid
        #cols = 20
        #rows = 20
        map = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
               [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
               [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
        cell_size = 40

        map.each_with_index do |row,y_idx|
            row.each_with_index do |col,x_idx|
                if col == 0
                 x = (x_idx+1)* cell_size
                 y = (y_idx+1)* cell_size
                 Gosu.draw_rect(x + 1,y + 1,cell_size - 2 ,cell_size - 2,Gosu::Color::RED)
                end
            end
        end
    end
end