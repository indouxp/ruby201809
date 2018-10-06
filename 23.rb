# coding:utf-8
# 23 メソッドのアクセス権を理解しよう
#   public  : デフォルトでこれ
#   protected
#   private : initializeと、classの外に書いたものは自動的にprivate。また、レシーバーを指定できない。
#
class User

  attr_accessor :name

  def sayHi
    puts "hi! I'm #{@name}."
    sayPrivate
  end

  private # ここ以降に書いたものはプライベート

    def sayPrivate  # レシーバーを指定できない
      puts "private"
    end

end

#User.new.sayPrivate # 23.rb:23:in `<main>': private method `sayPrivate' called for #<User:0x000055fd15c92d00> (NoMethodError)

#User.new.sayHi

class AdminUser < User
  def sayHello
    puts "hello!"
    sayPrivate  # 親クラスのprivateメソッドを呼び出せる
  end
end

AdminUser.new.sayHello
