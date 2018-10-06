# coding:utf-8
# module
#   メソッド、定数をまとめる
#   インスタンスを作成できない。継承できない。
#
#   ミックスイン 

module Debug
  def info    # selfをつけずインスタンスメソッドとして定義すると、それを他のクラスのインスタンスメソッドとして溜め込む
    puts "#{self.class} debug info"
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info
