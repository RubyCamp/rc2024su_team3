module Scenes
    module Game
        module Event
            class Job

                def initialize
                    i = 0
                end

                def change_job
                    @job = ["赤ちゃん", "園児", "小学生", "中学生", "高校生", "サラリーマン"]

                    if key_push?(Gosu::KB_G)
                        @job = job[i+1]
                    end
                end
                
            end
        end
    end
end


