# coding:utf-8
# 19 クラスを作ってみよう
#
class User # クラス名は大文字で始める

  def initialize(name)
    @name = name  # インスタンス変数
  end

  def sayHi
    puts "hi! I'm #{@name}."
  end

end

indou = User.new("indou")
indou.sayHi

toshiko = User.new("toshiko")
toshiko.sayHi
