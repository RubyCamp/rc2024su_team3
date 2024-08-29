require 'singleton'

module Scenes
    # シーン（場面）制御用クラス
    class Manager
        include Singleton

        attr_accessor :number

        def initialize
            @scenes = {}
            @current = nil
            @number = 2
        end

        def add(label, director)
            raise "ディレクターオブジェクト（DirectorBaseを継承したクラスのインスタンス）のみ追加可能です" unless director.is_a?(DirectorBase)
            @scenes[label.to_sym] = director
        end

        # カレントシーンの切り替え
        def set(label)
            @current = label.to_sym
        end

        # 1フレームの場面処理の呼び出し
        def update(opt = {})
            # p ['Scenes::Manager#update', @current]
            validate_current
            @scenes[@current].update(opt)
        end

        # 1フレームの場面描画処理の呼び出し
        def draw
            validate_current
            @scenes[@current].draw
        end

        def setting(mode)
            
        end

        private

        # カレントシーンのラベルとそれに対応するディレクターオブジェクトが実在するかどうかの判定
        def validate_current
            raise "setメソッドを実行してカレントシーンを設定してください" unless @current
            raise "'#{@current}'というラベルを持つシーンは登録されていません" unless @scenes.has_key?(@current)
        end
    end
end