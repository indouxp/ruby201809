# coding:utf-8
# 20 アクセサを使ってみよう
#
class User # クラス名は大文字で始める

  attr_accessor :name
  # setter: name=(value)
  # getter: name

  def initialize(name)
    @name = name  # インスタンス変数
  end

  def sayHi
    puts "hi! I'm #{@name}."
  end

end

indou = User.new("indou")
indou.name = "Tatsuo Indou"
p indou.name
