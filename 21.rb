# coding:utf-8
# 21 クラスメソッド、クラス変数を使う
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

end

User.info

indou = User.new("indou")
tom = User.new("tom")
steve = User.new("steve")

User.info
p User::VERSION
