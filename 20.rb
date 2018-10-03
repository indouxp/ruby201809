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
    # メソッド内で使えるself 
    # そのメソッドを受け取っているインスタンス自身
    puts "hi! I'm #{@name}."
    puts "hi! I'm #{self.name}."
    puts "hi! I'm #{name}."       # selfは曖昧でない限り省略できる
  end

end

indou = User.new("indou")
indou.sayHi # sayHiというメソッドを受け取っているインスタンス自身はindou。これをレシーバーという

