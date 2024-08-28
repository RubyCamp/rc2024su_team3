#require_relative '../../director_base'
#require_relative 'base'

module Scenes
    module Game
        module Event

            class Bad < Base

                def event_color
                    event_color = 0xff_ff0000 #赤色
                end

                def event_check
                    if @bad_flag == 1 
                        #財布を落とした
                        money = money - 20000

                    elsif @bad_flag == 2 
                        #事故にあう
                        money = money - 100000

                    elsif @bad_flag == 3 
                        #家に泥棒が入る
                        money = money - 50000

                    elsif @bad_flag == 4
                        #ハワイに旅行にいく
                        money = money - 200000

                    elsif @bad_flag == 5 
                        #詐欺にあった
                        money = money - 100000
                    end
                end
            end
        end
    end
end
