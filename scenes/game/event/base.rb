require 'gosu'
require_relative '../../director_base'

module Scenes
    module Game
        module Event
            class Base

                def initialize
                    @num_lucky_event = 5
                    @num_bad_event = 5
                    @num_neutral_event = 5
                end

                def data
                    event_flag = get_event_flag #イベントの種類を取得
                    @lucky_flag = select_event_flag(5) #運のいいイベントを取得
                    @bad_flag = select_event_flag(5) #運の悪いイベントを取得
                    @neutral_flag = select_event_flag(5) #日常のイベントを取得
                    color = event_color(event_flag)
                    return color
                end

                def get_event_flag
                    return rand(1..3) #1：運のいいイベント、2：運の悪いイベント、3：日常のイベント
                end

                def select_event_flag(num)
                    return rand(1..num)
                end

                def event_color(event_flag)
                    if event_flag == 1
                        color = Gosu::Color::YELLOW
                    elsif event_flag == 2
                        color = Gosu::Color::RED
                    elsif event_flag == 3
                        color = Gosu::Color::GRAY
                    else 
                        color = Gosu::Color::WHITE
                    end

                    return color
                end

            end
        end
    end
end