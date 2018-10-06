# coding:utf-8
# module
#   メソッド、定数をまとめる
#   インスタンスを作成できない。継承できない。
#
#   名前空間として使う

module Movie  # モジュール名の１文字目は大文字

  VERSION = 1.1

  def self.encode # クラスメソッドのようにコード
    puts "encoding..."
  end

  def self.export
    puts "exporting..."
  end

end

Movie.encode
Movie.export
puts Movie::VERSION
