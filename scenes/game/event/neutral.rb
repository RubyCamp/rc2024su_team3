module Scenes
    module Game
        module Event

            class Neutoral < Base

                def event_color
                    @event_color = 0xff_ffffff #白
                end

                def event_check
                    if @neutoral_flag == 1 
                        #映画鑑賞に行った
                        money = money - 2000

                    elsif @neutoral_flag == 2 
                        #臨時のアルバイトに行った
                        money = money + 10000

                    elsif @neutoral_flag == 3 
                        #公園で散歩した
                        money = money - 0

                    elsif @neutoral_flag == 4
                        #家の掃除をした
                        money = money - 0

                    elsif @neutoral_flag == 5 
                        #友人とランチにいった
                        money = money - 5000
                    end
                end
            end
        end
    end
end
