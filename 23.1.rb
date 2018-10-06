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

class AdminUser < User
  def sayPrivate  # super classのprivate methodをオーバーライドできる
    puts "private from Admin"
  end
end

AdminUser.new.sayPrivate
#User.new.sayPrivate # 23.1.rb:31:in `<main>': private method `sayPrivate' called for #<User:0x0000564820efa538> (NoMethodError)
