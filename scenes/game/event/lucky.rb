#require_relative '../../director_base'
#require_relative 'base'

module Scenes
    module Game
        module Event

            class Lucky < Base

                def event_color
                    event_color = 0xff_ffff00 #黄色
                end

                def event_check
                    if @lucky_flag == 1 
                        #老人を助けた
                        money = money + 20000

                    elsif @lucky_flag == 2 
                        #宝くじに当たった
                        money = money + 1000000

                    elsif @lucky_flag == 3 
                        #道でお金を拾った
                        money = money + 10000

                    elsif @lucky_flag == 4
                        #遺産相続した
                        money = money + 2000000

                    elsif @lucky_flag == 5 
                        #節約の成功
                        money = money + 100000
                    end
                end
            end
        end
    end
end
