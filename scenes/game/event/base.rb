#require_relative '../../director_base'

module Scenes
    module Game
        module Event
            class Base < ::Scenes::DirectorBase

                def initialize
                    num_luckyevnt = 5
                    num_badevnt = 5
                    num_neutralevnt = 5
                end

                def mas_color(color)
                    draw_text
                    color = @colors[:black]
                    if opt.has_key?(:color)
                      if(opt[:color].is_a?(Symbol))
                        color = @colors[opt[:color]]
                      else
                        color = opt[:color]
                      end
                    end
                end

                def select_event
                    @event_flag = get_event_flag #イベントの種類を取得
                    @lucky_flag = select_event_flag(num_luckyevnt) #運のいいイベントを取得
                    @bad_flag = select_event_flag(num_badevnt) #運の悪いイベントを取得
                    @neutral_flag = select_event_flag(num_neutralevnt) #日常のイベントを取得
                end

                def get_event_flag
                    return rand(1..3) #1：運のいいイベント、2：運の悪いイベント、3：日常のイベント
                end

                def select_event_flag(num)
                    return rand(1..num)
                end
            end
        end
    end
end