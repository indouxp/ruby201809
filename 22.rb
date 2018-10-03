# coding:utf-8
# 22 クラスを継承してみよう
#
class User

  attr_accessor :name
  @@count = 0       # クラス変数 インスタンスの作成数
  VERSION = 1.0     # 定数は、先頭を大文字

  def initialize(name)
    @@count += 1
    @name = name  # インスタンス変数
  end

  def self.info # クラスメソッド
    puts "#{VERSION}: User Class. #{@@count} instances."
  end

  def sayHi
    puts "hi! I'm #{@name}."
  end

end

class AdminUser < User
  def sayHi # メソッドのオーバーライド
    puts "hi! from admin!"
  end
  def sayHello
    puts "Hello from #{@name}"
  end
end

tom = AdminUser.new("tom")
tom.sayHi
tom.sayHello
